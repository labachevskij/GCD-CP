### This is the Readme.md file for the Course assignment in Getting and Cleaning Data

This file is to provide some general information about the script
run_analysis.R and the additional CodeBook.md file.

The second one is the Codebook for this data analysis and contains the
variable names together with the number of the column they are in into
the new_mer_dat tbl object returned by the code.

The first one is the file containing the code that analyses the data provided.
The code is extensively commented, but we give here some more details.

The code assumes that the data is in the same folder, into a subfolder
named "UCI HAR Dataset" with subfolder tree as provided by the
project. The working directory should be specified before sourcing the
R file.

The code requires the package "dplyr" to be installed, but will load
it itself.

First of all the code imports the data from the training group, first
the IDs of the subjects, then the IDs of the activities and finally
the measurements. Each piece is bound on the right of the preexisting
dataframe.
The same is then done for the test group.
The two groups are then merged together, pasting the second one below
the first one through rbind

The first two columns are renamed with more descriptive labels.

Then we are requested to keep only those variables that are means or
standard deviations of measurements. To do this we take advantage of
the codebook features.txt and through grep we select only those
columns that satisfy our requirements.

While we have the full dataframe and the features data, we start
working on the relabeling of the variables, extracting the names of
the variables of interest from the feature.txt file.

To complete the second requirement of the project, we save in a new
dataframe those columns we have selected as interesting.

We now relable the activities, using a for loop and the data in
activity_labels.txt.

We started working on point 4, but is not yet finished. Through gsub
and regular expression we manipulate the labels, in order to make them
more human readable.

There is only point 5 left. To do this we use functions from the dplyr
package loaded above. In particular we export our dataframe as a tbl
object, group the data by subject and activity and (through
summarise_each) compute the mean of every other variable. The result
is then saved to a txt file and prompted onscreen (being a big table
it is not going to fit into the screen).

EOF
