function [C, sigma] = dataset3Params(X, y, Xval, yval)
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

C = 1;
sigma = 0.3;
possible_C = [0.01 0.03 0.1 0.3 1 3 10 30];
pred_error = zeros(length(possible_C),length(possible_C));
m = length(X)
 
for i = 1:length(possible_C)
   C_test = possible_C(i); %looping through different values of C
   for j = 1:length(possible_C)
     sigma_test = possible_C(j); %looping through different values of sigma
     model = svmTrain(X, y, C_test, @(x1,x2) gaussianKernel(x1,x2,sigma_test));
     predictions = svmPredict(model, Xval);  
     pred_error(i,j) = mean(double(predictions ~= yval));   
   endfor
endfor
%find position of the element where pred_error is minimum
min_col = min(pred_error); % find the minimum of each colummn
min_val = min(min_col);
[i,j] = find(pred_error == min_val);


C = possible_C(i);
sigma = possible_C(j);  






% =========================================================================

end
