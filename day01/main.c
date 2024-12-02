#include <stdio.h>
#include <stdlib.h>

int main(void) {
  long tot1 = 0, tot2 = 0;
  long in1[2000],in2[2000];
  int lines = 0;
  while (scanf("%d   %d\n", (in1+lines), (in2+lines)) == 2) {
    lines++;
  }
  for (int i=0;i<lines;i++) {
    tot1 += in1[i];
    tot2 += in2[i];
  }
  printf("lines read: %d\n", lines);
  printf("Total: %d\n", abs(tot1 - tot2));
  return 0;
}
