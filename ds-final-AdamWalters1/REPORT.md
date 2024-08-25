# Pokemon data analysis report

I conducted data analysis on a pokemon dataset from Kaggle, created my Jai Dalmotra. It is based stricly off of the stats of the pokemon in the mainline games. I aimed to find interesting trends and correlations that are not obvious about the stats of the pokemon. The dataset includes 898 pokemon, 1072 if you include alternate forms. The following are the variables within the original csv file:

Number: The ID for each pokemon

Name: The name of each pokemon

Type 1: Each pokemon has a type, this determines weakness/resistance to attacks

Type 2: Some pokemon are dual type and have 2

Total: Sum of all stats that come after this.

HP: Hit points, or health, defines how much damage a pokemon can withstand before fainting

Attack: The base modifier for physical attacks (eg. Scratch, Punch)

Defense: The base damage resistance against physical attacks

SP Atk: Special attack, the base modifier for special attacks (e.g. fire blast, bubble beam)

SP Def: Special defense, the base damage resistance against special attacks

Speed: Determines which pokemon attacks first each round

Generation: The generation of games where the pokemon was first introduced

Legendary: Some pokemon are much rarer than others, and are dubbed "legendary". mythicals are counted as legendary.

The data is very clean, and thus did not require any additional cleaning.

After installing all appropriate packages, including ggplot2,ggpubr,dplyr,tidyr, and reshape2, I first looked at each stat as a percentage of the stat total of each pokemon. I then took the distributions of the percentages and formed a subset. Then, using a bar plot to visualize each stats percentage for each pokemon, I plotted all 6 bar plots in one graph. Each mean is quite similar. 

![alt text](image.png)

As you can see, attack is the highest, but each mean is still around 16-18%, which makes it a roughly even spread. The developers, on average, do a good job properly balancing the different stats.  


Next I erformed a t-test to compare the attack and special attack percentage of the pokemons total stats between legendary and non-legendary pokemon. First, I created columns in the dataframe that represent the attack, special attack and combined percent of total. Then i subsetted the legendary and non-legendary from the dataframe. Performing a t-test on these two subsets yielded: 
t = 2.4755, df = 142.78, p-value = 0.01447

95 percent confidence interval: 0.2892742 2.5821499

Creating a visualization with these results yields the following:

![alt text](image-1.png)

We can see that on average, legendary pokemon are slightly more offensively oriented in their stat distribution. 

Next I ran a similar t-test to determine if electric types were typically faster than their non-electric counterparts. First I added a column to the dataset with a 1 or a 0 signifying that the pokemon is/is not electric type. Then after subsetting, I ran the t-test, resulting in t = 3.4266, df = 82.004, p-value = 0.0009577. 95 percent confidence interval: 5.670396 21.366922.

Visualizing this with a boxplot and jitter plot looks as follows:

![alt text](image-2.png)

From the t-test and visual, it is clear that electric types have a signifigantly higher average speed stat. This isnt suprising, due to the close knot electric powers and speed have in fiction. 


Next I analyzed the relationship between HP and the defense/special defense stats with linear regression. 

![alt text](image-3.png)
![alt text](image-4.png)

Both have a similar steady positive correlation. Even though both stats essentially do the same thing, increasing the overall amount of damage a pokemon can take, the developers chose to generally have high defense pokemon go with high hp pokemon.


Next I clustered the pokemon based on the main 6 stats, not using total. I chose 4 clusters after running an elbow graph to determine the optimal amount of clusters. I then plotted each pokemon on an attack x defense scatter plot, coloring by cluster.

![alt text](image-5.png)

It's clear that cluster 1 was heavily based on the pokemon haiving lower attack and defense, likely being unevolved. Cluster 4 has middling of each, while clusters 2 and 3 seem to have little to do with attack and defense.


Next I scaled the data for a multi-dimension scaling analysis, adding a column to the new mds dataframe for the cluster that each belongs to. plotting the clusters reveals that the clusters are quite distinct overall.

![alt text](image-6.png)

Next I included a stacked bar plot that displays the average stats by type, including secondary types. It displays the stat averages for each pokemon type.

![alt text](image-16.png)

It is clear that Steel is the strongest type, followed by Dragon, Psychic and Fighting. This doesnt mean much, but it's cool.


Next was creating a column and assigning a generation to each of the pokemon, based on the actual cutoffs in the pokedex. Then i created a new dataframe that grouped the pokemon by generation, and found the mean of each of the stats for each generation. After sorting, I created a plot that went by generation on the x axis, but was extremely hard to read. I then made a graph that had the different stats across the x-axis, and colored the generations by the key. 

![alt text](image-7.png)

It is clear that gens 7 and 8 are quite strong, being consistenly at the top. Gen 2 appears to be the weakest, along with gen 1 and 3. Therefore, as the generations go on, the developers are making the pokemon slightly stronger in terms of base stats.


Another way to visualize this is with radar plots. These radar plots chart each generation, seeing what they are best at. The plots are relatively skewed, considering the other genertaions and the other stats. There are 8 plots: ![alt text](image-8.png)
![alt text](image-9.png)
![alt text](image-10.png)
![alt text](image-11.png)
![alt text](image-12.png)
![alt text](image-13.png)
![alt text](image-14.png)
![alt text](image-15.png)

Where each generation has a high 'radius" away from the center is that that gen specializes in, relative to the other generations and their stats. A higher overall area spanned means higher overall stats. These charts do show the overall strength of the pokemon increasing as time goes on.

word count ~ 1000