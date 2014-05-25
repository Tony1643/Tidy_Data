#A script to prepare a tidy data set #

## from accelerometer measurements on the Samsung Galaxy S smartphone ##

The R script, *run_analysis.R*, prepares a tidy data set. The base data is set up as follows:

1. A file of features, *features.text*, is read into the **data table** *features*  
2. Exercise activities such as Walking are listed in activity_labels.txt. These are read into a **data table**, *activity.labels*.
3. Test subject measurements are read into data frame, x.test
4. Appropriate column names are prepared by using **gsub** to strip out the following characters from the feature names: **(**,  **)**, **-**, and **.**
5. Test subject activities are read into data frame,* y.test*
6. Test subject id's are read into *subject.test*   
7. The data table test.data is created from the columns of *subject.test*, *x.test*, *x.test*
8. Steps 3 to 7 are repeated for the training group measurements to create *train.data*

Thus two data tables are created, each with the same number of columns and each with activity id's and subject id's attached. These are combined by rows using **rbind** to create a single table of results called *samsung.data*

The levels of the factor *activity.id* are 1, 2, 3, etc. These are replaced by more descriptive levels using the **levels** function.

Now, the key step is to just use columns that are means or standard deviations. This is accomplished using **grep** on the column names of *samsung.data*; selecting only those columns with *mean* or *std* in their name.

The plyr function ddply is now used to apply the colmeans function to all the columns of samsung.data other than the first two, which have the activity and subject id's.