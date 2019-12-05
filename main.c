/*asm volatile("svc 0");
 * It is just simple and pure template project
 * It does absolutely nothing and indicates that toolchain
 * is installed correctly.
 */

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_cortex.h"
#include "stm32f0xx_ll_utils.h"
#include "ind7.h"
#include "stm32f0xx_ll_tim.h"
#include "stm32f0xx_ll_pwr.h"
#include "stm32f0xx_ll_rtc.h"
#include "hex2num.h"

#define BUTT_MODE_SWITCH_START 0
#define BUTT_MODE_SWITCH_TRIGG 300
#define BUTT_MODE_SWITCH_COMPLETE 301

unsigned int numi = 1234;
int8_t shc = 0;

int modeSwitchButtonTime = BUTT_MODE_SWITCH_COMPLETE;


static const unsigned int pow10[] = {1, 10, 100, 1000};


unsigned int worktime = 15, breaktime = 10;

unsigned int stime = 0;




void gpio_config() {
    gpio_ind7_config();
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);

    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_1, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);

}

static void rcc_config() {
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

static void systick_config() {
	LL_InitTick(48000000, 1000);

	LL_SYSTICK_EnableIT();

	NVIC_SetPriority(SysTick_IRQn, 0);
}

void SysTick_Handler() {
    static int mode = 0;
    if(LL_RTC_IsActiveFlag_RS(RTC)) {
        if(!mode)
            numi = hex2num(__LL_RTC_GET_HOUR(LL_RTC_TIME_Get(RTC))) * 100 + hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC)));
        else {
            unsigned int ctime = hex2num(__LL_RTC_GET_SECOND(LL_RTC_TIME_Get(RTC))) + hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC))) * 60;
            unsigned int time = stime - ctime;
            numi = (time / 60 ) * 100 + (time % 60);
        }

    }

    switch (modeSwitchButtonTime) {
        default:
            modeSwitchButtonTime++;
            break;
        case BUTT_MODE_SWITCH_TRIGG:
            modeSwitchButtonTime++;
            mode ^= 1;
            if(mode) {
                stime = hex2num(__LL_RTC_GET_SECOND(LL_RTC_TIME_Get(RTC))) + hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC))) * 60 + worktime;
                //Set up alarm
                LL_RTC_DisableWriteProtection(RTC);
                unsigned int t = hex2num(__LL_RTC_GET_SECOND(LL_RTC_TIME_Get(RTC))) + hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC))) * 60 + hex2num(__LL_RTC_GET_HOUR(LL_RTC_TIME_Get(RTC))) * 3600 + worktime;
                LL_RTC_ALMA_ConfigTime(RTC, LL_RTC_ALMA_TIME_FORMAT_AM, num2hex(t / 3600), num2hex((t % 3600) / 60), num2hex(t % 60));
                LL_RTC_ALMA_Enable(RTC);
                LL_RTC_EnableWriteProtection(RTC);
            } else
                //TODO podoomat mb mozhno loochshe
                LL_RTC_ALMA_Disable(RTC);
            LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
            break;
        case BUTT_MODE_SWITCH_COMPLETE:
            break;
    }

	if((++shc) == 4)
		shc = 0;
	set_indicator((numi / pow10[shc]) % 10, shc, shc == 2);
}



static void rtc_config(void)
{
    LL_RCC_LSI_Enable();
    while (LL_RCC_LSI_IsReady() != 1);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_PWR);
    LL_PWR_EnableBkUpAccess();

    LL_RCC_SetRTCClockSource(LL_RCC_RTC_CLKSOURCE_LSI);
    LL_RCC_EnableRTC();
    /*
     * Set up time and date
     */
    LL_RTC_DisableWriteProtection(RTC);
    LL_RTC_EnableInitMode(RTC);
    while (!LL_RTC_IsActiveFlag_INIT(RTC));

    LL_RTC_SetAsynchPrescaler(RTC, 0x7F);
    LL_RTC_SetSynchPrescaler(RTC, 0x0137);

    LL_RTC_SetHourFormat(RTC, LL_RTC_HOURFORMAT_24HOUR);
    LL_RTC_DATE_Config(RTC, LL_RTC_WEEKDAY_FRIDAY, 1,
                       LL_RTC_MONTH_MARCH, 2019);
    LL_RTC_TIME_Config(RTC, LL_RTC_TIME_FORMAT_AM_OR_24, 0x19, 0x58, 00);

    LL_RTC_DisableInitMode(RTC);
    LL_RTC_EnableWriteProtection(RTC);

    LL_RTC_EnableShadowRegBypass(RTC);

    //Set up alarm

    LL_RTC_DisableWriteProtection(RTC);
    LL_RTC_ALMA_Disable(RTC);
    while(!LL_RTC_IsActiveFlag_ALRAW(RTC));
    LL_RTC_ALMA_SetMask(RTC, LL_RTC_ALMA_MASK_DATEWEEKDAY);
    LL_RTC_EnableIT_ALRA(RTC);
    LL_RTC_EnableWriteProtection(RTC);

    NVIC_EnableIRQ(RTC_IRQn);
    NVIC_SetPriority(RTC_IRQn, 2);
    LL_RTC_ALMA_ConfigTime(RTC, LL_RTC_ALMA_TIME_FORMAT_AM, 0x19, 0x58, 0x10);
    LL_RTC_ALMA_Enable(RTC);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_17);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_17);
    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_17);

}

void exti_config() {
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);

    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE1);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);

    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_1);
    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_SetPriority(EXTI0_1_IRQn, 1);
}

void EXTI0_1_IRQHandler() {
    modeSwitchButtonTime = BUTT_MODE_SWITCH_START;
    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
}

void RTC_IRQHandler() {
    static int timode = 0; //0 for work mode, 1 for break mode

    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);

    timode ^= 1;

    //TODO change
    stime = hex2num(__LL_RTC_GET_SECOND(LL_RTC_TIME_Get(RTC))) + hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC))) * 60 + (timode ? breaktime : worktime);

    LL_RTC_DisableWriteProtection(RTC);
    LL_RTC_ALMA_Disable(RTC);
    while(!LL_RTC_IsActiveFlag_ALRAW(RTC));
    unsigned int t = hex2num(__LL_RTC_GET_SECOND(LL_RTC_TIME_Get(RTC))) + hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC))) * 60 + hex2num(__LL_RTC_GET_HOUR(LL_RTC_TIME_Get(RTC))) * 3600 + (timode ? breaktime : worktime);
    LL_RTC_ALMA_ConfigTime(RTC, LL_RTC_ALMA_TIME_FORMAT_AM, num2hex(t / 3600), num2hex((t % 3600) / 60), num2hex(t % 60));
    LL_RTC_ALMA_Enable(RTC);
    LL_RTC_EnableWriteProtection(RTC);
    LL_RTC_ClearFlag_ALRA(RTC);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_17);
}

int main(void)
{
	rcc_config();
	gpio_config();
	exti_config();
	
	systick_config();
	rtc_config();

	LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);

	while(1);

}
