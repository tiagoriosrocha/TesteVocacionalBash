#!/bin/bash

{
 echo 25
 sleep 1
 echo 50
 sleep 1
 echo 75 
 sleep 1
 echo 100
 sleep 1

} | whiptail --gauge "Analisando sua vocação" 6 60 0