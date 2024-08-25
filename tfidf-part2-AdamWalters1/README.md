[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/o9qQ8OS8)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-7f7980b617ed060a017424585567c406b6ee15c891e84e1186181d67ecf80aa0.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=13317176)
# Term Frequency - Inverse Document Frequency (TF-IDF) Part 2

![Assignment Meme](images/meme.jpg)

## Overview

This assignment finishes TFIDF Part 2 and is a continuation of Part 1. Use the code from the previous assignment to get started on and complete this one.

## Required Packages

You will need to install the following packages in order to complete this assignment:

- `tm`
- `SnowballC`
- `wordcloud`
- `RColorBrewer`
- `tidyverse`

Only 1 of the following packages is needed to import the data:

- `rio`
- `xlsx`
- `readxl`

## Assignment Instructions and Questions

1. Plot the frequency of words used in corpus G. Hint: you should see a Pareto distribution.
2. Make a word cloud of the words in corpus G.
3. Perform #1 and #2 again, but this time only for words that appear more than once. This time add color to the word cloud.
4. The relative size of words in this word cloud is based on what summary of the words?

We assume the following to interpret word clouds:
> *We assume that the terms used the most in a corpus conveys the overall theme(s) of topic(s) observed in the data.*
>

5. For a more succinct re-phrasing of the assumption, fill-in the blank:

> *We assume that word _________ reflects word relevance in the corpus.*
>

Making such an assumption can be helpful to complete analyses, but there are some disadvantages, depending on goals for analyses. For example, if one aims to complete an analysis to identify differences among documents, word-frequencies might not help. If words appear in all documents, raw term-frequencies will highlight common, not those that are discerning. However, by rescaling term-freqencies, as is done with TF-IDF (next section), discerning terms might be revealed.

### Term Frequency-Inverse Document Frequency (TF-IDF) Analysis

In some cases, term frequency (TF) is a poor measure of relevance. TF only considers how often words appear within individual documents; it doesn't consider the entire corpus. Whereas, TF-IDF does. TF-IDF effectively calibrates TF by how often terms appear across the entire corpus. That is, TF-IDF measures the relevance of words in documents, relative to the entire corpus. The intuition behind TF-IDF is to balance 1) TF within documents and 2) TF across all documents. Terms with high TF-IDF will appear a lot within only a few of documents; whereas terms with low TF-IDF either appear minimally within documents and/or appear in many documents. Though TF-IDF does not necessarily take into consideration the length of text documents, it can be applied in a way to do so. I.e., it can be applied to “normalize’ ’ TF-IDF measures so that words from short documents do not have more weight than words in long documents. In fact, default arguments for the function we will use in `R` to calculate TF-IDF measures, normalizes the measures
for us.

6. Create another term-by-document matrix, but rather than reporting TF in each cell of the matrix, we will report TF-IDF measures instead. Hint: use the `weightTfIdf()` function from the `tm` package.
7. Look at the entries in `tdGM` and those in `tfidf`. How are they generally different?
8. Using a scatterplot, compare entries in `tdGM` and `tfidf` visualy. NOTE: to make this plot, we *vectorize* the term-document matrices with `as.vector()`. Effectively, `as.vector()` stretches a matrix into one long column. This is necessary to plot the two matrices against each other.
9. What do you notice? As TF gets larger, what generally happens to TF-IDF measures?
10. In words, explain the trend (or lack thereof) you see in the scatterplot.
11. Make a word cloud of the `gains` variable using TF-IDF.

Recall that the functions `wordcloud` has arguments, including `min.freq`. Words that appear in a wordlcoud must have this frequency or higher. The default value for this argument is 3. Recall also that TF-IDF re-scales term frequencies.

12. Use the `summary()` function to assess what are typical values in `tfidfByWords`.
13. Based on the results from the `summary()` function, what is the problem with setting the argument, `min.freq` to 3, if any?
14. Change the default argument to create a useful word cloud fo rthe `gains` variable using TF-IDF.
15. How does you new word cloud compare to the one based on TF?

The following summaries could rely on TF or TF-IDF. Being the TF-IDF is typically a better measure of relevance, we will continue using TF-IDF.

16. What are the top 10 words that are most relevant in comparing documents in `corpG`?
17. Generate a boxplot fo the top 10 words.
18. To assess and compare the distribution of TF-IDF measures, consider boxplots of the top ten words. Of the top two words, which has the highest TF-IDF measure?

We have learned of two plots that can convey information in more than 3 variables easily. Parallel coordinate plots and MDS plots.

19. In this case, how many variables describe each document?
20. Create a parallel coordinate plot to summarize the foxuments using the top 10 words. Include some color.
21. What does each line represent in the parallel coordinate plot?
22. Make an insight from the data using the parallel coordinate plot.
23. Create an MDS plot using TF-IDF. Refer to a previous assignment for steps in creating an MDS plot. In this case, TF-IDF measures are normalized. Hence, arguably we do not need to scale them.
24. How do you interpret the MDS plot? What does each point represent?

### Ordering using relevance

- Remember, when a word has a high TF-IDF measure, it is assumed to be highly relevant to the corpus.
- Thus, we can order words from most to least relevant.
- Use the function `order()` to do so.

## Submission

You'll be submitting your assignment via GitHub Classroom. Make sure you've committed and pushed your local changes to your remote repo before the deadline. You must have ***AT LEAST 3 COMMITS*** when you submit your assignment.
