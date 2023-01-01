N <- 1000
e_of_x <- 68.2/100

count = 1

for (i in rnorm(N)){
  if (i>=-1 & i<=1){
    count = count+1
  } 
}

print((count/N)*100)
  