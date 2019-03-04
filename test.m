clc;
clear;
close all;
k= 'doc5.csv';
amazon = importdata(k,',');

prompt='enter min supp as decimal e.g 0.2 ';
minSup=input(prompt);  % Minimum Support Threshold

promp='enter min conf as decimal e.g 0.6 ';
minConf=input(promp);   % Minimum Confidence Threshold

nRules = 100;
sortFlag = 1;
fname=k;
labels= {'cereals', 'clothes', 'diaper', 'fruits','headphones', 'milk','mustard', 'shoes','sodas','tie'};


[Rules, FreqItemsets] = findRules(amazon, minSup, minConf, nRules, sortFlag, labels, fname);
disp(['See the file named ' fname '.txt for the association rules']);

