#include <stdio.h>
#include <string.h>



int main(void){


	int c;
	int i;
	char s[24];
	int count = 0;
	char d;

	while((c = getchar()) != EOF){

		s[i++] = c;
		count = i;
		}

	for(i =0; i < strlen(s); i++){
	
		if((s[i] >= '0' && s[i] <='9') || (s[i] <= 0 && s[i] >= -9)){
			printf("%c is a n",s[i]);
			}
		else { 

		printf("%c is not a digit\n",s[i]);
		}
			
		
		
	}
	//check for int
	


	//check for float



	//check for hex


	//check for expo


return 0;

	}