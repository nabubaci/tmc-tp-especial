%script_trabajo_especial

epsilon = 0.001;%se inicializa el valor de epsiolon
%esto llama al montecarlo
[probabilidad, todas_las_probabilidades] = calcular_probabilidad_sacar_cara(epsilon);
% Mostramos por pantalla la probabilidad que nos dio
fprintf('Probabilidad de acierto = %f: \n', probabilidad);
% Mostramos por pantalla la probabilidad que nos dio
fprintf('La probabilidad es de: %d\n', probabilidad);
% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on
plot(ones(size(todas_las_probabilidades)) * 0.5, '--');
xlabel('Tiradas');
ylabel('Probabilidad');
ylim([0 1]);
legend('Variacion de la probabilidad', 'Probabilidad analitica');