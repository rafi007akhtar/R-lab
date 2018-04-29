# R-lab

This repository goes through basics of R, exploring the key strengths of the language, while analyzing several datasets.

## Command-line tools
Run R-script from the console <br>
&emsp;`Rscript filename.r` <br>
Open R shell in the console <br> 
&emsp;`R` <br>
Open help for a function (1) <br>
&emsp;`help(functionName)` <br>
Open help for a function (2) <br>
&emsp;`?functionName` <br>
Show all the objects present in the workspace <br>
&emsp;`ls()` <br>
Input a string from user <br>
&emsp;`inp = readline(promt = "optional prompt text")` <br>
Cast into integer <br>
&emsp;`num = as.integer(inp)`


## R-basics
Download a package <br>
&emsp;`install.packages ("package_name")` <br>
Load a package into your script <br>
&emsp;`library (package_name)` <br>
Return the class of an object <br>
&emsp;`class(objectName)` <br>
Return the length of an object <br>
&emsp;`length(objectName)` <br>

## Dataset tools
Display all datasets available <br>
&emsp;`data()` <br>
Load a dataset <br>
&emsp;`data(DatasetName)` <br>
Return structure of a data-frame <br>
&emsp;`str(DatasetName)` <br>
Return the column names of a data-frame <br>
&emsp;`names(DatasetName)` <br>
View the first 6 entries of a data-frame <br>
&emsp;`head(DatasetName)` <br>
View the last 6 entries of a data-frame <br>
&emsp;`tail(DatasetName)` <br>
Access a column from a data-frame <br>
&emsp;`DatasetName$column_name`