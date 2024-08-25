# Image Analysis 4

1. Make a data frame of the clusters to summarize them via parallel coordinates.
2. Generate a parallel coordinate plot of the clusters with various colors that you can use to compare the clusters.
3. What do you notice in the parallel coordinate plot? For example, choose at least one cluster and explain how it differs from others, as presented by the parallel plot. Cluster 4 is uniquely high at V5 and V6, while the other clusters are low there. 
4. Create another summary of the data to explain/show differences in the clusters. Describe the summary you chose. I chose to do a summary of the centers.
5. Based on this summary, what insight can you make about the clustered data?
none of the images include food, and there are very few children to be seen.

Use multidimensional scaling (MDS) to potentially identify outlier images. Recall the process for MDS

1. Scale the data
2. Calculate the pairwise distances from the scaled data.
3. Use `cmdscale()` to perform MDS on the pairwise distances.

However, similar to K-means the data are already on the same scale.  Thus, *we can skip step 1*.  Also, the data are not quite quantitative.  The variables only include 0s and 1s.  Thus, the default distance function might not be appropriate.  When all variables are 0/1 variables (i.e., `Bernoulli` or `binary` variables), we use the distance measure "binary" or "gower".  

4. Scale the data in preparation for an MDS Plot
5. Use `cmdscale()` to perform MDS on the pairwise distances.
6. Generate the an MDS plot with standard functions as we have used in the past.
7. Make a new MDS plot, but this time with the method being `binary`.
8. Based on the last MDS (with the new distance measure), do you see any outliers from the entire dataset? The cluster in the top right is comprised of just 2 images, both of which are far from eachother. 
9. Are there any images that fall between clusters or seem to be misplaced? That is, often observations fall on the boundaries of clusters, thus their classification is arguably ambiguous when visually assessed. Yes, thereare 2 images in the top right that are right next to eachother, but fall into different clusters.
10. Use your programming and problem solving skills to figure out the ID of an image that falls near the boundaries of two clusters, as well as the index for clusters between which the image falls. Look at the image and assess differences and similarities among selected clusters. Hypothesize a reason for why the observation falls between the clusters. image 29, which is the biggest outlier, is definitely unique in comparison to the others. It just features a child in nature, no civilization to be seen.
11. Consider any skill you have developed and generate one more summary of the data that may help you to answer the original research question. It need not rely on clustering nor MDS. Anything you want.

> Original Research Question: *What kinds of impressions might the public get about Blacksburg, VA from internet images?*

12. Describe in words the summary you created. I did a bar plot of the average number of pictures with trees by cluster.
13. Based on your summary, what insight can you make about the data. Cluster 4 has a tree in every photo, while cluster 1 has trees in less than half. The other 3 clusters have a high rate of tree sightings.
14. In consideration of all the ways you explored the images of Blacksburg. Answer the original research question.
Blacksburg has a lot of forestry and nature in the city and surrounding area. The campus of Virginia Tech has a old and classical feel.
