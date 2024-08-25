
# Pokemon Data Analysis Proposal

I will be conducting data analysis on a pokemon dataset
from Kaggle, created my Jai Dalmotra. It is based stricly off of the stats of the pokemon in the mainline games. I aim to find some interesting trends and correlations that are not obvious about the stats of the pokemon. The dataset includes 898 pokemon, 1072 if you include alternate forms. The
following is the variables withing the csv file:

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

The data is very clean, and thus does not require any additional cleaning.

I plan to calculate distributions of each stat, HP, attach, etc as a percentage of the stat total to find the largest percent, as the best predictor of a high stat total. I'll conduct a t-test to compare the combined Attack and Special Attach stats as a percentage of the total stats between legendary and normal pokemon. This will determine if legendary pokemon are more offensively oriented than normal pokemon. I'll also look for correlations between having a dual typing and having higher stats and generation.

I'll use linear regression to predict the likelihood of a pokemon being electric type based on its speed stat. I may also do this with other stat/ type combinations. It may reveal some patterns behind the designs of the pokemon or the psychology of the game developers. The visualization will be color coded for types.

I will use K-means clustering to group pokemon based on similarity in stats, using the elbow graph to determine the proper number of clusters. Then I'll create vizualizations like scatter plots or heat maps to see the differences. find univariate stat, type or generation differences between them. I'll analyze the clusters by seeing if theres type similarities within clusters, if clusters tend to be from certain generations, and what means/ standard deviations they have for the stats. 

Pokemon will also be clustered based on type, with dual types counting for both. I'll then analyze the differences betweeen these clusters using MDS. Box plots and bar charts will illustrate the differences. I will also plot distributions of various stats across the different generations of games. This analysis will observe trends and changes in pokemon characteristics over time.


Dataset reference: 
DALMOTRA, J. (n.d.). Pokemon Dataset. Kaggle. https://www.kaggle.com/datasets/jaidalmotra/pokemon-dataset?resource=download 