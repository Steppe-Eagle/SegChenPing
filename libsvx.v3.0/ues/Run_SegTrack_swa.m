

addpath('./code');
video_name = 'birdfall';
video_path = fullfile(pwd,'..','..','dataset','SegTrackv2','JPEGImages',video_name);
hie_path = fullfile(pwd,'..','..','output','swa',video_name,'treeified');
hie_no = 20;
temp = ['hie_no_' , int2str(hie_no)];
output_path = fullfile(pwd,'..','..','output','ues','swa',video_name,temp,'sigma_10');
mkdir(output_path)
runUES( video_path,hie_path,output_path,20)


