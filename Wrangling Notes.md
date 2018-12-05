

scrap_names.csv is a dummy file for testing join methods

TA_and_Student_IDs.csv is the file that maps student emails and TA names to their unique ID numbers.

http://www.unit-conversion.info/texttools/random-string-generator/

A random alphanumeric generator. Took 3 seconds to generate 10,000 non-repeating 8-character strings to use for random IDs.



unique.record
Sp18.00001
Sp18.00002


unique.record	Set each semester, adds unique ID per record
report.id
						sort (can drop)
report.title
						student (need to de-identify)
course
						ta (need to de-identify)
lab
						tag (student enters, but is incorrect)
type.TA
grade.TA
grading.time
						Rank (can drop)

hypothesis.ok
data.ok
citation.ok
interpretation.ok
organization.ok
techflaws.ok
writing.ok
comments.incorporated

ta.comment

code.subject
code.structure
code.locus
code.scope
code.tone
code.notes



















http://www.sthda.com/english/wiki/tidyr-crucial-step-reshaping-data-with-r-for-easier-analyses

gather()
Collapse multiple columns into key-value pairs. Collapse columns into rows.

spread()
Separate a set of key-value pairs into multiple columns. Spread rows into columns.



separate()
Separate one column into several at a defined character

unite()
Unite multiple columns into one using some kind of character to connect. Think connecting words in columns using "\_" to write snake\_case.


https://r4ds.had.co.nz/tidy-data.html



gather(data, key, value, ...)
	Data is the data frame
	Key, value are names of the two columns being used to create output.
	... specifies columns to gather. 
	
```
my_data2 <- gather(my_data,
                   key = "arrest_attribute",
                   value = "arrest_estimate",
                   -state)
my_data2
```
Sorry but key-value pairs is not making sense to me. 
	Is it that k/v pairs are not the strict two-part data structures I am thinking about from RDS, and more a way to think bout the data as it moves? Is the alternative way to think about it that first column is coming from the table header (key) and appropriate value for that row comes along? If so, then we can predict that for every data line, the anchor will be replicated one time for each key column.
	YES, the variable NAMES are what is referred to as the key column.



There are three interrelated rules which make a dataset tidy:

    Each variable must have its own column.
    Each observation must have its own row.
    Each value must have its own cell.

Use JOIN to take two separate tables of data and combine them. Use GATHER to reorganize existing data.


complete() takes a set of columns, and finds all unique combinations. It then ensures the original dataset contains all those values, filling in explicit NAs where necessary.

There’s one other important tool that you should know for working with missing values. Sometimes when a data source has primarily been used for data entry, missing values indicate that the previous value should be carried forward:

treatment <- tribble(
  ~ person,           ~ treatment, ~response,
  "Derrick Whitmore", 1,           7,
  NA,                 2,           10,
  NA,                 3,           9,
  "Katherine Burke",  1,           4
)

You can fill in these missing values with fill(). It takes a set of columns where you want missing values to be replaced by the most recent non-missing value (sometimes called last observation carried forward).

