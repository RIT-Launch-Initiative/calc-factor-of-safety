function [fitresult, gof] = createFit_ExtTemp(int_pos, ext_temp)
%CREATEFIT(INT_POS,INT_TEMP)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input: int_pos
%      Y Output: int_temp
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 31-Jan-2024 19:19:08


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( int_pos, ext_temp );

% Set up fittype and options.
ft = 'linearinterp';
opts = fitoptions( 'Method', 'LinearInterpolant' );
opts.ExtrapolationMethod = 'linear';
opts.Normalize = 'on';

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );


