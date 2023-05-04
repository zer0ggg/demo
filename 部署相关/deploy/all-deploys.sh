#!/bin/sh

for i in $(ls *-deploy.sh)
do
  echo "run $i ..."
  sh $i
done

