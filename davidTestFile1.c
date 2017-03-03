#include<stdio.h>

int main()
{
  int a, b, c;
  a = 0;
  b = a;
  c = a;

  for(int i = 0; i < 100; i++)
  {
      a++;
      b += a;
      c *= b;
  }
  printf("%d, %d, %d\n", a, b, c);
}
