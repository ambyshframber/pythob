#!/bin/sh

dir=$( cd -- "$( dirname -- "$0" )" &> /dev/null && pwd )
cd $dir

lex < pythob.l
gcc -Wall lex.yy.c -o pythob
