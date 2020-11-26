{
	acc = 0;
	alun = "";
	for( i=1; i<=NF; i++)
	{
		if( $i ~ /[0-9]+/ ) acc = acc+$i;
		if( $i ~ /[a-z]+/ ) alun = alun" " $i;
	}
	if ( acc/3 >= 70 ) print alun" " acc/3

}
