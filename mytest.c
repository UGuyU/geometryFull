#include <stdlib.h>
#include <stdio.h>
#include "ctest.h"
#include "err.h"

// basic test without setup/teardown
CTEST(suite1, test1) 
{

}
CTEST(errors, test1)
{
	//Given
	const float x = 0;
	const float y = 0;
	const float r = 4;
	
	//When
	const float result = error(x,y,r);
	
	//Then
	const float expected = 0;
	ASSERT_EQUAL(expected, result);
	
}



CTEST(area, test1)
{
	//Given
	const float r = 4;
	
	//When
	const float result = S(r);
	
	//Then
	const float expected = 50.24;
	ASSERT_EQUAL(expected, result);
	
}


	
CTEST(perimeter, test1)
{
	//Given
	const float r = 4;
	
	//When
	const float result = P(r);
	
	//Then
	const float expected = 25.12;
	ASSERT_EQUAL(expected, result);
	
}


