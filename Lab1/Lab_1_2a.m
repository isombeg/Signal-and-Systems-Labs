function ans = Lab_1_2a(fileName, maxVec, col)
    %this function calculates the averages, given a certain input column
    %and stores the re in a variable. 
    ans = ((sum((fileName(2:size(fileName, 1),col)./maxVec(col)),2))*100)/length(col);   
end


