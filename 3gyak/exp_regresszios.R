logaritmizalo = function(y)
{	
	for(i in 1:length(y))
	{
		y[i] = log(y[i])
	}
	print(y)
	return(y)
}

sum = function(x){	
	s = 0;
	for (i in 1:length(x)){
		s = s + x[i];
	}
	return(s);
}

sumketto = function(x,y){	
	s = 0;
	for (i in 1:length(x)){
		s = s + (x[i]*y[i]);
	}
	return(s);
}

egyenesa = function(x,y)
{
	felsoegy = (sumketto(x,y)*length(x))-(sum(y)*sum(x));
	felsoketto = (sumketto(x,x)*sum(y))-(sum(x)*sumketto(x,y));
	also = (sumketto(x,x)*length(x))-(sum(x)*sum(x));
	a = felsoegy/also;
	b = felsoketto/also;
	return(a);
}

egyenesb = function(x,y)
{
	felsoegy = (sumketto(x,y)*length(x))-(sum(y)*sum(x));
	felsoketto = (sumketto(x,x)*sum(y))-(sum(x)*sumketto(x,y));
	also = (sumketto(x,x)*length(x))-(sum(x)*sum(x));
	a = felsoegy/also;
	b = felsoketto/also;
	return(b);
}

# x es y-t adunk

log_y = logaritmizalo(y)
b = egyenesa(x,log_y)
c = egyenesb(x,log_y)

# f(x) = a*e^(b*x)
# ln f(x) = b*x + c    ----- c = ln(a)

a = exp(1)^c

