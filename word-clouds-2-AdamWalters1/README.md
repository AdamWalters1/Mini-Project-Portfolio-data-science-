[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/H6ySGdX_)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-7f7980b617ed060a017424585567c406b6ee15c891e84e1186181d67ecf80aa0.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=13191888)
# Dealing with Word Clouds in R

## Introduction

Continuing from out previous Word Clouds 1 assignment, we'll start this off by importing text data from our `classNoMisS` dataset that we've been using for a while. We'll also import the packages from the last time. I would recommend that you copy and paste the code from the last assignment into this assignment. This will save you time and effort, and make sure that you don't have to install any packages that you already have installed.

## R Packages you'll need in order to complete this assignment

- `rio`
- `openxlsx`
- `readxl`
- `tm`
- `wordcloud`
- `colorRamps`

We don't necessarily need all of these packages, but they'll make our lives easier. Another reason is that some of these packages may not be able to be installed on your computer, so we'll have a backup plan.

If you can, I would recommend using the `rio` package. One of the main reasons is that we'll be importing data from an excel file, and we'll be importing multiple sheets from the excel file.

***NOTE:*** Check if your data imported correctly. You should have 61 observations and 43 variables.

## Begin Questions

In the previous, assignment we did not stem `corpS` before creating the TDM. We will continue without doing this for now.

A term by document matrix lists all unique terms in a corpus, and tabulates how many times each term was used per document. You created a term by document matrix by hand in for 2 documents earlier.

1. If there are 61 documents in `corpS`, how many columns should a term by document matirx have for `corpS`?
2. Use the function `TermDocumentMatrix()` to create a term by document matrix for your documents in the corpus, `corpS`.
3. Use `inspect()` on the term by document matrix to view the matrix. What do you notice about the matrix? What do you notice about the terms? What do you notice about the documents?
4. What is the "class" of the TDM?
5. Change the class of the TDM to a matrix using `as.matrix()`. Verify that the class has changed.
6. Look at the first document of the term by document matrix. What do you notice about the terms? What do you notice about the values?
7. Now, do the same for the 4 term in the document matrix.
8. How many terms were found in `corpS`?
9. How many documents were analyzed in `corpS`?
10. How many times did the word "data" appear in the in document 4?

## Summarize the structured, Term-by-document Matrix

With the term-by-document matrix, you have quantitative, structured data that you can summarize however you wish! For example, you would report the mode of words used; the top 5 words used; the average length of responses; and more.

11. Do a quick summary of the term-by-document matrix.
12. Find the frequency of the words in the document with a summary.
13. Show the the term usage in a histogram.
14. (Answer with code), what is the most frequently used word in the corpus?
15. Considering these documents were cleaned, what is the average length of them?

Note, the word that you just reported to answer the question above is NOT necessarily the word used in the most documents. Rather, the word you reported is the word used the most across documents.

## Summarize the data with a word cloud

Word clouds are artistic, visualizations of term frequencies from corpora. The visualizations can take any form and relies on the size of text to reflect term frequency; high frequency terms appear larger than low frequency terms. I.e., the more a term appears in a corpus, the larger it will appear in a cloud. Word clouds are easy to create (with software), easy to interpret, and can be aesthetically appealing. Two examples of word clouds appear below.

## Submission

You'll be submitting your assignment via GitHub Classroom. Make sure you've committed and pushed your local changes to your remote repo before the deadline. You must have ***AT LEAST 3 COMMITS*** when you submit your assignment.
