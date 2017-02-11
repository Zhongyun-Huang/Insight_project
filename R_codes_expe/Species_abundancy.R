#####Insight Project#####
####Have some guts#####
###Logistics regression for species abundancy data (important species proved by pubs only)

## 1st Batch of species choices
species_abund <- read.delim("~/Dropbox/Insight_project/species_abund.txt")
summary(species_abund)
head(species_abund, 2)
#species_abund$Group = factor(species_abund$Group) #Not here, use that for categorical features

mylogit <- glm(Group~SP1+SP2+SP3+SP4+SP5+SP6+SP7+SP8+SP9+SP10+SP11+SP12+SP13+SP14, data = species_abund,family="binomial")
#Warning messages:
#1: glm.fit: algorithm did not converge 
#2: glm.fit: fitted probabilities numerically 0 or 1 occurred 

############ 2nd batch of species choices###############
########################################################

##### logistics regression, mylogit based on only 10 species #####

new_abund <- read.delim("~/Dropbox/Insight_project/27SP_abundance.txt")
head(new_abund,3)
####To treat categoric data: data1$Race = factor(data1$Race)
mylogit  <- glm(Group ~ SP1 + SP2 + SP3 + SP4 + SP5 + SP6 + SP7 + SP8 + SP9 + SP10, data = new_abund,family = "binomial")
#Warning message:
#glm.fit: fitted probabilities numerically 0 or 1 occurred 
summary(mylogit)
#SP2 0.01, SP3 0.05, SP5 0.01, SP7 0.05

new_data <- read.delim("~/Dropbox/Insight_project/27SP_newdata_abundance.txt")
Pred1  <- predict(mylogit,new_data, type="response")
Pred2 <- as.integer(Pred1 >= 0.5)
True <- as.integer(new_data[ ,1]!="Control")
mean(Pred2==True)

# Jerry's code  yPred1 <- predict(Fit1.1, newx = as.matrix(X.Test), type="class")
### 6 out of 88 flase positive, 19 out of 52 false negative

newdata2 <- read.delim("~/Dropbox/Insight_project/27SP_newdata2_abundance.txt")
predict(mylogit,newdata2, type="response")


####### new logistics regression fit including 27 species
mylogit2 <- glm(Group~SP1+SP2+SP3+SP4+SP5+SP6+SP7+SP8+SP9+SP10+SP11+SP12+SP13+SP14+SP15+SP16+SP17+SP18+SP19+SP20+SP21+SP22+SP23+SP24+SP25+SP26+SP27, data = new_abund,family="binomial")
#glm.fit: fitted probabilities numerically 0 or 1 occurred 
summary(mylogit2)
Pred3  <- predict(mylogit2,new_data, type="response")
Pred4 <- as.integer(Pred3 >= 0.5)
True <- as.integer(new_data[ ,1]!="Control")
mean(Pred4==True)



###########Randome forest for the same classification #########
require("random forest")
load("random forest")