extern void printInt(int num);
extern void __debugbreak(void);

char* Message(void)
{
	return "Hello, from C";
}

void Test(void) 
{
	int i = 10;
	__debugbreak();
	printInt(i);
}