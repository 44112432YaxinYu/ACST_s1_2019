Pfunction=function(Fv,C,n,y){
  # Fv is the face value ; C is the coupon;
  # y is the interest rate matrix with length n 
  # n is the total number of coupon payments
  t=(1:n)/2
  pp=rep(0,n)
  for (j in 1:n) {
    pp[j]=C*exp(-y[j]*t[j])
  }
  p=sum(pp)+Fv*exp(-y[n]*t[n])
  return(p)
}
