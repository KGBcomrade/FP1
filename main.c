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


///for contact bounce protection
#define BUTT_START 0
#define BUTT_TRIGG 300
#define BUTT_COMPLETE 301

///to make not highlighted digits in settings mode dimmer
#define SETTINGS_MODE_DIGITS_BRIGHTNESS_PRESCALER 4

unsigned int numi = 1234;
int8_t shc = 0;


///for contact bounce protection
int modeSwitchButtonTime = BUTT_COMPLETE;
///for contact bounce protection
int highlightShiftButtonTime = BUTT_COMPLETE;



static const unsigned int pow10[] = {1, 10, 100, 1000};


unsigned int worktime = 15, breaktime = 10;

unsigned int stime = 0;

unsigned int done = 0;

unsigned int settings_shift = 0;
unsigned int settings_mode = 0;

unsigned int timode = 0; //0 for work mode, 1 for break mode



void set_timer();

void gpio_config() {
    gpio_ind7_config();
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_13, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_14, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_15, LL_GPIO_MODE_OUTPUT);

    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_1, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_2, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_2, LL_GPIO_PULL_UP);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_3, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_3, LL_GPIO_PULL_UP);

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOF);
    LL_GPIO_SetPinMode(GPIOF, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);

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

	NVIC_SetPriority(SysTick_IRQn, 3);
}

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
void SysTick_Handler() {
    static unsigned int ctime, time;
    static unsigned int highlight_pwm_time = 0;
    if(LL_RTC_IsActiveFlag_RS(RTC) && !settings_mode) {
        ctime = hex2num(__LL_RTC_GET_SECOND(LL_RTC_TIME_Get(RTC))) +
               hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC))) * 60;
        time = done ? ctime - stime : stime - ctime;
        numi = (time / 60 ) * 100 + (time % 60);
    }

    //for contact bounce protection
    //Mode switch button
    switch (modeSwitchButtonTime) {
        default:
            modeSwitchButtonTime++;
            break;
        case BUTT_TRIGG:
            modeSwitchButtonTime++;
            if(done || timode) {
                done = 0;


                if (timode) {
                    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13);
                    LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_15);
                    LL_TIM_DisableCounter(TIM3);
                } else {
                    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_15);
                    LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_13);
                }
                timode ^= 1;

                set_timer();

                LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_14);
            }
            break;
        case BUTT_COMPLETE:
            break;
    }

    //Highlight shifter aka pause aka settings button
    //Highlight shifter function:
    switch (highlightShiftButtonTime) {
        default:
            highlightShiftButtonTime++;
            break;
        case BUTT_TRIGG:
            timode = 0;
            highlightShiftButtonTime++;
            settings_shift = (settings_shift - 1) % 4;
            break;
        case BUTT_COMPLETE:
            break;
    }


	if((++shc) == 4)
		shc = 0;
	if(!settings_mode || shc == settings_shift)
    	set_indicator((numi / pow10[shc]) % 10, shc, shc == 2 && !settings_mode);
	if (settings_mode){
	    if(shc == 0)
	        highlight_pwm_time = (highlight_pwm_time + 1) % SETTINGS_MODE_DIGITS_BRIGHTNESS_PRESCALER;
	    if(highlight_pwm_time == SETTINGS_MODE_DIGITS_BRIGHTNESS_PRESCALER - 1)
	        set_indicator((numi / pow10[shc]) % 10, shc, shc == 2);
	}



}
#pragma clang diagnostic pop


