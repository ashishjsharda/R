data =read.csv('insurance.csv')
fit=lm(charges ~ age +sex + bmi,data = data)
summary(fit)
#predict on new data
new_data=data.frame(age=50,sex="male",bmi=25)
predict(fit,newdata = new_data)
logit_fit=glm(charges ~ age +sex +bmi,data = data,family="gaussian")
summary(logit_fit)
