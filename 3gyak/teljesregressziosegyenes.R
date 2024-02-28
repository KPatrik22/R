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

x = rnorm(100)
x = sort(x)
y = rnorm(100)
y = sort(y)
a = egyenesa(x,y)
b = egyenesb(x,y)
cat("egyenes egyenlete: ",a,"*x+",b)
curve(a*x+b)
points(x,y)