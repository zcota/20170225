function avg_acc = simulate_manyDecisions(num_replications, num_decisions, prob)
, 
%{
simulate a decision many times given
number or replications, number of decisions, and probability
returns an average of the results
%}
for replication = 1:num_replications
    isChoiceCorrect(replication) = simulate_oneDecision(num_decisions, prob);
end
avg_acc = mean(isChoiceCorrect);