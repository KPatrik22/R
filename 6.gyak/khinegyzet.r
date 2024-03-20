khinegyzet = function(k,p)
{
	sum = 0;
	N = 0;
	for(i in 1:length(k))
	{
		N = N + k[i];
	}
	for(i in 1:length(k))
	{
		sum = sum + ((k[i]-N*p[i])^2)/(N*p[i]);
	}
	return(sum);
}