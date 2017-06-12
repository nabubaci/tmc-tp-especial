
function convergio = converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_tiradas)

  if total_de_tiradas > 100
   
    if (abs(probabilidad_anterior - probabilidad_actual) < epsilon) 
      
      convergio = true;
    else
   
      convergio = false;
    end
  else
    
    convergio = false;
  end

end