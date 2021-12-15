n=as.integer(readline(prompt="Enter the number of elements in the array:"))
arr=array(0)
for(i in 1:n){
  arr[i]=as.numeric(readline(prompt="Enter the value:"))
}
m=matrix(0,ncol=n,nrow=n)
k=1:n
for(i in k){
arr[c(1:(k[i]-1),k[i]:n)]=arr[c(k[i]:n,1:(k[i]-1))]
m[i,]=arr
}
sum=array(0)
for(i in 1:n){
  sum[i]=sum((1:n)*m[i,])
}
print(max(sum))