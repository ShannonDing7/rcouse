my_log <- function(x) log(x - 1)

my_fun <- function(a, b) {
  # browser()
  la <- my_log(a) 
  lb <- my_log(b)
  la + lb
}
my_fun(1, 0)

debugonce(my_fun)
my_fun(1, 0)
#
isTRUE(all.equal(1.0+2, 3))

#
args(max)
args(mean)

mean(c(1,2,3))
#
n=10
1:length(n)
seq_len(n-1)

##exersise
(mat <- matrix(sample(c(TRUE, FALSE), 12, replace = TRUE), 3))
matrix(as.numeric(mat),ncol = 4)
#my anwser
typeof(mat-0)
typeof(mat-0L)

mat+0
mat*1
mat/1

#
x[[1]]

#partical
seurat$id


#
advr38pkg::sum_every(1:10, 2)

#?
sum_my<-function(input,num){
  mat<-matrix(rep(input,num), ncol = num)
  
  for (i in 1:length(input)) {
     for (ii in 1:length(input)) {
          for (iii in 1:length(input)) {
            
          }
    
    }
  }
}


#
#colSums(iris[,which(is.numeric(iris))])/dim(iris)[1]
colMeans(iris[sapply(iris, is.numeric)])
#
mat <- matrix(0, 10, 2); mat[c(5, 8, 9, 12, 15, 16, 17, 19)] <- 1; mat
(decode <- matrix(c(0, NA, 1, 2), 2))

myfun<-function(x){
  x<-as.vector(x)
  decode[x[1]+1,x[2]+1]
}
apply(mat,1,myfun)
apply(mat,1,myfun(row) {decode[row[1]+1,row[2]+1]})
decode[mat+1]

# Structure overview
str(iris)
skimr::skim(iris)

methods(class = "S4")

#
order(c(1, 6, 8, 2, 2), c(0, 0, 0, 2, 1))
gtools::mixedsort(c("a1", "a2", "a10"))  ## not in base, obviously

outer(1:4, 1:3, '+')

expand.grid(param1 = c(5, 50), param2 = c(1, 3, 10))

me <- "Florian"
glue::glue("I am {me}")  ## not in base, but SO useful


#
TRUE | stop("will go there")
TRUE || stop("won't go there")  ## won't evaluate second condition if first one is TRUE

`if`(FALSE, 0, 1:5)

set.seed(1)
(x <- rnorm(1000))

microbenchmark::microbenchmark(
  ifelse(x>0,x,-x),
  abs(x),
  pmax(x)
)

#
advr38pkg::split_ind

group<-rep_len(seq_len(i.l),length(i.l))

myfun<-function(i.l,num){
  split(1:length(i.l),1:num)
  sample(1:length(i.l),replace = F)
  
}

split(1:length(i.l),1:num)

#
set.seed(1); (x <- rnorm(10))
replications(1000,{
  (x2<-sample(x,replace = T))
  mean(x2)
})

all_mean<-.Last.value




res<-c()



for (i in 1:1000) {
  result<-mean(sample(x,1,replace = T),sample(x,1,replace = T))
  res<-c(res,result)
}
quantile(res,probs =  c(0.025,0.975))

#
my_mtcars <- mtcars[c("mpg", "hp")]
my_mtcars$my_col <- sample(c("mpg", "hp"), size = nrow(my_mtcars), replace = TRUE)
head(my_mtcars)
my_mtcars$my_val<-0

match(my_mtcars$my_col,"mpg",nomatch = 2)
my_mtcars$my_val[,]