void set_timer() {
    LL_RTC_DisableWriteProtection(RTC);
    LL_RTC_ALMA_Disable(RTC);
    while(!LL_RTC_IsActiveFlag_ALRAW(RTC));
    unsigned int t = hex2num(__LL_RTC_GET_SECOND(LL_RTC_TIME_Get(RTC))) +
            hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC))) * 60 +
            hex2num(__LL_RTC_GET_HOUR(LL_RTC_TIME_Get(RTC))) * 3600 + (timode ? breaktime : worktime);
    LL_RTC_ALMA_ConfigTime(RTC, LL_RTC_ALMA_TIME_FORMAT_AM, num2hex(t / 3600), num2hex((t % 3600) / 60), num2hex(t % 60));
    LL_RTC_ALMA_Enable(RTC);
    LL_RTC_EnableWriteProtection(RTC);
    stime = hex2num(__LL_RTC_GET_SECOND(LL_RTC_TIME_Get(RTC))) + hex2num(__LL_RTC_GET_MINUTE(LL_RTC_TIME_Get(RTC))) * 60 + (timode ? breaktime : worktime);
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
    LL_RTC_TIME_Config(RTC, LL_RTC_TIME_FORMAT_AM_OR_24, 0x00, 0x00, 00);

    LL_RTC_DisableInitMode(RTC);
    LL_RTC_EnableWriteProtection(RTC);

    LL_RTC_EnableShadowRegBypass(RTC);

    //Set up alarm

    LL_RTC_DisableWriteProtection(RTC);
    LL_RTC_ALMA_Disable(RTC);
    while(!LL_RTC_IsActiveFlag_ALRAW(RTC));
    //Set up alarm
    unsigned int t = worktime;
    LL_RTC_ALMA_SetMask(RTC, LL_RTC_ALMA_MASK_DATEWEEKDAY);
    LL_RTC_ALMA_ConfigTime(RTC, LL_RTC_ALMA_TIME_FORMAT_AM, num2hex(t / 3600), num2hex((t % 3600) / 60), num2hex(t % 60));
    LL_RTC_ALMA_Enable(RTC);

    LL_RTC_EnableIT_ALRA(RTC);
    LL_RTC_EnableWriteProtection(RTC);

    NVIC_EnableIRQ(RTC_IRQn);
    NVIC_SetPriority(RTC_IRQn, 2);
    LL_RTC_ALMA_ConfigTime(RTC, LL_RTC_ALMA_TIME_FORMAT_AM, 0x19, 0x58, 0x10);
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

    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE2);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE3);

    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_3);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_2);

    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_2);
    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_3);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_2);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_3);



    NVIC_EnableIRQ(EXTI2_3_IRQn);
    NVIC_SetPriority(EXTI2_3_IRQn, 5);
}

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
void EXTI0_1_IRQHandler() {
    modeSwitchButtonTime = BUTT_START;

    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
}
#pragma clang diagnostic pop

///Contact bounce protection
#define ROTATION_LIMIT 4

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
///encoder for time settings
void EXTI2_3_IRQHandler() {
    if(settings_mode) {
        static const int32_t states[16] = {0, -1, 1, 0, 1, 0, 0, -1, -1, 0, 0, 1, 0, 1, -1, 0};
        uint32_t common = LL_GPIO_ReadInputPort(GPIOA) >> 2 & 0x3;
        static uint32_t previous = 0;
        static int32_t summary = 0;
        int32_t res = 0;

        previous = ((previous << 2) | common) & 0xF;

        summary += states[previous];

        //Contact bounce protection
        if (summary == ROTATION_LIMIT) {
            res = 1;
            summary = 0;
        }
        if (summary == -ROTATION_LIMIT) {
            res = -1;
            summary = 0;
        }

        int cdigit = (int)(numi / pow10[settings_shift]) % 10;
        numi -= (unsigned int)cdigit * pow10[settings_shift];
        cdigit = (cdigit + res) % 10;
        numi += (unsigned int)cdigit * pow10[settings_shift];

    }

    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_2);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_3);
}
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
void RTC_IRQHandler() {


    done = 1;

    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_14);

    if(timode)
        LL_TIM_EnableCounter(TIM3);
    else
        LL_TIM_EnableCounter(TIM14);

    LL_RTC_ClearFlag_ALRA(RTC);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_17);
}
#pragma clang diagnostic pop

