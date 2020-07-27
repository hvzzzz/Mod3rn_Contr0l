clc; clear all; close all;
num=[10 1];
den=[1 1 0 0];
f=tf(num,den);
nyquistplot(f)