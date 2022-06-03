#!/bin/bash
function degF_to_degC()
{
if [[ (($T -ge 32) && ($T -le 212)) ]]
then
degC=`echo "scale=2;(($T-32) * 5/9)" `
else
echo "Exceeding limit"
fi
}
function degC_to_degF()
{
if [[ (($T -ge 32) && ($T -le 212)) ]]
then
degF=`echo "scale=2;(($T-9/5)+32)" `
else
echo "Exceeding limit"
fi
}
read -p "Enter the temperature: " T
read  -p "select the option : 1) degF_to_degC   2) degC_to_degF " option
degF_to_degC=1
degC_to_degF=2
case "$option" in
$degF_to_degC)
degF_to_degC echo $degC
;;
$degC_to_degF)
degC_to_degF echo $degF
;;
*)
echo "Invalid option"
esac
