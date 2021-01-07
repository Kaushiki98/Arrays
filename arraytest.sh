#!/bin/bash
counter=0
fruits[((counter++))]="Apple"
fruits[((counter++))]="Banana"
fruits[((counter++))]="Orange"
echo ${fruits[@]}
echo ${!fruits[@]}
