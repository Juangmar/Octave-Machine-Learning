% (C) Juan Gomez-Martinho, 2018

function I = mcintB(fun, a, b, num_puntos)
	tic();
	M = max(fun([a:0.01:b]));

	matrixX = rand(1, num_puntos) * (b-a) + a;
	matrixY = rand(1, num_puntos) * (M);

	matrixPoints = fun(matrixX);
	count = sum(matrixY < matrixPoints);

	
	I = (count/num_puntos)*(b-a)*M;	
	t = toc();
	disp("Tiempo de ejecucion "), disp(t);					
endfunction