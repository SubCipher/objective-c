#include <stdio.h>

int main(){

	int num1,num2;
	
	printf("enter two numbers: ");	
	scanf(" %d, %d",&num1, &num2);


	if(num1 % num2 == 0 ){
		printf("\n\n");
		printf("%d is divisiable by %d\n\n", num1,num2);
		printf("\n\n");
}
	else {
		
		printf("\n\n");
		printf("NOPE");
		printf("\n\n");
		}

	

}