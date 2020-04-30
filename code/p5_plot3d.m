function p5_plot3d
	x = linspace(-2,2,500);
	y=linspace(-2,2,500);
	[xx,yy] = meshgrid(x,y);
	mesh(xx,yy,4-(xx.^2+yy.^2));

end