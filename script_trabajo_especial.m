%script_trabajo_especial
epsilon = 0.0001;

while(epsilon <= 0.1)
tic
%esto llama al montecarlo
[probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon);
% Mostramos por pantalla la probabilidad que nos dio
fprintf('Probabilidad = %f: \n', probabilidad);
arreglo=length(todas_las_probabilidades);
arreglo
% Graficamos 
 figure, plot(todas_las_probabilidades);
 hold on
 plot(ones(size(todas_las_probabilidades)) * 0.25, '--');
 xlabel('Intentos');
 ylabel('Probabilidad');
 ylim([0 1]);
 legend('Variacion de la probabilidad', 'Probabilidad analitica');
 epsilon = (epsilon * 10)
 tiempo = toc;
 tiempo
 end
 
