Course Project for the Getting &amp; Cleaning Data class on Coursera
====================================================================

The repository includes the run_analysis.R script which takes in raw
data from Samsung Galaxy S accelerometers and cleans it up to produce a tidy
data set.

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
and standard deviations for each activity and subject.  This produces a tidy
data set with columns describing the activity and subject and each measurement
taken.  Each observation includes a variety of measurements of a single
test subject performing a single activity.

The final tidy data set is then written to a file.  This file is a
text file containing a space-separated table.