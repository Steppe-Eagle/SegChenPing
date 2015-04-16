function [ output_args ] = run( i )

    addpath('/nfs/bigeye/hieule/libsvx.v3.0/ues/code');
    addpath('/nfs/bigeye/hieule/libsvx.v3.0/ues/');
    settings;
    video_name_array = {'birdfall';'bird_of_paradise';'bmx';'cheetah';'drift';'frog';'girl';'hummingbird';'monkey';'monkeydog';'parachute';'penguin';'soldier';'worm'}
    video_name=   video_name_array{i};
    video_path = ['/nfs/bigeye/hieule/dataset/SegTrackv2/JPEGImages/',video_name];
    %video_path = fullfile(pwd,'..','..','dataset','SegTrackv2','JPEGImages',video_name);
    hie_path = ['/nfs/bigeye/hieule/output/gbh/',video_name];
    hie_no = 10;
    temp = ['hie_no_' , int2str(hie_no)];
    output_path = ['/nfs/bigeye/hieule/output/SegTrackv2/ues/gbh/',video_name,'/',temp,'/sigma_10'];
    mkdir(output_path)
    runUES( video_path,hie_path,output_path,3)
    output_args= 1
end

