## a
singapore.economy <- read.csv("~/Desktop/890/singapore.economy.csv")
View(singapore.economy)
dataset=singapore.economy

## b
s.e=na.omit(dataset)

## c
plot(x=s.e$time,y=s.e$gdp,main="Singapore GDP growth",xlab = 'Time',ylab = 'GDP(%)')
lines(x=s.e$time,y=s.e$gdp)
## d 
gdp1=s.e[which(s.e$period=='1'), ]$gdp
gdp2=s.e[which(s.e$period=='2'), ]$gdp
gdp3=s.e[which(s.e$period=='3'), ]$gdp
gm1=mean(gdp1);gs1=sd(gdp1)
gm2=mean(gdp2);gs2=sd(gdp2)
gm3=mean(gdp3);gs3=sd(gdp3)
stat.table=c(gm1,gm2,gm3,gs1,gs2,gs3)
dim1=c('period 1','period 2','period 3')
dim2=c('mean of gdp','Stand Dev of gdp')
stat.table=array(stat.table,dim = c(3,2),dimnames = list(dim1,dim2))

## e
pairs(gdp~exp+epg+hpr+gdpus+oil+crd+bci,data=s.e)

## f
lin_re=lm(gdp~exp,data=s.e)
summary(lin_re)

## g
lin1=lm(gdp~exp+epg+hpr+oil+gdpus+crd,data=s.e)
summary(lin1)

## h
a=quantile(s.e$gdp,probs = c(0.05))
n=length(s.e$gdp)#-0.136
state=s.e$gdp
for (i in 1:n){
  if (s.e$gdp[i] < a)
    state[i]='crisis_state'
    else
    state[i]='normal_state'
}
Singap.eco=data.frame(s.e,state) # the new dataset with state column
S1=Singap.eco[which(Singap.eco$period=='1'|Singap.eco$period=='2'), ]
g=glm(state~bci,family = binomial,data = S1)
summary(g)
glm.probs=predict(g,type = 'response')
contrasts(S1$state)
glm.pred=rep('crisis_state',dim(S1)[1])
glm.pred[glm.probs > 0.5]='normal_state'
table(glm.pred,S1$state)

