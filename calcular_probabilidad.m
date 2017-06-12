function [probabilidad, todas_las_probabilidades] = calcular_probabilidad(epsilon)
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  casos_favorables = 0;
  total_de_tiradas = 0;
  todas_las_probabilidades = [];

  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_tiradas)
    probabilidad_anterior = probabilidad_actual;
    T1=my_mex_service(41675923);
    T2=my_mex_service(41675923);
    % se actualizan la cantidad de tiradas
    total_de_tiradas = total_de_tiradas + 1;
    if ((T1==0)&&(T2==0))
      casos_favorables = casos_favorables + 1;
    end
    % Calculo la probabilidad actual
    probabilidad_actual = (casos_favorables / total_de_tiradas);
    % para poder hacer el grafico ----------------------------
    todas_las_probabilidades = cat(1, todas_las_probabilidades, probabilidad_actual);
    % --------------------------------------------------------------------------
  end
   % Devuelvo la probabilidad actual
  probabilidad = probabilidad_actual;

end

    
    