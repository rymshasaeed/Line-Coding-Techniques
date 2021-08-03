clc, clearvars, close all

% Binary input
X = [1 0 1 1 1 0 0];

% Unipolar line coding
figure;
subplot(2,1,1), unipolar_rz(X)
subplot(2,1,2), unipolar_nrz(X)
suptitle(['Input: ', num2str(X)])

% Polar line coding
figure;
subplot(2,1,1), polar_rz(X)
subplot(2,1,2), polar_nrz(X)
suptitle(['Input: ', num2str(X)])

% Bipolar line coding
figure;
subplot(2,1,1), bipolar_rz(X)
subplot(2,1,2), bipolar_nrz(X)
suptitle(['Input: ', num2str(X)])