static void timers_config(void)
{
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_TIM16);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_8, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOB, LL_GPIO_PIN_8, LL_GPIO_AF_2);
    LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_8, LL_GPIO_PULL_UP);

    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_TIM16);
    LL_TIM_SetPrescaler(TIM16, 47999);
    LL_TIM_IC_SetFilter(TIM16, LL_TIM_CHANNEL_CH1, LL_TIM_IC_FILTER_FDIV16_N5);
    LL_TIM_IC_SetPolarity(TIM16, LL_TIM_CHANNEL_CH1,
                          LL_TIM_IC_POLARITY_FALLING);
    LL_TIM_IC_SetActiveInput(TIM16, LL_TIM_CHANNEL_CH1,
                             LL_TIM_ACTIVEINPUT_DIRECTTI);
    LL_TIM_IC_SetPrescaler(TIM16, LL_TIM_CHANNEL_CH1, LL_TIM_ICPSC_DIV1);
    LL_TIM_CC_EnableChannel(TIM16, LL_TIM_CHANNEL_CH1);
    LL_TIM_EnableIT_CC1(TIM16);
    LL_TIM_EnableCounter(TIM16);

    LL_TIM_GenerateEvent_UPDATE(TIM2);
    LL_TIM_GenerateEvent_UPDATE(TIM16);

    NVIC_EnableIRQ(TIM16_IRQn);
    NVIC_SetPriority(TIM16_IRQn, 0);


    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);
    LL_TIM_SetPrescaler(TIM3, 479);
    LL_TIM_SetAutoReload(TIM3, 140);
    LL_TIM_SetCounterMode(TIM3, LL_TIM_COUNTERMODE_UP);
    LL_TIM_EnableIT_UPDATE(TIM3);

    NVIC_EnableIRQ(TIM3_IRQn);
    NVIC_SetPriority(TIM3_IRQn, 1);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM14);
    LL_TIM_SetPrescaler(TIM14, 47999);
    LL_TIM_SetAutoReload(TIM14, 499);
    LL_TIM_SetCounterMode(TIM14, LL_TIM_COUNTERMODE_UP);
    LL_TIM_EnableIT_UPDATE(TIM14);

    NVIC_EnableIRQ(TIM14_IRQn);
    NVIC_SetPriority(TIM14_IRQn, 2);
}

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
void TIM3_IRQHandler() {
    LL_GPIO_TogglePin(GPIOF, LL_GPIO_PIN_1);
    LL_TIM_ClearFlag_UPDATE(TIM3);
}
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
void TIM14_IRQHandler() {
    static unsigned int cycles = 0;
    if(cycles == 4)
        cycles = 0;

    if(LL_TIM_IsEnabledCounter(TIM3))
        LL_TIM_DisableCounter(TIM3);
    else
        LL_TIM_EnableCounter(TIM3);

    cycles++;
    if(cycles == 4)
        LL_TIM_DisableCounter(TIM14);

    LL_TIM_ClearFlag_UPDATE(TIM14);
}
#pragma clang diagnostic pop

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
void TIM16_IRQHandler() {
    static int tap = 0;
    static int t0 = 0;
    static int t = 10000;
    static int dt = 10000;
    if(tap == 0)
        t0 = LL_TIM_IC_GetCaptureCH1(TIM16);
    else {
        t = LL_TIM_IC_GetCaptureCH1(TIM16);
    }
    dt = t - t0;
    if (dt < 0)
        dt *= -1;
    tap = (tap + 1) % 2;


    if (settings_mode)
        highlightShiftButtonTime = BUTT_START;
    else {
        //notTODO contact bounce protection
        if (LL_RCC_IsEnabledRTC())
            LL_RCC_DisableRTC();
        else
            LL_RCC_EnableRTC();
    }

    if(dt < 180 && dt > 100) {
        if (settings_mode == 1) {
            worktime = numi / 100 * 60 + numi % 100;
            numi = breaktime / 60 * 100 + breaktime % 60;
            //not the best implementation, but who cares
            settings_shift = 0;
            settings_mode = 2;
            LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_13);
            LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_15);
        } else if (settings_mode == 2) {
            breaktime = numi / 100 * 60 + numi % 100;
            set_timer();
            done = 0;
            LL_RCC_EnableRTC();
            settings_mode = 0;

            LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13);
            LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_15);
            LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8);
        } else {
            settings_mode = 1;
            LL_RCC_DisableRTC();
            settings_shift = 3;
            numi = worktime / 60 * 100 + worktime % 60;

            LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13);
            LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_15);
            LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);
        }
    }



    LL_TIM_ClearFlag_CC1(TIM16);
}
#pragma clang diagnostic pop




int main(void)
{
	rcc_config();
	gpio_config();
	exti_config();
	
	systick_config();
	rtc_config();
	timers_config();
    stime = worktime;

    LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13);

	while(1);

}
