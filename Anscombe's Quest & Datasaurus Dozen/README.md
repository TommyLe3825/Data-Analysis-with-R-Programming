# Data visualization is super important! 

## Using examples like the Anscombe's Quest which although it does have a similar summary when calculated, we actually get different plots for each

**Summarzing Anscombe's Quest using the summarize function of dplyr package**

A tibble: 4 × 6

  set   `mean(x)` `sd(x)` `mean(y)` `sd(y)` `cor(x, y)`
  
  <fct>     <dbl>   <dbl>     <dbl>   <dbl>       <dbl>

1 I             9    3.32      7.50    2.03       0.816

2 II            9    3.32      7.50    2.03       0.816

3 III           9    3.32      7.5     2.03       0.816

4 IV            9    3.32      7.50    2.03       0.817

**Visualizing Anscombe's Quest using the ggplot function of the ggplot2 package**
<img width="431" alt="anscombe'sQuestVisualization" src="https://github.com/user-attachments/assets/771ace54-4cef-42bd-a241-e2d1d72153d9" />

**Same would go for Datasaurus Dozen**
<img width="431" alt="datasaurusDozenVisualization" src="https://github.com/user-attachments/assets/6b5b4592-21c3-42eb-97dd-d13d6674818f" />
