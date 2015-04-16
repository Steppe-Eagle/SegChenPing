function [ output_args ] = runUES( video_path,hie_path,output_path,hie_select_num)
% Binary weight: 1/10/100. This parameter controls the general trend of
% the tree slice.
sigma = 10;

% Visualization of middle steps: 0/1.
visflag = 0;


% Feature Criteria: ('motion'|'objectness'|'detection'). See settings.m for
% parameter setttings of each method. For example, change the DPM detection
% model file.
method = 'motion';

% UES algorithm
ues(video_path, hie_path, output_path, hie_select_num, sigma, method, visflag);


end

