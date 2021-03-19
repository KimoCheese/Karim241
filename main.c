#include "stdio.h"
#include "circleLib.h"
#include "newLib.h"
int main (int argc, char** argv){

	double Perimeter;
	double Area;

	Perimeter = calcRecPerim (2.1,5.1);
	Area = calcRecArea (2.1,5.1);

	printf("Perim : %f \nArea: %f\n" , Perimeter, Area);

}	
