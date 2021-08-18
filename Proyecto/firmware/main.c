#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#include <irq.h>
#include <uart.h>
#include <console.h>
#include <generated/csr.h>

#include "delay.h"
#include "display.h"

static char *readstr(void)
{
	char c[2];
	static char s[64];
	static int ptr = 0;

	if(readchar_nonblock()) {
		c[0] = readchar();
		c[1] = 0;
		switch(c[0]) {
			case 0x7f:
			case 0x08:
				if(ptr > 0) {
					ptr--;
					putsnonl("\x08 \x08");
				}
				break;
			case 0x07:
				break;
			case '\r':
			case '\n':
				s[ptr] = 0x00;
				putsnonl("\n");
				ptr = 0;
				return s;
			default:
				if(ptr >= (sizeof(s) - 1))
					break;
				putsnonl(c);
				s[ptr] = c[0];
				ptr++;
				break;
		}
	}
	return NULL;
}

static char *get_token(char **str)
{
	char *c, *d;

	c = (char *)strchr(*str, ' ');
	if(c == NULL) {
		d = *str;
		*str = *str+strlen(*str);
		return d;
	}
	*c = 0;
	d = *str;
	*str = c+1;
	return d;
}

static void prompt(void)
{
	printf("RUNTIME>");
}

static void help(void)
{
	puts("Available commands:");
	puts("help                            - this command");
	puts("reboot                          - reboot CPU");
	puts("led                             - led test");
	puts("switch                          - switch test");
	puts("display                         - display test");
	puts("rgbled                          - rgb led test");
	puts("vga                             - vga test");
	puts("camara                          - camara test");
	puts("pwm                             - pwm test");
	puts("ultra                           - ultra test");
	puts("ir                              - ir test");
	puts("mp3                             - mp3 test");
	puts("motor                           - motor test");
	puts("carro                           - carro");
}

static void reboot(void)
{
	ctrl_reset_write(1);
}

static void display_test(void)
{

}

static void led_test(void)
{
	unsigned int i;
	printf("Test del los leds... se interrumpe con el botton 1\n");
	while(!(buttons_in_read()&1)) {

	for(i=1; i<65536; i=i*2) {
		leds_out_write(i);
		delay_ms(50);
	}
	for(i=32768;i>1; i=i/2) {
		leds_out_write(i);
		delay_ms(50);
	}
	}
	
}


static void switch_test(void)
{
	unsigned short temp2 =0;
	printf("Test del los interruptores... se interrumpe con el botton 1\n");
	while(!(buttons_in_read()&1)) {
		unsigned short temp = switchs_in_read();
		if (temp2 != temp){
			printf("switch bus : %i\n", temp);
			leds_out_write(temp);
			temp2 = temp;
		}
	}
}

static void rgbled_test(void)
{
	unsigned int T = 128;
	
	ledRGB_1_r_period_write(T);
	ledRGB_1_g_period_write(T);
	ledRGB_1_b_period_write(T);

	ledRGB_1_r_enable_write(1);
	ledRGB_1_g_enable_write(1);
	ledRGB_1_b_enable_write(1);

	
	ledRGB_2_r_period_write(T);
	ledRGB_2_g_period_write(T);
	ledRGB_2_b_period_write(T);
	
	
	ledRGB_2_r_enable_write(1);
	ledRGB_2_g_enable_write(1);
	ledRGB_2_b_enable_write(1);

	for (unsigned int j=0; j<100; j++){
		ledRGB_1_g_width_write(j);
		for (unsigned int i=0; i<100; i++){
			ledRGB_1_r_width_write(100-i);
			ledRGB_1_b_width_write(i);	
			delay_ms(20);
		         			}	
	}
}


static void pwm_test(void)
{  
        printf("Test del pwm... se interrumpe con el botton 1\n");
        while(!(buttons_in_read()&1)) {
        //pwm_cntrl_orden_write(4);
	//delay_ms(3000);
	pwm_cntrl_orden_write(5);
	delay_ms(3000);
	pwm_cntrl_orden_write(4);
	delay_ms(3000);
	pwm_cntrl_orden_write(6);
	delay_ms(3000);
	pwm_cntrl_orden_write(4);
	delay_ms(3000);
	/*pwm_cntrl_orden_write(5);
	delay_ms(3000);
	pwm_cntrl_orden_write(6);*/ 
	}
}
static void mp3_play(void)
{
  mp3_pasar1_write(0);
  delay_ms(200);
  mp3_pasar1_write(1);
  delay_ms(200);
  mp3_pasar1_write(0);
}
static void mp3_test(void)
{
  printf("Test del mp3... se interrumpe con el botton 1\n");
  while(!(buttons_in_read()&1)) {
  mp3_pasar1_write(0);
  delay_ms(200);
  mp3_pasar1_write(1);
  delay_ms(50);
  mp3_pasar1_write(0);
  delay_ms(3000);
  
  }
}

