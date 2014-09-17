###CodeBook for Course assignment in Getting and Cleaning Data

The raw data was provided in a not-so-raw form. For reference check the features_info.txt file given with the database.
Of the data provided all measurement that were not given as a pair mean-std were dropped.
The data was moreover averaged for every pair Subject-Activity to get a single line for every activity of every subject.

1 Subject: each of the subjects has been given a unique ID (1-30). Kept as it was from given data.
2 Activity: the coded activity has been transformed by giving a descriptive name to each level (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS).

The following 3 variables are the mean (over each pair Subject-Activity) of the mean of the body acceleration along each of the three axes as measured by the accelerometer.
3 Body Accelerometer mean X-axis (time)
4 Body Accelerometer mean Y-axis (time)
5 Body Accelerometer mean Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the standard deviation of the body acceleration along each of the three axes as measured by the accelerometer.
6 Body Accelerometer std X-axis (time)
7 Body Accelerometer std Y-axis (time)
8 Body Accelerometer std Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the mean of the gravity acceleration along each of the three axes as measured by the accelerometer.
9 Gravity Accelerometer mean X-axis (time)
10 Gravity Accelerometer mean Y-axis (time)
11 Gravity Accelerometer mean Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the standard deviation of the gravity acceleration along each of the three axes as measured by the accelerometer.
12 Gravity Accelerometer std X-axis (time)
13 Gravity Accelerometer std Y-axis (time)
14 Gravity Accelerometer std Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the mean of the body acceleration impulse (or jerk) along each of the three axes as measured by the accelerometer.
15 Body Accelerometer Jerk mean X-axis (time)
16 Body Accelerometer Jerk mean Y-axis (time)
17 Body Accelerometer Jerk mean Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the standard deviation of the body acceleration impulse (or jerk) along each of the three axes as measured by the accelerometer.
18 Body Accelerometer Jerk std X-axis (time)
19 Body Accelerometer Jerk std Y-axis (time)
20 Body Accelerometer Jerk std Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the mean of the body acceleration along each of the three axes as measured by the gyroscope.
21 Body Gyroscope mean X-axis (time)
22 Body Gyroscope mean Y-axis (time)
23 Body Gyroscope mean Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the standard deviation of the body acceleration along each of the three axes as measured by the gyroscope.
24 Body Gyroscope std X-axis (time)
25 Body Gyroscope std Y-axis (time)
26 Body Gyroscope std Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the mean of the body acceleration impulse (or jerk) along each of the three axes as measured by the gyroscope.
27 Body Gyroscope Jerk mean X-axis (time)
28 Body Gyroscope Jerk mean Y-axis (time)
29 Body Gyroscope Jerk mean Z-axis (time)

The following 3 variables are the mean (over each pair Subject-Activity) of the standard deviation of the body acceleration impulse (or jerk) along each of the three axes as measured by the gyroscope.
30 Body Gyroscope Jerk std X-axis (time)
31 Body Gyroscope Jerk std Y-axis (time)
32 Body Gyroscope Jerk std Z-axis (time)

The following variables are the mean (over each pair Subject-Activity) of the Euclidean norm (or magnitude) of the similarly named variables above.
33 Body Accelerometer Magnitude mean (time)
34 Body Accelerometer Magnitude std (time)
35 Gravity Accelerometer Magnitude mean (time)
36 Gravity Accelerometer Magnitude std (time)
37 Body Accelerometer Jerk Magnitude mean (time)
38 Body Accelerometer Jerk Magnitude std (time)
39 Body Gyroscope Magnitude mean (time)
40 Body Gyroscope Magnitude std (time)
41 Body Gyroscope Jerk Magnitude mean (time)
42 Body Gyroscope Jerk Magnitude std (time)

The following variables are the mean over each pair Subject-Activity of the Fourier Transform of the similarly named previous variables. Instead of having value in the time space, they assume values in the Fourier or frequency space.
43 Body Accelerometer mean X-axis (frequency)
44 Body Accelerometer mean Y-axis (frequency)
45 Body Accelerometer mean Z-axis (frequency)
46 Body Accelerometer std X-axis (frequency)
47 Body Accelerometer std Y-axis (frequency)
48 Body Accelerometer std Z-axis (frequency)
49 Body Accelerometer Jerk mean X-axis (frequency)
50 Body Accelerometer Jerk mean Y-axis (frequency)
51 Body Accelerometer Jerk mean Z-axis (frequency)
52 Body Accelerometer Jerk std X-axis (frequency)
53 Body Accelerometer Jerk std Y-axis (frequency)
54 Body Accelerometer Jerk std Z-axis (frequency)
55 Body Gyroscope mean X-axis (frequency)
56 Body Gyroscope mean Y-axis (frequency)
57 Body Gyroscope mean Z-axis (frequency)
58 Body Gyroscope std X-axis (frequency)
59 Body Gyroscope std Y-axis (frequency)
60 Body Gyroscope std Z-axis (frequency)
61 Body Accelerometer Magnitude mean (frequency)
62 Body Accelerometer Magnitude std (frequency)
63 Body Accelerometer Jerk Magnitude mean (frequency)
64 Body Accelerometer Jerk Magnitude std (frequency)
65 Body Gyroscope Magnitude mean (frequency)
66 Body Gyroscope Magnitude std (frequency)
67 Body Gyroscope Jerk Magnitude mean (frequency)
68 Body Gyroscope Jerk Magnitude std (frequency)
