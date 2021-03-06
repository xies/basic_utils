%This function develop by Renoald Tang
%University Teknologi Malaysia, Photogrammetry and Laser scanning group
%for academic purpose
%Email:renoald@live.com
%This function write Obj file
function WriteObj(file)
fid=fopen(file,'w');
fprintf(fid,'####\n');
fprintf(fid,'#\n');
fprintf(fid,'# OBJ file generated by MATLAB\n');
p=dlmread('point');
f=dlmread('face');
n1=length(p);
f1=length(f);
fprintf(fid,'#\n');
fprintf(fid,'#Vertices:%d\n',n1);
fprintf(fid,'#Faces:%d\n',f1);
fprintf(fid,'#########\n');
for i=1 : n1 
    fprintf(fid,'v %.5f %.5f %.5f\n',p(i,1),p(i,2),p(i,3));
end
for i=1 : f1 
    fprintf(fid,'f %d %d %d \n',f(i,2),f(i,3),f(i,4));
end
fprintf(fid,'#End of File\n');
fclose(fid);
disp('File is finisg convert');