static void motor_test(void)
{
    printf("Test del motor... se interrumpe con el botton 1\n");
        while(!(buttons_in_read()&1)) {
	motor_entrada_write(10); // 1 derecha adelante
	delay_ms(790);
	motor_entrada_write(0); //2 izquierda adelante
	delay_ms(700);
	motor_entrada_write(5); // 4 izquierda atras
	delay_ms(810);
	motor_entrada_write(0); //8 derecha atras
	delay_ms(500);
	
	}
}



static void test_ir(void){
	while(!(buttons_in_read()&1)) {
		leds_out_write(infrarrojo_cntrl_distancia_read());
		delay_ms(50);
		}
}

static int test_us(void){

        int d;
        
		ultrasonido_orden_write(1);
		bool done = false;
		while(!done){
			done = ultrasonido_done_read();
		}
		d=ultrasonido_d_read();
		ultrasonido_orden_write(0);
		return d;
		
}

static void test_ultra(void){
	while(!(buttons_in_read()&1)) {
		ultrasonido_orden_write(1);
		bool done = false;
		while(!done){
			done = ultrasonido_done_read();
		}
		leds_out_write(ultrasonido_d_read());
		ultrasonido_orden_write(0);
		delay_ms(50);
		}
}
static void camara_test(void){
          while(!(buttons_in_read()&1)) {
          camara_cntrl_enable_write(1);
          delay_ms(3000);
          leds_out_write(camara_cntrl_enable_read()+1);
          camara_cntrl_enable_write(0);
          delay_ms(3000);
          leds_out_write(camara_cntrl_enable_read()+1);
          }
}

static void test_mov(void){

int distIR;
int distanciaI;
int distanciaA;
int distanciaD;

	motor_entrada_write(3);

	while(!(buttons_in_read()&1)) {
	
		distIR = infrarrojo_cntrl_distancia_read();

	if (distIR <20){
	
	motor_entrada_write(0);

	mp3_play();
	
	distanciaI=0; 
	distanciaA=0;
	distanciaD=0;
	
	pwm_cntrl_orden_write(5);
	delay_ms(1500);
	distanciaI=test_us();
	delay_ms(1500);

	pwm_cntrl_orden_write(4);
	delay_ms(1500);
	distanciaA=test_us();
	delay_ms(1500);

	pwm_cntrl_orden_write(6);
	delay_ms(1500);
	distanciaD=test_us();
	delay_ms(1500);

	pwm_cntrl_orden_write(4);
	delay_ms(50);

	if(distanciaA>distanciaI && distanciaA>distanciaD){
		motor_entrada_write(3);
		delay_ms(1000);
	}else if(distanciaI>distanciaA && distanciaI>distanciaD){
		motor_entrada_write(5);
		delay_ms(790);
		motor_entrada_write(0);
		delay_ms(1000);
		motor_entrada_write(3);
		delay_ms(1000);
	
	}else if(distanciaD>distanciaA && distanciaI<distanciaD){
		motor_entrada_write(10);
		delay_ms(900);
		motor_entrada_write(0);
		delay_ms(1000);
		motor_entrada_write(3);
		delay_ms(1000);
		
	}else(motor_entrada_write(0));
	}
	else{
		motor_entrada_write(3);
	}
}
}



static void console_service(void)
{
	char *str;
	char *token;

	str = readstr();
	if(str == NULL) return;
	token = get_token(&str);
	if(strcmp(token, "help") == 0)
		help();
	else if(strcmp(token, "reboot") == 0)
		reboot();
	else if(strcmp(token, "led") == 0)
		led_test();
	else if(strcmp(token, "switch") == 0)
		switch_test();
	else if(strcmp(token, "display") == 0)
		display_test();
	else if(strcmp(token, "rgbled") == 0)
		rgbled_test();
	else if(strcmp(token, "camara") == 0)
		camara_test();
	else if(strcmp(token, "pwm") == 0)
	       pwm_test();
	else if(strcmp(token, "ultra") == 0)
	       test_ultra();  
       else if(strcmp(token, "ir") == 0)
	       test_ir();
	else if(strcmp(token, "mp3") == 0)
		mp3_test();
	else if(strcmp(token, "motor") == 0)
		motor_test();
	else if(strcmp(token, "carro") == 0)
		test_mov();	
	prompt();
}

int main(void)
{
	irq_setmask(0);
	irq_setie(1);
	uart_init();

	puts("\nSoC - RiscV project UNAL 2020-2-- CPU testing software  interrupt "__DATE__" "__TIME__"\n");
	help();
	prompt();

	while(1) {
		console_service();
	}

	return 0;
}
