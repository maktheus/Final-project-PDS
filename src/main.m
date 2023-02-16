% Leitura dos dados a partir do arquivo CSV
filename = 'hex.csv';
data = readtable(filename);
data(isnan(data.OutletPressure), :) = [];

% Definição das frequências de corte e de amostragem
Fc = 5000;  % frequência de corte
Fs = 60000; % frequência de amostragem

% Cálculo da frequência angular de corte
wc = 2*pi*Fc/Fs;

% Cálculo dos coeficientes do filtro FIR
M = 50;
h0 = wc/pi;
n1 = [1:M];
n2 = [-M:-1];
hn_pos = (1./(pi*n1)).*sin(wc*n1);
hn_neg = (1./(pi*n2)).*sin(wc*n2);
hn = [hn_neg h0 hn_pos];

% Aplicação do filtro ao sinal de entrada
filtered_data = conv(data.OutletTemperature, hn, 'same');

% Cálculo e plot do espectro do sinal antes e depois da filtragem
N = length(data.OutletTemperature);
f = Fs*(0:N-1)/N;
f = f(1:N/2+1); % considera apenas a metade do espectro
X = fft(data.OutletTemperature, N);
X = abs(X(1:N/2+1));
X = 20*log10(X);
Y = fft(filtered_data, N);
Y = abs(Y(1:N/2+1));
Y = 20*log10(Y);
subplot(2, 1, 1);
plot(f, X);
title('Espectro do sinal antes da filtragem');
xlabel('Frequência (Hz)');
ylabel('Magnitude (dB)');
subplot(2, 1, 2);
plot(f, Y);
title('Espectro do sinal após a filtragem');
xlabel('Frequência (Hz)');
ylabel('Magnitude (dB)');