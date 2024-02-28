logaritmizalo = function(y)
{	
	for(i in 1:length(y))
	{
		y[i] = log(y[i])
	}
	print(y)
	return(y)
}