num_decisions = 100;
num_replications = 1000;
probability_vals = [0.5:0.05:0.8];

for i = 1:length(probability_vals)
    prob = probability_vals(i);
    avg_acc(i) = simulate_manyDecisions(num_replications, num_decisions, prob);
end


figure(1); clf; hold on;
plot(probability_vals, avg_acc)
xlabel('Proportion of dots moving in the correct direction (prob)')
ylabel('Probability of correct answer')