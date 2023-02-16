# Descrição do projeto

Este projeto consiste na leitura de um sinal de pressão de um sistema de filtragem e na aplicação de um filtro passa-baixa FIR. Em seguida, é plotado o espectro do sinal antes e depois da filtragem.

## Sinal de entrada

O sinal de entrada é um conjunto de medições da pressão na saída do filtro ao longo do tempo, armazenado em um arquivo CSV. O sinal foi amostrado a uma frequência de 50 kHz.

## Transformada de Fourier

A transformada de Fourier é uma técnica para analisar sinais no domínio da frequência. Ela converte um sinal no domínio do tempo em suas componentes de frequência. A amplitude de cada componente de frequência indica o quanto essa frequência está presente no sinal. A transformada de Fourier é usada para visualizar o espectro de frequência do sinal antes e depois da filtragem.

## Filtro passa-baixa FIR

Um filtro passa-baixa é um filtro que permite que as frequências abaixo de uma frequência de corte passem sem atenuação, e atenua as frequências acima da frequência de corte. Um filtro passa-baixa FIR é um filtro digital que é implementado por meio de uma convolução com um sinal de entrada. O filtro usado neste projeto tem frequência de corte de 5 kHz e ordem de 101.

## Resultados

O código `filter_script.m` lê o sinal de entrada e aplica o filtro passa-baixa FIR. Em seguida, plota o espectro do sinal antes e depois da filtragem.

![Espectro do sinal antes e depois da filtragem](./images/Screenshot_12.png)

O gráfico acima mostra o espectro do sinal antes e depois da filtragem. As unidades da amplitude são arbitrários. As linhas verticais indicam as frequências de corte do filtro. Como pode ser observado, o filtro atenua as frequências acima de 5 kHz, mantendo as frequências abaixo dessa frequência.

## Requisitos de software

- MATLAB (versão R2020a ou superior)

## Como usar

1. Abra o MATLAB.
2. Navegue até o diretório onde os arquivos do projeto estão localizados.
3. Digite `filter_script` na linha de comando do MATLAB para executar o script.
4. Aguarde até que o script termine a execução. O gráfico do espectro do sinal antes e depois da filtragem será mostrado na janela de gráficos do MATLAB.
