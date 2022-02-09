The stats project is here: https://github.com/IgorPietrzak/Praca-Domowa/blob/main/project.r 

There are 4 functions for the 4 tasks, if you want to produce an answer, follow these steps:

1.) Scroll down to the main function at the bottom.

2.) Type what function you want to run. If you want an answer for task 1, simply type task1(). It should look like this:

```R

  main <- function(){
    task1()

  }
  main()
  
```


      
     
    
3.) Note that task4 function requires you to enter the number of breaks you want in your histogram, so, when calling it specify the number you want. Let's say you want to have 10 breaks, then you would type:


```R

  main <- function(){
    task4(10)

  }
  main()
  
```
Useful link that explains how to draw straight lines: http://www.sthda.com/english/wiki/abline-r-function-an-easy-way-to-add-straight-lines-to-a-plot-using-r-software

you will have to load the data from wherever you saved it:

```R
data = read.csv('WHERE YOUR DATA IS SAVED')
```
Using the ``` get_mode()``` function, we find there are 5 modes: 
*82.4 rows = {2,29}
*110.5 rows = {9,37}
*63.6 rows = {14,91}
*83.6 rows = {18,30}
*88.7 rows = {41,65}

