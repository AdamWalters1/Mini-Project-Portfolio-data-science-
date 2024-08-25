[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/omDh67kt)
# Pixel Image Analysis 4

## Required Libraries

- `imager`
- `rio` (or some other package to import Excel files)

## Assignment

Before beginning this assignment, it is important to copy over the code from `pixel-analysis-3` into a new R Markdown file. This will allow you to build off of the previous assignment and continue to work on the same project.

### Create an MDS plot of the animal images

As you recall, MDS requires quantitative data. The data created in the previous section is already quantitative. This leaves the remaining steps to plot the images using mds. Refer to previous labs for MDS details.

1. Create an MDS plot of the animal images from the data you have modified thus far, make sure each point is labeled with the name of the animal.
2. What do you notice about the MDS plot? How would you interpret the plot.
3. Select two animals that are similar relative to two animals that are different based on your assessment of the plot. Plot the images for these animals or open them directly.
4. Do you agree that they are actually similar or different? Explain your answer.
5. Recall, we are assessing similarities in images based on RGB color intensities. Do you think the MDS would change if we only rely on the intensity of one color? Red, Green, or Blue? Explain your answer.
6. Using the skills you have demonstrated thus far, create an MDS plot that is based only on the blue intensities. 
7. List two animals that are more similar to each other than two other animals when considering blue in their images. 

There is so much that you can do to explore the images, now that you have the image data in structured form. E.g., you could cluster; you could tag the images label the points by tags; etc. If you opt to use image data for your project, consider more ways to explore the data.

### Create an MDS plot from the hokies dataset

8. Change the code you wrote previously to explore the images of hokie birds via MDS. The images are stored in the folder `hokiesRgb`. 
9. Write at least one insight you learn from the MDS of the hokie images. 
10. The MDS of the hokie images should reveal clusters. What feature in the images do you notice that might be related to at least one cluster? To answer this question you need to look at the images either in R or directly.