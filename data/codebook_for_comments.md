# Code Book for TA Comments on Lab Reports

We evaluating TAs’ comments on student reports to see if and how their comments change as students get more feedback from automated system. 

To build the initial data table, all reports containing TAs’ comments from a single semester were downloaded as MS Word documents. Files were processed using BaSH scripts to extract relevant file data (author, ID#, etc.) and individual TA comments from the raw XML, and write it to a single CSV file. TA comments containing multiple points or suggestions were replicated and edited to produce a working data table with only one comment per entry row. 

In the first semester, ~11,000 individual TA comments were extracted from student reports. Inclusion and exclusion criteria for assigning TA comments to categories and sub-categories was established iteratively using two training sets of 120 and 1200 comments selected randomly from the full dataset. Briefly, each main category (Subject, Structure, etc.) was divided into 4-8 loosely defined provisional sub-categories. Then each comment from the 120-item training set was assigned to a provisional sub-category within each category. Sub-categories were not mutually exclusive; for example, if a comment was assigned to the “Writing Quality” sub-category under the “Subject” category, that comment could be assigned to any of the \_#\_ provisional sub-categories in “Structure,” any of the \_#\_ sub-categories in “Locus,” etc.

When comments could not be assigned with high confidence to a provisional sub-category, the defining features of the provisional sub-categories were refined further and the previously assigned comments re-evaluated using the updated criteria, until all 120 comments in the training set could be assigned reliably. 

Once stable sub-categories were established, examples of TA comments belonging to each sub-category were extracted from the main dataset and combined with finalized criteria to form a working code scheme. The working code scheme was tested and refined again by categorizing the second training set of 1200 comments, to produce the final coding scheme. 

To score the full data table, the 1200 scored training comments were rejoined with the unscored comments, and all comments alphabetized. This step distributed scored comments randomly within the larger data table, and allowed us to identify any comments which had been duplicated. We used this integrated set to score the full set of ~12,000 comments.


## Subject Category

Is primary emphasis of the comment on:

*  Fundamental pieces
*  How to communicate generally?
*  How to collect, analyze and present data correctly?
*  The underlying rationale for the report/experiment?
*  Other issues?

Below are the choices for identifying the subject of the comment. Criteria for basic, technical, and writing choices are the same as used in the report grading rubric. To simplify sorting, administrative tags used to mark comments for further processing are included in this category.

**code.subject**

/1. Basic Criteria. Relates to 1 or more of 5 basic criteria
/2. Writing Quality. Relates to writing mechanics, quality
/3. Technical and Scientific. Relates to a technical element
/4. Logic and Thinking. Focuses on logic and argument
/5. Praise or Concern. Statements directly to student, either positive or negative
/6. Misconduct. Focuses on plagiarism, academic misconduct issue
/7. Policy, Administrative. Reiterates a standing class or course policy
/8. No basis to judge. Cannot tell from text or context what comment means.
/9. SPLIT. If 2+ comments are together, duplicate line, split it, then annotate
/10. CHECK CONTEXT. Go back and look at original document, then re-code
/11. FLAG. Comment is inappropriate or erroneous
/12. Narrative Comments. 

Null. Used to reset a previously tagged comment
Scientific Name. 
Other. Comment does not meet any of above criteria


### Subcategories with Examples
####Null
Resets comment

####1. Basic Criteria

Establish whether report is ready for grading, or unacceptably flawed. Comments in this category focus on the 5 basic requirements that ALL scientific writing must meet, plus the academic honesty requirement. Includes all comments about:

*  Written work represents the student’s own scientific research or work; not copied.
*  There is a clear rationale, hypothesis, or purpose of the study PRESENT (quality is scored later.)
*  Written work is complete, appropriately organized for audience, and all essential elements are present.
*  Summarized data are PRESENT. Data have been analyzed in some way.
*  There is an interpretation of the results.
*  Discussion states clearly whether or not hypothesis is supported and why.
*  Study is based within a larger body of literature; citations in Introduction, Discussion.

####2. Writing Quality

Comments in this category focus on written communication issues, including general conventions of scientific writing as a genre. Includes all comments on:

*  Writing style is appropriate for the target audience.
*  Style, format, organization of writing matches the expectations of a scientific audience.
*  Clear, concise wording.
*  Precise language appropriate to scientific audience.
*  Technically presented; avoids casual, imprecise, emotional language.
*  Written work is free of major writing errors (spelling, grammar, punctuation.)
*  Citations are presented consistently and professionally throughout the text and in the list of works cited section.
*  Citations are presented consistently, professionally in text and Works Cited section.
*  Comments about the following belong here.
>*  Repeated info 
>*  Errors in referencing figures, tables
>*  Word choice generally (not tech. vocab.)
>*  Extraneous information
>*  “Include a sentence about…”
>*  What goes in which sections
>*  HTML code-based errors are writing quality pointers (should catch in general editing)
>*  General to specific

####3. Technical and Scientific Issues

Comments in this category focus on whether: methods are communicated clearly and correctly; data and analyses are clear, appropriate, accurate, and unbiased; and mechanics specific to technical writing and data presentation are executed correctly. Includes all comments such as:

*  Methods are appropriately defined and explained, given the student’s research question.
*  The data analysis is clear, appropriate, accurate and unbiased.
*  Statistical summaries are executed, interpreted, and reported correctly.
*  Data are summarized, reported, displayed correctly.
*  Tables and figures are clear, effective, and informative.
*  Errors in interpreting data belong here, not in Logic.
*  Numbers and units
*  Reporting raw data
*  Why the particular study organism goes here.
*  Corrections to:
>*  Use of technical terms
>*  Factual information
>*  Prove vs. support goes here.

####4. Logic and Thinking

This is not part of our lab report grading model currently, but still important to assess. Comments tagged with this subject focus on: 1) quality, accuracy of claim-evidence-reasoning chain; 2) use of hypothetico-deductive reasoning model; 3) consistency of arguments with internal, external evidence. 

