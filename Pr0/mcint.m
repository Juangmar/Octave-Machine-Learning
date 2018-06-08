% (C) Juan Gomez-Martinho, 2018

function I = mcint(fun, a, b, num_puntos)
	tic();
	M = max(fun([a:0.01:b]));

	count = 0;
	
	for punt = 0:num_puntos
		x = rand() * (b-a) + a;
		y = rand() * (M);
		if (fun(x) > y) 
			count++; 
		endif
	endfor	
	
	I = (count/num_puntos)*(b-a)*M;	
	t = toc();
	disp("Tiempo de ejecucion "), disp(t);					
endfunction