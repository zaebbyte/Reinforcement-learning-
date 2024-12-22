
install.packages("ReinforcementLearning")

library(ReinforcementLearning)
states<- c("state1","state2")
actions<-c("action1","action2")
data<- data.frame(State=sample(states,100,replace=TRUE),
                  Action=sample(actions,100,replace=TRUE),
                  Reward=sample(c(1,0,-1),100,replace=TRUE),
                  NextState=sample(states,100,replace=TRUE))

control<- list(alpha=0.1, gama=0.9, epsilon=0.1)

Model<-ReinforcementLearning(data,s="State",a="Action",r="Reward",s_new="NextState",control=control)

print(Model$Q)

policy<-Model$Policy

print(policy)

simulate_action<-function(state){
  action<-policy[state]
  return(action)
}



























