% Script OCTAVE 1er Punto del taller
fs=500; %Frecuencia de muestreo
T=1; %Ancho del pulso en segundos
t_0 = -2;%Tiempo Inicial
t_f = 2;%Tiempo Final
t = linspace(t_0, t_f, fs);
x = inline("rectpuls(t, T)", "t", "T")
subplot(2,1,1);plot(t, Series_Fourier(x, T, fs, 4, t), '-r', t, Series_Fourier(x, T, fs, 8, t), '-b', t, Series_Fourier(x, T, fs, 12, t), '-g'); xlabel('t'); ylabel('x_n(t)'); title('Series de Fourier para un n');legend('n=4','n=8', 'n=12'); grid;
subplot(2,1,2);plot(t, x(t, T));xlabel('t'); ylabel('x(t)'); title('Pulso Rectangular');axis([t_0 t_f -0.1 1.1]);grid;