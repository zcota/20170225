function isChoiceCorrect = simulate_oneDecision(num_decisions, prob)
%{
simulate one decision given the number of times to try and the probability
returns 1 or 0 depending on the outcome
%}
for i = 1:num_decisions
    if rand <= prob
        isCorrect(i) = 1;
    else
        isCorrect(i) = 0;
    end
end

N_correct = sum(isCorrect);
N_incorrect = num_decisions - sum(isCorrect);

if N_correct > N_incorrect
    isChoiceCorrect = 1;
elseif N_correct < N_incorrect
    isChoiceCorrect = 0;
elseif N_correct == N_incorrect
    isChoiceCorrect = rand <= 0.5;
end