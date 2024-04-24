fuggetlenseg = function(k)
{
	row = rowSums(k);
	col = colSums(k);
	n = sum(row);
	r = length(row);
	s = length(col);
	sumR = 0;

	for(i in 1:r)
	{
		sumS = 0;
		for(j in 1:s)
		{
			sumS = sumS + (((k[i,j] - (row[i] * col[j]) / n)^2) / (row[i] * col[j]));
		}
		sumR = sumR + sumS;
	}

	khi2 = n * sumR;
	
	return(khi2);
}