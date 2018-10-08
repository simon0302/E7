sentenceA = 'John is an expert at MATLAB programming.';
ALength = length(sentenceA);
position1 = strfind(sentenceA, 'expert');
sentenceB = reverse(sentenceA);
sentenceC = 'He also plays tennis and basketball well.';
sentenceD = [sentenceA sentenceC];
sentenceE = upper(sentenceD);