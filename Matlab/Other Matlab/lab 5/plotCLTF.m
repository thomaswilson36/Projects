% Ulster University
% EEE316 Control Theory and Applications
% 
% Practical 5 
% Function to plot the step response of a closed-loop transfer function
% 
% Author  : Mark Ng 
% Date    : 10 Apr 2018
% Version : 1.0

function plotCLTF( K, G, name )

CLTF = K*G / (1 + K*G); % Define the closed-loop transfer function
figure;
step( CLTF ); % Plot the step response of the CLTF
title( name );