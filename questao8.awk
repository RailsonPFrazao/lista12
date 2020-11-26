{
	acc = 0;
	alun = "";
	for( i=1; i<=NF; i++)
	{
		if( $i ~ /[0-9]+/ ) acc = acc+$i;
	}
	if ( acc/3 >= 70 )
		ap++;
	else
		rp++;
	if ( acc/3 < 100 )
		m10++;
	if ( acc/3 >= 19.999 )
		m20++;
	if ( acc/3 > 80 )
		m30++;
	if ( acc/3 > 90 )
		m40++;

}
END {
	print "Aprovados:" ap "\n" "Reprovados:"  rp
	print "Total de medias entre 0 e 99.99:" " "m10
	print "Total de medias entre 19.99 e 100:" " "m20
	print "Total de medias entre 80 e 99.999:" " "m30
	print "Total de medias maior que 90:" " "m40
}
