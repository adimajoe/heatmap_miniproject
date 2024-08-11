getwd()

install.packages('caTools')
library(caTools)

install.packages("gplots")
library(gplots)

install.packages("pheatmap")
install.packages("grid")

library(pheatmap)
library(RColorBrewer)
library(grid)


a=matrix(c(0,0,0,0,0,0,0,0,7,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,-1,8,-1,7,-1,14,-3,7,-1,23,-5,5,0,10,-3,24,0,9,-1,5,-1,4,-1,15,-3,10,-4,11,-1,1,-1,16,0,8,0,14,-3,8,-3,12,-2,8,-1,3,-3,17,-7,19,-5,6,-1,5,-1,11,0,4,-2,12,-1,9,-4,5,-1,15,-3,13,-2,4,0,5,-3,20,-3,8,-2,4,-2,4,0,6,0,8,-3,14,-5,4,-2,6,0,8,-2,4,-3,20,-2,4,0,6,0,4,0,3,-1,1,0,3,-1,1,-1,0,0),20,7)

colnames(a)=c(0,1,2,3,4,5,6)

row.names(a)=c('A','','B','','C','','D','','E','','F','','G','','H','','I','','J','')

print(a)

#mybreaks=c(seq(-50,0),seq(0, 50))

pheatmap(a,display_numbers=F,fontsize_number=15)

pheatmap(a,display_numbers=F,fontsize_number=15,
         cellheight=15,cellwidth=30, drop_levels=T, border_color="grey",
         cluster_rows = F,
         cluster_cols = F,col=c('#204536','#396d59','#53987f','#6fc6a8',
                                    '#8bf5d3','white','#f7cea2','#eec599',
                                    '#e5bc90','#ddb387','#d4aa7f','#cba176',
                                    '#c3996e','#ba9065','#b2885d','#a97f55',
                                    '#a1774d','#986f45','#90673d','#885f36','#80572e',
                                    '#774f26','#6f471f','#674018','#5f3810','#573108'))


?pheatmap
#importing table in csv format

b<-read.csv("/Users/aditimajoe/Desktop/IISER/heatmap_help/matrix_iiser.csv")

#turning csv file into matrix

matrixb = as.matrix(b)