Includes all comments about:

*  Written work clearly articulates the student’s thinking regarding research goals.
*  Research question is clear.
*  Rationale, background for research question is clear.
*  Work is placed in context of RELEVANT scientific literature.
*  Cited literature support, develop a larger argument.
*  Statement of hypothesis is clear, appropriately organized.
*  Written work is logically consistent.
*  Student’s thought process about how parts connect is clear.
*  Logic that connects the arguments and conclusions is sound, clear.
*  All parts contribute to understanding outcomes. No distracting arguments.
*  Written work interprets the results skillfully, conservatively.
*  Implications of the findings are placed in a reasonable context.
*  Strong, integrated ending goes here, BUT if comment is about language rather than thinking, goes under Writing.

“Include a sentence about...” can be categorized many ways. Most often will be general writing, but could be logic or technical.

### Other Sub-Categories
These miscellaneous categories are for comments that do not fit in one of the prior groups.

####5. Praise or Concern. 
General comment focused on student mindset more than text.

####6. Misconduct. 
Comment is about plagiarism, fabrication, falsification, or similar issue.

####7. Policy & Administrative. 
Comment reiterates a general policy, administrative or class management issue.

####8. No basis to judge. 
Cannot categorize.

####9. SPLIT. 
This is a note to me saying there are multiple comments in one. I will need to split before scoring individually.

####10. CHECK CONTEXT. 
I need to go back to original report and check context of comment before scoring.

####11. FLAG. 
Comment is not appropriate for some reason. Includes factual errors, non-standard policies, deviations from requirements of instructors.

####12. Other. 
Does not fit any of the standard subjects.


##Structure of the Comment
Is the comment idiomatic or informative? Is there general or specific information contained in comment? Is it instructional only, or does the comment foster broader thinking?

**code.structure**

*  Pointer
*  Copy Correction
*  General info
*  Specific info
*  Rationale
*  Holistic
*  Idiomatic
*  No basis to judge
*  (Blanks)


### Subcategories with Examples

####Null
Resets comment

####Pointer
Simple notation indicating there is an error, or that a correction is needed

*  ??
*  Misspelling, typo, format, check, etc.
*  *Repeated phrase. (Only points to immediate error; compare to below)

####Copy correction
Comment provides specific instructions for correcting or modifying copy in ONE SPECIFIC location, but does not address the logic or reason.

*  Stylistic corrections, word choices
>*  An apostrophe makes this a possessive noun, not a plural one. 
>*  Colloquial (word choice) (but no explanation)
>*  No direct quotes. Paraphrase.
>*  Always capitalize “P”
>*  Use this particular wording
*  Instructions to add or delete a word, phrase, image, element
>*  Omit/delete/remove \_.
>*  Add \_(description)\_. 
>*  Unnecessary/ redundant
>*  Provide specific data or information this way (p value, statistical tests, etc.)
>*  Add/remove error bars
*  Citations and cross-references
>*  Include a citation here. OR, This must be cited.
>*  Citation format OR Citation format is [last name for first author : year]
>*  Instructions on correcting a single SPECIFIC citation directly
>*  Refer to this figure, table, etc. 
*  Not true (corrects error of fact without further information.)
*  Delete this repeated phrase. (Specific change to make.)

