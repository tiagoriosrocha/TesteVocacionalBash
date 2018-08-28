#!/bin/bash


echo $(( 100 * 1 / 6 )) | sed 's/..$/.&/'

echo 2k 1 3 /p | dc