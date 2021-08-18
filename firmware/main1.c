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
#include "camara.h"

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
/*	int i;
	signed char defill = 0;	//1->left, -1->right, 0->.
	
	char txtToDisplay[40] = {0, DISPLAY_0, DISPLAY_1,DISPLAY_2,DISPLAY_3,DISPLAY_4,DISPLAY_5,DISPLAY_6,DISPLAY_7,DISPLAY_8,DISPLAY_9,DISPLAY_A,DISPLAY_B,DISPLAY_C,DISPLAY_D,DISPLAY_E,DISPLAY_F,DISPLAY_G,DISPLAY_H,DISPLAY_I,DISPLAY_J,DISPLAY_K,DISPLAY_L,DISPLAY_M,DISPLAY_N,DISPLAY_O,DISPLAY_P,DISPLAY_Q,DISPLAY_R,DISPLAY_S,DISPLAY_T,DISPLAY_U,DISPLAY_V,DISPLAY_W,DISPLAY_X,DISPLAY_Y,DISPLAY_Z,DISPLAY_DP,DISPLAY_TR,DISPLAY_UR};
	
	printf("Test del los display de 7 segmentos... se interrumpe con el botton 1\n");

	while(!(buttons_in_read()&1)) {
		display(txtToDisplay);
		if(buttons_in_read()&(1<<1)) defill = ((defill<=-1) ? -1 : defill-1);
		if(buttons_in_read()&(1<<2)) defill = ((defill>=1) ? 1 : defill+1);
		if (defill > 0) {
			char tmp = txtToDisplay[0];
			for(i=0; i<sizeof(txtToDisplay)/sizeof(txtToDisplay[i]); i++) {
				txtToDisplay[i] = ((i==sizeof(txtToDisplay)/sizeof(txtToDisplay[i])-1) ? tmp : txtToDisplay[i+1]);
			}
		}
		else if(defill < 0) {
			char tmp = txtToDisplay[sizeof(txtToDisplay)/sizeof(txtToDisplay[0])-1];
			for(i=sizeof(txtToDisplay)/sizeof(txtToDisplay[i])-1; i>=0; i--) {
				txtToDisplay[i] = ((i==0) ? tmp : txtToDisplay[i-1]);
			}
		}
		delay_ms(500);
	}
*/
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


/*static void vga_test(void)
{
	int x,y;
	
	for(y=0; y<480; y++) {
		for(x=0; x<640; x++) {
			vga_cntrl_mem_we_write(0);
			vga_cntrl_mem_adr_write(y*640+x);
			if(x<640/3)	
				vga_cntrl_mem_data_w_write(((int)(x/10)%2^(int)(y/10)%2)*15);
			else if(x<2*640/3) 
				vga_cntrl_mem_data_w_write((((int)(x/10)%2^(int)(y/10)%2)*15)<<4);
			else 
				vga_cntrl_mem_data_w_write((((int)(x/10)%2^(int)(y/10)%2)*15)<<8);
			vga_cntrl_mem_we_write(1);
		}
	}
}
*/
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
	delay_ms(700);
	motor_entrada_write(0); //2 izquierda adelante
	delay_ms(700);
	motor_entrada_write(5); // 4 izquierda atras
	delay_ms(700);
	motor_entrada_write(0); //8 derecha atras
	delay_ms(500);
	
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
	//control de la camara
	mp3_play();

	pwm_cntrl_orden_write(5);
	distanciaI=test_us();
	delay_ms(3000);

	pwm_cntrl_orden_write(4);
	distanciaA=test_us();
	delay_ms(3000);

	pwm_cntrl_orden_write(6);
	distanciaD=test_us();
	delay_ms(3000);

	pwm_cntrl_orden_write(4);
	delay_ms(3000);
	//constrol de la camara
	

	/*if(distanciaD==distanciaI && distanciaA > distanciaD){
		motor_entrada_write(3);
		//delay_ms();
	}else if(distanciaA==distanciaD && distanciaI>distanciaD ){
		motor_entrada_write(1);
	}else if(distanciaA==distanciaI && distanciaD>distanciaI ){
		motor_entrada_write(2);
	}else{motor_entrada_write(0)}
	}

	}else{
		motor_entrada_write(3);
	}
	*/
}
}
}

static void mp3_play(void)
{
  mp3_pasar1_write(0);
  delay_ms(200);
  mp3_pasar1_write(1);
  delay_ms(50);
  mp3_pasar1_write(0);
}

static void test_ir(void){
	while(!(buttons_in_read()&1)) {
		leds_out_write(infrarrojo_cntrl_distancia_read());
		delay_ms(50);
		}
}

int dist test_us(void){
        int d;
	int i;
	for(i=0; i<25; ++i) {
		ultrasonido_orden_write(1);
		bool done = false;
		while(!done){
			done = ultrasonido_done_read();
		}
		d=ultrasonido_d_read();
		ultrasonido_orden_write(0);
		delay_ms(50);
		return d;
		}
}

/*static void camara_test(void)
{
	unsigned short temp2 =0xFF;
	printf("Test del los camara... se interrumpe con el botton 1\n");
	while(!(buttons_in_read()&1)) {
		unsigned short temp = camara_cntrl_mem_px_data_read();
		if (temp2 != temp){
			printf("el bus de la camara es : %i\n", temp);
			printf("el boton de la camara esta en: %i\n",camara_cntrl_done_read());
			printf("la habilitacion de la interrupción esta en : %i %i %i\n",camara_cntrl_ev_enable_read(), camara_cntrl_ev_status_read(), camara_cntrl_ev_pending_read());
			camara_isr();
			temp2 = temp;
		}
	}
}
*/

static bool read_us(void){
	ultrasonido_orden_write(1);
	bool done = false;
	while(!done){
		done = ultrasonido_done_read();
	}
	int d = ultrasonido_d_read();
	ultrasonido_orden_write(0);
	if(d<5)
		return 1;
	else
		return 0;
}
/*static void test_us(void){
	int i;
	for(i = 1; i < 25; ++i) {
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
*/
static void camara_test(void){
          
       
          while(!(buttons_in_read()&1)) {
          camara_cntrl_enable_write(1);
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
	//else if(strcmp(token, "vga") == 0)
		//vga_test();
	else if(strcmp(token, "camara") == 0)
		camara_test();
	else if(strcmp(token, "pwm") == 0)
	       pwm_test();
	else if(strcmp(token, "ultra") == 0)
	       test_us();  
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
	//camara_init();

	puts("\nSoC - RiscV project UNAL 2020-2-- CPU testing software  interrupt "__DATE__" "__TIME__"\n");
	help();
	prompt();

	while(1) {
		console_service();
	}

	return 0;
}
