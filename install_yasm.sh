#!/bin/bash
#//!wuyujie



if [ $UID -ne 0 ];then
 echo "must be root ..."
 sleep 1
 exit 1

fi

if [ ! -e ./yasm-1.3.0.tar.gz ];then
   echo "install file source not exsit!"
   echo "please download :http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz"
   echo "please wait for a minuter..."
   echo "now downloading  package ... "
   sleep 1
   wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz
   if [ $? -ne 0 ];then 
      echo "download package failed... you have to download it by yourself "
	  sleep 1
	  exit 1
   fi 
   
   
fi 


tar -xvf yasm-1.3.0.tar.gz

make && make install

echo "install success..."






