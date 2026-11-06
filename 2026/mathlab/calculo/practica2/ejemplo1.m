coord_x = -1:0.001:1 
coord_y1 = coord_x.^2
coord_y2 = coord_x.^3
plot(coord_x,coord_y1,coord_x,coord_y2)
hold on
plot(0,0,'go', LineWidth=4)
hold off
