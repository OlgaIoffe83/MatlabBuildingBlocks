% function remove_lines_from_txt_file to remove the dirty data in the 
% beginning of the file. This function assumes the first line in the text
% is the title and needs to be rserved. The lines are removed starting from
% 2nd line and numlines are removed
% input:
% flnmin - the name of the file to clean for example 'myFile.txt' 
% numlines - number of lines to remove at the beginning of the file
% output:
% flnmout - the name of the truncated file

function flnmout = remove_lines_from_txt_file (flnmin,numlines)

% read data frominput file and store it
fid = fopen(flnmin, 'r');
titleline = fgetl(fid);   % Read the title
for indl = 1:numlines
    fgetl(fid);           % Read/discard line.
end
buffer = fread(fid, Inf); % Read rest of the file.
fclose(fid);

% create new filename by adding '_trunc' to the name
[~,fname,fext] = fileparts(flnmin);
flnmout = [fname, '_trunc', fext]; % reassemble the output filename

% Save to _trunc file.
fid = fopen(flnmout, 'w'); 
fwrite(fid, titleline); % Write the title
fwrite(fid, newline);   % Add newline
fwrite(fid, buffer);    % Write the saved data
fclose(fid);