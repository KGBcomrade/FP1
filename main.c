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



static unsigned int numi = 1234;
static int8_t shc = 0;



static const unsigned int pow10[] = {1, 10, 100, 1000};




void gpio_config() {
    gpio_ind7_config();
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);

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
    if(LL_RTC_IsActiveFlag_RS(RTC)) {
        numi = hex2num(__LL_RTC_GET_HOUR(LL_RTC_TIME_Get(RTC))) * 100 + hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC)));


    }

	if((++shc) == 4)
		shc = 0;
	set_indicator((numi / pow10[shc]) % 10, shc);
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

}

int main(void)
{
	rcc_config();
	gpio_config();
	
	systick_config();
	rtc_config();
	
	LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);

	while(1);

}
