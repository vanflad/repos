RStudio projects
Keeping all the files associated with a project organized together – input data, R scripts, analytical results, figures – is such a wise and common practice that RStudio has built-in support for this via its projects.

Using Projects

Let’s make one to use for the rest of this workshop/class. Do this: File > New Project …. The directory name you choose here will be the project name. Call it whatever you want (or follow me for convenience).

I created a directory and, therefore RStudio project, called swc in my tmp directory, FYI.

setwd("~/tmp/swc")
Now check that the “home” directory for your project is the working directory of our current R process:
  
  getwd()
I can’t print my output here because this document itself does not reside in the RStudio Project we just created.

Let’s enter a few commands in the Console, as if we are just beginning a project:
  
  a <- 2
b <- -3
sig_sq <- 0.5
x <- runif(40)
y <- a + b * x + rnorm(40, sd = sqrt(sig_sq))
(avg_x <- mean(x))
## [1] 0.4616799
write(avg_x, "avg_x.txt")
plot(x, y)
abline(a, b, col = "purple")

dev.print(pdf, "toy_line_plot.pdf")
## quartz_off_screen 
##                 2
Let’s say this is a good start of an analysis and your ready to start preserving the logic and code. Visit the History tab of the upper right pane. Select these commands. Click “To Source”. Now you have a new pane containing a nascent R script. Click on the floppy disk to save. Give it a name ending in .R or .r, I used toy-line.r and note that, by default, it will go in the directory associated with your project.

Quit RStudio. Inspect the folder associated with your project if you wish. Maybe view the PDF in an external viewer.