#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/time.h>

#include "bmp.h"

void GrayScale(int y, int x){
  int r, g, b, tmp;
  r =  Input[y][x] >> 16;
  g = (Input[y][x] <<  8) >> 8;
  b = (Input[y][x] << 16) >> 16;
  tmp = (float)r * 0.299 + (float)g * 0.587 + (float)b * 0.114;
  Output[y][x] = tmp<<16|tmp<<8|tmp;
}

void GrayScale1(){
  int x, y;
  for( y = 0; y < height; y++ ){ // 外が y，内が x
    for( x = 0; x < width; x++ ){
      GrayScale(y, x);
    }
  }
}
      
void GrayScale2(){
  int x, y;
  for( x = 0; x < width; x++ ){ // 外が x，内が y
    for( y = 0; y < height; y++ ){
      GrayScale(y, x);
    }
  }
}
      
int main(int argc, char *argv[]){
  struct timeval tv1, tv2;

  int flag = atoi(argv[1]);
  int l;
  if( flag == 1 ){	// 実行時引数が 1 の場合 --------------------
    gettimeofday(&tv1, NULL);	// 時間計測開始
    for( l = 0; l < 100; l++ ){
      GrayScale1();
    }
    gettimeofday(&tv2, NULL);	// 時間計測終了
  }else{		// それ以外の場合 ---------------------------
    gettimeofday(&tv1, NULL);	// 時間計測開始
    for( l = 0; l < 100; l++ ){
      GrayScale2();
    }
    gettimeofday(&tv2, NULL);	// 時間計測終了
  }
  printf("exec time: %d[usec]\n",
	 (tv2.tv_sec - tv1.tv_sec)*1000*1000+(tv2.tv_usec - tv1.tv_usec));
}
