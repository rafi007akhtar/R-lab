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
Return `TRUE` if two objects are identical; `FALSE` otherwise <br>
&emsp;`identical (object1, object2)` <br>
Create a vector or sequence or array with 3 entries (replace entries with values or variables; extendible to less or more number of entries)<br>
&emsp;`vec = c(entry1, entry2, entry3)` <br>
Create a vector with integers from n to m <br>
&emsp; `n:m # one way do to it` <br>
&emsp; `seq(n,m) # another way do to it` <br>
&emsp; `seq(n,m,jump) # increment elements by a factor of jump` <br>
&emsp; `seq(n,m,length.out=l) # evenly spread out elements between n and m containing l elements incrementing by the same amount` <br>
Access elements of a vector <br>
&emsp; `vec[n] # access element number n` <br>
&emsp; `vec[c(n,m)] # access elements number n and m; extensible to more number of elements; can be accessed using other multi-vector indices mentioned above` <br>
&emsp; `vec["name"] # access value of a table with name specified` <br>
Return a table with frequency of each entry in a vector <br>
&emsp;`table(seq)`

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
Access a column from a data-frame (1) <br>
&emsp;`DatasetName$column_name` <br>
Access a column from a data-frame (2) <br>
&emsp;`DatasetName[["column_name"]]` <br>
