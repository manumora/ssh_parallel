#!/bin/bash

for ((i=0; i<10; i++))
do
   if ! grep -q "a0$i-pro" $HOME/.ssh/known_hosts; then
      ssh-keyscan a0$i-pro >> $HOME/.ssh/known_hosts
   fi
done

for ((i=10; i<51; i++))
do
   if ! grep -q "a$i-pro" $HOME/.ssh/known_hosts; then
      ssh-keyscan a$i-pro >> $HOME/.ssh/known_hosts
   fi
done
