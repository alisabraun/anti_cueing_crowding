function logLikelihood = log_likelihood(fitParams, results, fn)
%LOG_LIKELIHOOD_PSYCH 
% Gets the log likelihood between x and fn fit with params  
    % fn - function 
    % fitParams - fitted parameter struc for the function fn
    % results - struc of recorded values
        %results.x - x values
        %reuslts.y - y values

% get predicted y values model fit
yPred = fn(fitParams, results.x); 
yPred = yPred*.99+.005; % avoid yPred values of 1

% compute log likelihood of predicted versus actual values
logLikelihood = -sum(results.y.*log(yPred) + (1-results.y).*log(1-yPred));

end
