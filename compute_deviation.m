function [deviationA, deviationP] = compute_deviation(alphaA,alphaP,alphaL_A,alphaR_A,alphaL_P,alphaR_P)
%compute_deviation Compute the deviation betwen the structural vectors and the
%actual vectors of initrinsic growth rates
%   [deviationA, deviationP] = compute_deviation(alphaA,alphaP,alphaL_A,alphaR_A,alphaL_P,alphaR_P) with
%   deviationA, deviationP = deviation from strucutral vector for animals and plants
%   alphaA, alphaP = actual vectors of growth rates for animals and plants
%   alphaL_A, alphaR_A = left and right structural vector of animals
%   alphaL_P, alphaR_P = left and right structural vector of plants


theta_u = alphaA' * alphaL_A / (sqrt(alphaA'*alphaA) * sqrt(alphaL_A'*alphaL_A));
theta_v = alphaA' * alphaR_A / (sqrt(alphaA'*alphaA) * sqrt(alphaR_A'*alphaR_A));
deviationA = (1 - theta_u.*theta_v) ./ (theta_u.*theta_v);
                
theta_u = alphaP' * alphaL_P / (sqrt(alphaP'*alphaP) * sqrt(alphaL_P'*alphaL_P));
theta_v = alphaP' * alphaR_P / (sqrt(alphaP'*alphaP) * sqrt(alphaR_P'*alphaR_P));
deviationP = (1 - theta_u.*theta_v) ./ (theta_u.*theta_v);
                
