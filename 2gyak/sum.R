sum = function(x){	
	s = 0;
	for (i in 1:length(x)){
		s = s + x[i];
	}
	return(s);
}