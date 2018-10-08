sentence1 = 'Matthew is a graduate student.';
string1 = 'graduate student';
string2 = 'passionate musician';
removename = strfind(sentence1, string1);
sizeremove = length(string1);
sentence2 = [sentence1(1:removename - 1), string2, sentence1(removename+sizeremove:end)];