####General info
Shares GENERAL instructions or knowledge, but has no guidance on where specific changes are needed or how to apply, and offers no underlying rationale. 

*  For your lab report you should be concise and straight forward. 
*  Just include the relevant information.
*  Some sections are missing (not clear which ones)
*  Ambiguous, awkward
*  Rewrite this/ condense this/ avoid this word or term generally
*  Avoid repeating phrases. (More instructive than above but not specific)
*  Tense, voice rules in general go in this group
>*  Methods should be past tense
*  General corrections to citations, references without providing specifics
>*  Use citation style in lab resource guide, & like was on the writing quiz.
>*  See p.42 in the BioCore Resource Guide for correct in-text citation format 
>*  Need citations IN THIS SECTION (specific when points to spot IN A section)
>*  Reference your figures and tables.
*  Raw data (is specific only if provides additional context.)
*  Avoid recipe style (with no further explanation)
*  Numbers need units
*  What about statistics?
*  Comment on using loaded words: prove, significant, 

####Specific info
Provides SPECIFIC corrective info/context, lacks a starting point for broader thinking.

*  Provides clear organization for whole section.
>*  Put x, then y, then z.
*  Defines larger specific changes in text.
>*  At the end of the discussion indicate possible implications of your experiment at a broader scale
>*  Did not say if hypothesis was supported (specific b/c of content, context)
>*  Add this missing section; you are missing the _ section. 
>*  \_Section\_ should contain \_x\_.
>*  Move/add \_ to BEFORE/AFTER \_ .  
>*  What does “X” (error bars) mean? (simple interpretation) 
>*  Clarify this step in procedure or analysis
>*  Move a specific table of data to text, or vice versa.
>*  Do not interpret your results in Results section (specific b/c of guidance)
>*  You need to explain \_ better. (More specific instructions that just “awkward” or “revise”. 
*  Avoid repeating phrases. Change the order, make it nicer to read. (Clear way to implement instructions, relative to two examples above, but does not invite deeper thought.)
*  You should try to paraphrase anything more than 2-3 words, although if it is an incredibly common phrase, you can use it without fear of plagiarism. 
*  This specific citation is not relevant to your argument/ point.
*  Avoid recipe style. Look at other articles to see how they did it.
*  Corrections to data presentation
>*  Raw data. Need to summarize.
>*  These numbers need units or additional information.
*  Not true. Look in \_x\_ to learn more. (Provides a source for details)

####Rationale
Question/statement that prompts for, points to, or guides thinking, but lacks any context. May be uncommon.

*  Why, when, how? What is your reasoning?

####Holistic – specific
Comment has BOTH specific knowledge/info and guidance/rationale that invites thinking. (Specific sources or information (what) plus invitation to think (why))

*  Did you mean for each leg before and after the injection?
*  What is this in the moth life cycle?
*  Are you sure it is the correct tense for this section? Check with other primary lit.
*  Any primary literature sources ( articles) that deal with interspecific interactions in betta fish? It would be very useful to cite and talk about those here, if there are.

####Holistic – general
Provides BOTH general knowledge/info and guidance/rationale. More open ended, will require deeper thought. (General information to guide thought (what) plus invitation to think (why)). Expect these to be most challenging to write and to respond to.

*  Why is this a helpful species to study?

####Idiomatic
Points out discipline-dependent or personally idiomatic issues we do not grade on. Includes personal preferences, outlier issues, comments about italics, underlines, etc.

*  Always use correct format for scientific names, i.e., italicize or underline. 
(Idiomatic because not required in our grading scheme. Incidentally, this is not accurate form either, which is one answer to ongoing arguments.)
*  You provided both scientific and common names for your plant species, so can use common names throughout the rest of the report including the title and abstract. Revise accordingly. (Idiomatic because this is not standard to all fields)


Contingency Table For Holistic Scores
Scores need to have BOTH information and process (what and why) to be holistic

Level of Information Provided ("what" part of comment)|Process ("why" or “thinking” part of comment)|. 
-------------|-------------|-------------
 |Absent|Present
Limited or None|Idiomatic, Pointer, Null|Rationale 
General|General info|Holistic - general
Specific|Specific info|Holistic - specific


####Example of How to Parse a Comment
**Original TA comment:**
Ah, so it didn’t move directly towards the Physarum. Here it’s important to make that distinction in how you took measurements in your methods section. Did you go based on leading edge? If so, this data point would probably be inconclusive in the results section. Did you go based on a central axis upon which you took measurements? Instead, that’d be different.

There are two questions in the comment, which suggests that it is a holistic comment to pull knowledge out through thinking. However, the TA comment provides some interpretation in the next sentence. So this comment is seeking or providing specific information, while also directly fostering student’s deeper thinking. It would be tagged as “Holistic - Specific.” 

If the comment had not provided so much information, and only asked general questions to guide thinking, it would have been “Holistic – General.”


##Locus Category
Focuses on locus of control. Is TA source of knowledge, or must student reflect on issues to develop answers? May be able to drop if categorization does not prove informative.

**code.locus**

*  Corrective
*  Directive
*  Explanatory
*  Neutral
*  Reflective
*  (Blanks)


###Subcategories with Examples

####Null 
Resets comment

####Corrective 
Provides correction directly. External locus.

*  Your explanation was not specific enough
*  Do not repeat details in two sections
*  Cite literature in the name year format
*  Add a citation
*  Remove this paragraph
*  Fix this word, typo, grammar, spelling, ANALYSIS

####Directive 
Provides information. External locus.

*  Use a more scientific tone
*  Add more background
*  Reorganize, shorten, explain differently
*  Do not interpret just yet
*  When writing X, think about Y, and pick Z.
*  Try to…
*  Summarize, explain, 
*  Suggest, recommend

####Explanatory 
Rationale or reasons for changes. External locus.

*  Source “X” says do “Y” because of “Z”
*  When I write \_, I \_.
*  I like your report/section/changes/part of report because \_.

####Reflective
Asks thought-provoking questions. Internal locus.

*  Ask yourself “why” and “how” to help yourself out.
*  What was your point with this statement?
*  Think about…

####Neutral
No obvious locus.

*  Copy edits like “And that”
*  CLARIFICATION QUESTIONS


##Scope Category
This is about whether comment links current report to prior work, future work, or student's prior drafts or versions. Look for references to other papers, comparisons, or statements that clearly indicate a comparison between two states, or provides clear indication that information should carry forward.

Focus on whether comment makes the link explicitly. Is there a clear intent for student to look at improvement or changes across more than one assignment? 

Looks not to be very informative currently, but MAY be important as project expands.

**code.scope**

*  Within Report
*  Beyond Report
*  Specific Location
*  No basis to judge
*  (Blanks)

###Subcategories with Examples

####Null
Resets comment, or marks for review

####Within Report
Comment is generally relevant to larger section or the whole report

*  Your explanation here was not specific enough
*  This citation needs to be in a different format.
*  You need to clean up your writing throughout the body of the lab report.
*  There are a lot of run-on sentences, which is usually a symptom of trying to sound scientific. Keep your language and sentence structure simple.
*  You reported raw data

####Beyond Report
Comment has guidance intended to be applied beyond current report

*  When you revise your abstract, think of it as a summary of all of your sections of your lab report. Pick the most important things from your methods, results, and discussions and put it in there. 
*  I like this version of your figures much better than in the initial submission.
*  This is a better draft than your first report.

####No basis to judge

*  D
*  D
 
##Tone Category
Does comment aim to build students' confidence in their own abilities?

**code.tone**

*  Neutral
*  Positive
*  Negative-no warning
*  Negative-reasonable
*  Negative-unprofessional
*  No basis to judge
*  FLAG
*  (Blanks)


####Subcategories with Examples

####Null
Resets comment

####Positive
Tone is positive, fosters confidence

*  I like this section.

####Neutral
No obvious affective tone. Should be majority

*  Use a more scientific tone
*  Your explanation was not specific enough
*  You are missing citations
*  Most one-word comments

####Negative-reasonable
Tone is negative; may erode confidence, but is valid

*  You are missing citations, which the Guide says earns a failing grade.

####Negative-no warning
Comment has no prior context or warnings
*  Stop writing citations this way!
*  Your discussion would have been stronger if you had actually used primary literature (unprofessional?)

####Negative-unprofessional
Tag for improper language, etc. Should be rare.

*  I told everyone repeatedly to STOP using web sources! (student made error, but whole class is blamed)
*  WTF?

####No basis to judge
Unlikely to see this


####FLAG
Used to identify comments for students to evaluate in a survey for clarity, tone.
*  



**code.notes**

*  String. Miscellaneous notes.



##Procedure for Analyzing Comments

1.	Search the comments for the word “also” as an indicator of comments to split.
2.	Alphabetize comments to join similarly worded phrases
3.	Search for keywords

##Draft Keywords 
\1. Basic criteria

*  Basic requirement
*  Criteria
*  Fail

Secondary

*  Introduction
*  Methods
*  Results
*  Discussion
*  Citation
*  Good, great, super, well done, amazing,
*  Bummer
*  Improved
*  Plagiarized, plagiarism, copied,
*  Quote, quoted
*  Resource Guide, Guide, Sakai, SAWHET, online


\2. Writing quality comments


\3. Technical and scientific comments


\4. Logic and Thinking

*  Cite, citation, source, refer, reference, primary, lit, article, literature
*  Flow
*  Read, reader, audience
*  Say, Saying
*  Author, Year
*  Refer
*  Capitalize
*  Format
*  Move
*  Ambiguous
*  Avoid
*  Introduction
*  Noun, verb, adverb, possessive, tense, singular, plural
*  Concise
*  Repeat
*  Correct
*  General 
*  Colloquial, informal, quote, paraphrase
*  Phrase
*  Interpretation
*  Overuse
*  Recipe
*  Section
*  Scientific

Secondary

*  Introduction
*  Methods
*  Results
*  Discussion*  
*  Cite, citation, source, refer, reference, primary, lit, article, literature
*  Any statistics-related term: mean, average, S.D., error, 
*  Number formats, units
*  References to figures or tables: legend, caption, axis
*  Figure, table
*  Term

Secondary

*  xx
*  Logic
*  Think, thinking
*  Rationale
*  Claim
*  Evidence
*  Reasoning
*  Interpret, interpretation
*  Argument

Secondary

*  xx


\5. Praise or Concern


\6. Misconduct


\7. Policy, Administrative


\8. No Basis to Judge

\9. SPLIT

*  Also (first word in sentence)

\10. Check Context


\11. FLAG / Inappropriate



### How a Comment Moves Between Categories

Pointer or Copy Correction|General|Specific|Holistic
-------|-------|-------|-------
Add \_ |||
Delete \__ |||
|Rewrite this|Move \_x\_ to \_y\_. Add \_x\_ to \_y\_.
Repeated|Avoid repeated phrase|Avoid repeating phrase. Change order to make easier to read|Is there a reason to repeat this phrase? If not, what would make it easier to read?
Citation format is \__ |||
(p) ??|Unclear |Need to explain \_x\_ better.|What is connection b/w \_x\_ and \_y\_?
(p) Tense|Methods are past tense|This sentence should be past tense|What is tense for this section in papers we read?


 
## Procedure for Analyzing Comments
\1.	Search the comments for the word “also” as an indicator of comments to split.
\2.	Alphabetize comments to join similarly worded phrases
\3.	Search for keywords


## Draft Keywords 

\1. Basic criteria

\5. Praise or Concern

\6. Misconduct


\7. Policy, Administrative

*  Basic requirement
*  Criteria
*  Fail

Secondary

*  Introduction
*  Methods
*  Results
*  Discussion
*  Citation
*  Good, great, super, well done, amazing,
*  Bummer, 
*  Improved
*  Plagiarized, plagiarism, copied,
*  Quote, quoted
*  Resource Guide, Guide, Sakai, SAWHET, online


\2. Writing quality comments


\3. Technical and scientific comments


\4. Logic and Thinking

*  Cite, citation, source, refer, reference, primary, lit, article, literature
*  Flow
*  Read, reader, audience
*  Say, Saying
*  Author, Year
*  Refer
*  Capitalize
*  Format
*  Move
*  Ambiguous
*  Avoid
*  Introduction
*  Noun, verb, adverb, possessive, tense, singular, plural
*  Concise
*  Repeat
*  Correct
*  General 
*  Colloquial, informal, quote, paraphrase
*  Phrase
*  Interpretation
*  Overuse
*  Recipe
*  Section
*  Scientific

Secondary

*  Introduction
*  Methods
*  Results
*  Discussion  
*  Cite, citation, source, refer, reference, primary, lit, article, literature
*  Any statistics-related term: mean, average, S.D., error, 
*  Number formats, units
*  References to figures or tables: legend, caption, axis
*  Figure, table
*  Term

Secondary

*  Term
*  Logic
*  Think, thinking
*  Rationale
*  Claim
*  Evidence
*  Reasoning
*  Interpret, interpretation
*  Argument

Secondary

*  Term

\8. No Basis to Judge

\9. SPLIT

*  Also (first word in sentence)

\10. Check Context

\11. FLAG / Inappropriate



