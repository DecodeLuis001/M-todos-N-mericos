clc
clear all;
close all;

n=1000;
ne=100;

%Los tres puntos indican que se continua el codigo de una misma linea.
fig=figure('MenuBar', 'None', ...
    'NumberTitle', 'off', ...
    'Name', 'Ejemplo de grafica', ...
    'Units', 'normalized', ...
    'Position', [0.1, 0.1, 0.8, 0.8]);

ej1 = axes('Units', 'normalized', ...
           'Position', [0.12, 0.32, 0.84, 0.60]);

tn=uicontrol('Style', 'edit', ...
             'String', n, ...
             'Units', 'normalized', ...
             'FontSize', 24, ...
             'Position', [0.04,     0.1,         0.2,       0.10], ...
             'Callback', 'n=str2num(get(tn, ''String''));');
         
tne=uicontrol('Style', 'edit', ...
             'String', ne, ...
             'Units', 'normalized', ...
             'FontSize', 24, ...
             'Position', [0.34,     0.1,         0.2,       0.10], ...
             'Callback', 'ne=str2num(get(tne, ''String''));');
         
bcal=uicontrol('String', 'Graficar', ...
               'Units', 'normalized', ...
               'FontSize', 24, ...
               'Position', [0.54,     0.1,         0.2,       0.10], ...
               'Callback', 'Ejemplo05;');

bsal=uicontrol('String', 'Salir', ...
               'Units', 'normalized', ...
               'Callback', 'clc; clear all; close all;', ...
               'FontSize', 16, ...
               'Position', [0.75,     0.1,         0.2,       0.10]);
                            %Derecha   %Izquierda   %Ancho     %Largo  