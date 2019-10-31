nameOfFile = csvread('course_grades_2019.csv');
maxRow = csvread('course_grades_2019.csv', 0,0,[0,0,0,11]);

%Average Lab Mark and Overall Avg Lab Mark-- From Columns 2 to 5
labVector = [2:5];
avgLabMarks = Lab_1_2a(nameOfFile, maxRow, labVector);
overallAvgLabGrade = sum(avgLabMarks)./ length(avgLabMarks);


%Average Exam Mark and Overall Avg Exam Mark-- From Columns 7 to 12
examVector = [7:12];
avgExamMarks = Lab_1_2a(nameOfFile, maxRow, examVector);
overallAvgExamGrade = sum(avgExamMarks)./ length(avgExamMarks);


%Final Grade -- From Columns 2 to 12
midtermVector = [6];
avgMidtermMarks = Lab_1_2a(nameOfFile, maxRow, midtermVector);
finalGrade = avgLabMarks.*(0.3) + avgExamMarks.*(0.4) + avgMidtermMarks.*(0.3)









