% Script OCTAVE para calcular la serie de fourier de una función periódica para 
% un conjunto de valores de N.

function [y] = Series_Fourier(x, T, fs, N, t)
  
  pkg load signal;
  w_0 = 2 * pi / T;
  cont = 1;
  y = [];
  
  for i = t
    a_0 = (2 / T) * quadgk(@(t)rectpuls(t, T) .* cos(0 * w_0 * t), (0), (T));
    suma = a_0 / 2;
    for n = 1:N
      a = (2 / T) * quadgk(@(t)rectpuls(t, T) .* cos(n * w_0 * t), (0), (T));
      b = (2 / T) * quadgk(@(t)rectpuls(t, T) .* sin(n * w_0 * t), (0), (T));
      suma = suma + a * cos(n * w_0 * i) + b*sin(n * w_0 * i);
    endfor
    y(cont) = suma;
    cont = cont +1;
  endfor
  return