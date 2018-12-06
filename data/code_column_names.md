#Data Files: 
  coded_full_comments_dataset_Spring18.xlsx  
  
  coded_full_comments_dataset_Spring18.csv

Column Number|Column Name
---|----------------------
1|unique.record
2|report.id
3|sort
4|report.title
5|student
6|course
7|ta
8|lab
9|tag
10|type.TA
11|grade.TA
12|grading.time
13|Rank
14|hypothesis.ok
15|data.ok
16|citation.ok
17|interpretation.ok
18|organization.ok
19|techflaws.ok
20|writing.ok
21|comments.incorporated
22|ta.comment
23|code.subject
24|code.structure
25|code.locus
26|code.scope
27|code.tone
28|code.notes

##Data are tabulated as follows:

Name_of_column  
	Data type. Brief description of data shown.
		If appropriate, specific categories
=====

unique.record  
	String. Unique identifier for each record, assigned as part of data collection and processing.

report.id  
	String. Identifying number of the report from which comments, metadata were extracted

sort  
	Integer. Leftover from initial analysis

report.title  
	String. Name of original source file used for extraction

student  
	String. Email address of student author of the report. Confidential data to de-identify.

course  
	Categorical.   
		113  
		114  
		214  
		NA  

ta  
	Categorical, string. Name of TA. Confidential data to de-identify.

lab  
	Categorical, string. Topic of report  
		allocation   
		betta 
		frog  
		manduca  
		photosynthesis  
		physarum  
		NA  

tag  
	Categorical, factor, string. First or second report of semester.  
		first  
		second  
		NA  

type.TA  
	Categorical, factor, string. Report was submission or revision.  
		Submission  
		Revision  
		NA  

grade.TA  
	Categorical, factor, string. Report's letter grade/bin.  
		A  
		B  
		C  
		D  
		F  
		NA  

grading.time  
	Continuous, integer. Likely inaccurate; TAs' self-report.  

Rank  
	Integer. Leftover from initial analysis  


**Basic Criteria**  

hypothesis.ok  
	Categorical, string. Did report have hypothesis?  
		No  
		Yes  
		NA  
		(Blank)  

data.ok  
	Categorical, string. Did report have summarized data?  
		No  
		Yes  
		NA  
		(Blank)  

citation.ok  
	Categorical, string. Did report have citations as required?  
		No  
		Yes  
		NA  
		(Blank)  

interpretation.ok  
	Categorical, string. Did report have data interpretation?  
		No  
		Yes  
		NA  
		(Blank)  

organization.ok  
	Categorical, string. Did report have proper organization?  
		No  
		Yes  
		NA  
		(Blank)  


**Complex Criteria**

techflaws.ok  
	Categorical, string. Yes means no technical flaws present.  
		No  
		Yes  
		NA  
		(Blank)  

writing.ok  
	Categorical, string. Yes means no writing flaws present.  
		No  
		Yes  
		NA  
		(Blank)  

comments.incorporated  
	Categorical, string. Did student incorporate comments? Probably incomplete.  
		No  
		Somewhat  
		Yes  
		NA  
		(Blank)  


**Data**

ta.comment
	String. Text of comment TA made.


**Coding**

code.subject  
	Categorical, string. What is main subject of comment?  
		1. Basic Criteria  
		2. Writing Quality  
		3. Technical and Scientific  
		4. Logic and Thinking  
		5. Praise or Concern  
		6. Misconduct  
		7. Policy, Administrative  
		8. No basis to judge  
		9. SPLIT  
		10.   
		11. FLAG  
		12. Narrative Comments  
		Scientific Name  

code.structure  
	Categorical, string. What is form of comment?  
		Pointer  
		Copy Correction  
		Specific info  
		General info  
		Holistic  
		Idiomatic  
		No basis to judge  
		(Blanks)  

code.locus  
	Categorical, string. How broad is comment?  
		Corrective  
		Directive  
		Explanatory  
		Neutral  
		Reflective  
		(Blanks)  

code.scope  
	Categorical, string. Is comment applicable beyond report?  
		Within Report  
		Beyond Report  
		Specific Location  
		No basis to judge  
		(Blanks)  

code.tone  
	Categorical, string. Is the tone of the comment appropriate?  
		Neutral  
		Positive  
		Negative-no warning  
		Negative-reasonable  
		Negative-unprofessional  
		No basis to judge  
		FLAG  
		(Blanks)  

code.notes  
	String. Miscellaneous notes.  


