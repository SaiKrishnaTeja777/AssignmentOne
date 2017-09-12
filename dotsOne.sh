#!/bin/bash

makeDots()
{
  n=$1;
  
  #printing row using outer loop
  for((i=1;i<=n;i++))
  do
      for((j=-1;j<=i-2;j++))
      do
        echo -ne "."
      done
      echo;
  done

  for((i=n;i>=0;i--))
  do    
      for((j=0; j<=i; j++))
      do
        echo -ne "."
      done
      echo;
  done


}

makeDots 7

