GettingAndCleaningDataCourseProject
===================================

Course Project for the Getting &amp; Cleaning Data class on Coursera

The run_analysis.R script begins by downloading and unzipping the data if
it is not already present.  This assumes that the data is not going to
change over time, so a download at any point will always retrieve the same
data.

Next it loads up the test & training data, names the variables appropriately
(based on the info in features.txt), merges the data into a single data set,
and labels the activities appropriately (based on the info in
activity_labels.txt).

At this point, it extracts only the interesting columns.  Of course it keeps
Activity and TestSubject.  It also keeps anything with ".mean", ".meanFreq"
or ".std." in the name - the variables that are means or standard deviations.

Finally, it reshapes the data to include average values of each of these means
and standard deviations for each activity and subject.  This final tidy
data set is then written to a file.  This file is a text file containing a
space-separated table.