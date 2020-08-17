//draw_text_outlined_extra(x, y, outline color, string color, string, x_scale, y_scale, angle)  
var xx,yy;  
xx = argument0;  
yy = argument1;  

//Outline  
draw_set_color(argument2);  
draw_text_transformed(xx+1, yy+1, argument4, argument5, argument6, argument7);  
draw_text_transformed(xx-1, yy-1, argument4, argument5, argument6, argument7);  
draw_text_transformed(xx,   yy+1, argument4, argument5, argument6, argument7); 
draw_text_transformed(xx+1,   yy, argument4, argument5, argument6, argument7); 
draw_text_transformed(xx,   yy-1, argument4, argument5, argument6, argument7); 
draw_text_transformed(xx-1,   yy, argument4, argument5, argument6, argument7); 
draw_text_transformed(xx-1, yy+1, argument4, argument5, argument6, argument7); 
draw_text_transformed(xx+1, yy-1, argument4, argument5, argument6, argument7); 

//Text  
draw_set_color(argument3);  
draw_text_transformed(xx, yy, argument4, argument5, argument6, argument7); 