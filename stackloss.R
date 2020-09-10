help("stackloss")
stackloss.lm=lm(stack.loss~ Air.Flow +Water.Temp+Acid.Conc.,data = stackloss)
print(stackloss.lm)
