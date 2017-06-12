%script_trabajo_especial
epsilon = 0.1;
experimento = 1;
while(epsilon >= 0.001)
tic
experimento
epsilon
%esto llama al montecarlo
[probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon);
% Mostramos por pantalla la probabilidad que nos dio
fprintf('Probabilidad = %f: \n', probabilidad);
longitud_arreglo=length(todas_las_probabilidades);
longitud_arreglo
desvio_estandar_primeras_20 = std(todas_las_probabilidades(1:20));
desvio_estandar_primeras_20
desvio_estandar_ultimas_20 = std(todas_las_probabilidades(end-20:end));
desvio_estandar_ultimas_20
% Graficamos 
 figure, plot(todas_las_probabilidades);
 hold on
 plot(ones(size(todas_las_probabilidades)) * 0.25, '--');
 xlabel('Intentos');
 ylabel('Probabilidad');
 ylim([0 1]);
 legend('Variacion de la probabilidad', 'Probabilidad analitica');
 epsilon = (epsilon / 10);
 experimento = (experimento + 1);
 tiempo = toc;
 tiempo
 end
 
