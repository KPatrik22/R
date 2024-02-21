egyenesa = function(x,y)
{
	felsoegy = (sumketto(x,y)*length(x))-(sum(y)*sum(x));
	felsoketto = (sumketto(x,x)*sum(y))-(sum(x)*sumketto(x,y));
	also = (sumketto(x,x)*length(x))-(sum(x)*sum(x));
	a = felsoegy/also;
	b = felsoketto/also;
	return(a);
}