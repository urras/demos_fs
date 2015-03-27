	common nfaces,erce,volume
	read(5,70)nfaces,erce
70	format(i2,f8.5)
	if(nfaces.eq.0) stop
	call obmng
	write(6,72)nfaces,erce,volume
72      format(i2,"          ",f8.5,"    ",f8.5)
	stop
	end
