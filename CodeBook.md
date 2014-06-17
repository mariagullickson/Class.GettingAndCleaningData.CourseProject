Each row in the resulting tidy data set begins with the Activity that the subject was engaging in and the TestSubject being measured.  Following this are mean measurements for a variety of features.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcceleration-XYZ and TimeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleration-XYZ and TimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerationMagnitude, TimeGravityAccelerationMagnitude,TimeBodyAccelerationJerkMagnitude,TimeBodyGyroscopeMagnitude,TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAcceleration-XYZ, FrequencyBodyAccelerationJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerationJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* TimeBodyAcceleration-XYZ
* TimeGravityAcceleration-XYZ
* TimeBodyAccelerationJerk-XYZ
* TimeBodyGyroscope-XYZ
* TimeBodyGyroscopeJerk-XYZ
* TimeBodyAccelerationMagnitude
* TimeGravityAccelerationMagnitude
* TimeBodyAccelerationJerkMagnitude
* TimeBodyGyroscopeMagnitude
* TimeBodyGyroscopeJerkMagnitude
* FrequencyBodyAcceleration-XYZ
* FrequencyBodyAccelerationJerk-XYZ
* FrequencyBodyGyroscope-XYZ
* FrequencyBodyAccelerationMagnitude
* FrequencyBodyAccelerationJerkMagnitude
* FrequencyBodyGyroscopeMagnitude
* FrequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

* Mean: Mean value
* StandardDeviation: Standard deviation
* MeanFrequency: Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* GravityMean
* TimeBodyAccelerationMean
* TimeBodyAccelerationJerkMean
* TimeBodyGyroscopeMean
* TimeBodyGyroscopeJerkMean

The complete list of variables of each feature vector are as follows:

1. Activity
2. TestSubject
3. TimeBodyAccelerationMeanX
4. TimeBodyAccelerationMeanY
5. TimeBodyAccelerationMeanZ
6. TimeBodyAccelerationStandardDeviationX
7. TimeBodyAccelerationStandardDeviationY
8. TimeBodyAccelerationStandardDeviationZ
9. TimeGravityAccelerationMeanX
10. TimeGravityAccelerationMeanY
11. TimeGravityAccelerationMeanZ
12. TimeGravityAccelerationStandardDeviationX
13. TimeGravityAccelerationStandardDeviationY
14. TimeGravityAccelerationStandardDeviationZ
15. TimeBodyAccelerationJerkMeanX
16. TimeBodyAccelerationJerkMeanY
17. TimeBodyAccelerationJerkMeanZ
18. TimeBodyAccelerationJerkStandardDeviationX
19. TimeBodyAccelerationJerkStandardDeviationY
20. TimeBodyAccelerationJerkStandardDeviationZ
21. TimeBodyGyroscopeMeanX
22. TimeBodyGyroscopeMeanY
23. TimeBodyGyroscopeMeanZ
24. TimeBodyGyroscopeStandardDeviationX
25. TimeBodyGyroscopeStandardDeviationY
26. TimeBodyGyroscopeStandardDeviationZ
27. TimeBodyGyroscopeJerkMeanX
28. TimeBodyGyroscopeJerkMeanY
29. TimeBodyGyroscopeJerkMeanZ
30. TimeBodyGyroscopeJerkStandardDeviationX
31. TimeBodyGyroscopeJerkStandardDeviationY
32. TimeBodyGyroscopeJerkStandardDeviationZ
33. TimeBodyAccelerationMagnitudeMean
34. TimeBodyAccelerationMagnitudeStandardDeviation
35. TimeGravityAccelerationMagnitudeMean
36. TimeGravityAccelerationMagnitudeStandardDeviation
37. TimeBodyAccelerationJerkMagnitudeMean
38. TimeBodyAccelerationJerkMagnitudeStandardDeviation
39. TimeBodyGyroscopeMagnitudeMean
40. TimeBodyGyroscopeMagnitudeStandardDeviation
41. TimeBodyGyroscopeJerkMagnitudeMean
42. TimeBodyGyroscopeJerkMagnitudeStandardDeviation
43. FrequencyBodyAccelerationMeanX
44. FrequencyBodyAccelerationMeanY
45. FrequencyBodyAccelerationMeanZ
46. FrequencyBodyAccelerationStandardDeviationX
47. FrequencyBodyAccelerationStandardDeviationY
48. FrequencyBodyAccelerationStandardDeviationZ
49. FrequencyBodyAccelerationMeanFrequencyX
50. FrequencyBodyAccelerationMeanFrequencyY
51. FrequencyBodyAccelerationMeanFrequencyZ
52. FrequencyBodyAccelerationJerkMeanX
53. FrequencyBodyAccelerationJerkMeanY
54. FrequencyBodyAccelerationJerkMeanZ
55. FrequencyBodyAccelerationJerkStandardDeviationX
56. FrequencyBodyAccelerationJerkStandardDeviationY
57. FrequencyBodyAccelerationJerkStandardDeviationZ
58. FrequencyBodyAccelerationJerkMeanFrequencyX
59. FrequencyBodyAccelerationJerkMeanFrequencyY
60. FrequencyBodyAccelerationJerkMeanFrequencyZ
61. FrequencyBodyGyroscopeMeanX
62. FrequencyBodyGyroscopeMeanY
63. FrequencyBodyGyroscopeMeanZ
64. FrequencyBodyGyroscopeStandardDeviationX
65. FrequencyBodyGyroscopeStandardDeviationY
66. FrequencyBodyGyroscopeStandardDeviationZ
67. FrequencyBodyGyroscopeMeanFrequencyX
68. FrequencyBodyGyroscopeMeanFrequencyY
69. FrequencyBodyGyroscopeMeanFrequencyZ
70. FrequencyBodyAccelerationMagnitudeMean
71. FrequencyBodyAccelerationMagnitudeStandardDeviation
72. FrequencyBodyAccelerationMagnitudeMeanFrequency
73. FrequencyBodyAccelerationJerkMagnitudeMean
74. FrequencyBodyAccelerationJerkMagnitudeStandardDeviation
75. FrequencyBodyAccelerationJerkMagnitudeMeanFrequency
76. FrequencyBodyGyroscopeMagnitudeMean
77. FrequencyBodyGyroscopeMagnitudeStandardDeviation
78. FrequencyBodyGyroscopeMagnitudeMeanFrequency
79. FrequencyBodyGyroscopeJerkMagnitudeMean
80. FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation
81. FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency