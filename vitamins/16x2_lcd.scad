//making a model of the 16x2 lcd screen



module lcd_crystal() {

	x_pcb = 36.12;
	y_pcb = 80.14;
	z_pcb = 1.88;

	x_screen = 24.35;
	y_screen = 71.19;
	z_screen = 7.01;

	difference(){
		union(){
			//additions

			//pcb
			color("darkgreen") cube(size=[x_pcb, y_pcb, z_pcb], center=true);

			//screen
			translate([-1,0,(z_pcb + z_screen)/2]) color("black") cube( size=[x_screen, y_screen, z_screen], center=true);

			//tread on bottom
			translate([12.6 - 4.55, 0, -(z_pcb+2)/2]) color("black") cube(size=[4.55, 5.6, 2], center=true);
			translate([-(12.6 - 4.55), 0, -(z_pcb+2)/2]) color("black") cube(size=[4.55, 5.6, 2], center=true);
			translate([12.6 - 4.55, 28.4, -(z_pcb+2)/2]) color("black") cube(size=[4.55, 5.6, 2], center=true);
			translate([-(12.6 - 4.55), 28.4, -(z_pcb+2)/2]) color("black") cube(size=[4.55, 5.6, 2], center=true);
			translate([12.6 - 4.55, -28.4, -(z_pcb+2)/2]) color("black") cube(size=[4.55, 5.6, 2], center=true);
			translate([-(12.6 - 4.55), -28.4, -(z_pcb+2)/2]) color("black") cube(size=[4.55, 5.6, 2], center=true);

		}

		union(){
			//subtractions

			//mounting holes
			translate([x_pcb/2 - 2.35, y_pcb/2 - 2.35, 0]) cylinder(h=3, r=1.5, center=true, $fn=50);
			translate([-(x_pcb/2 - 2.35), y_pcb/2 - 2.35, 0]) cylinder(h=3, r=1.5, center=true, $fn=50);
			translate([-(x_pcb/2 - 2.35), -(y_pcb/2 - 2.35), 0]) cylinder(h=3, r=1.5, center=true, $fn=50);
			translate([x_pcb/2 - 2.35, -(y_pcb/2 - 2.35), 0]) cylinder(h=3, r=1.5, center=true, $fn=50);
		}
	}
}

lcd_crystal();