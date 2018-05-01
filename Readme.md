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
### Objects, Vectors and Classes
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
&emsp;`table(seq)` <br>
Return the index of the lexical minimum of a vector <br>
&emsp;`which.min(vector_name)` <br>
Return the index of lexical maximum of a vector <br>
&emsp;`which.max(vector_name)` <br>


### Sort, Order, and Rank
Return sorted vector <br>
&emsp;`sort(vector_name)` <br>
Return the vector containing indices required to sort the vector <br>
&emsp;`order(vector_name)` <br>
Return the indices of vector items where they appear in the sorted list <br>
&emsp;`rank(vector_name)` <br>
To illustrate these concepts, consider the following example.
<table>
    <thead>
        <th>items</th>
        <th>sort(items)</th>
        <th>order(items)</th>
        <th>rank(items)</th>
    </thead>
    <tr>
        <td>31</td>
        <td>4</td>
        <td>2</td>
        <td>3</td>
    </tr>
    <tr>
        <td>4</td>
        <td>15</td>
        <td>3</td>
        <td>1</td>
    </tr>
    <tr>
        <td>15</td>
        <td>31</td>
        <td>1</td>
        <td>2</td>
    </tr>
    <tr>
        <td>92</td>
        <td>65</td>
        <td>5</td>
        <td>5</td>
    </tr>
    <tr>
        <td>65</td>
        <td>92</td>
        <td>4</td>
        <td>4</td>
    </tr>
</table>

**Note.** Indexing in R begins from 1.


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
Return a new data-frame (table) with columns `col1`, `col2`, `col3` (extendible to more or less columns) <br>
&emsp; `data.frame (col_name_1=col1, col_name_2=col2, col_name_3=col3)` <br>
Retrieve indices from a dataset containing NA's; returns a list with TRUE for positions having an NA and false otherwise <br>
&emsp;`is.na(dataset_name)`
