//pcb for making temp probe

module pcb( x_dist, y_dist) {


	rad = 0.5;
	x_buff = 5;	//both sides
	y_buff = 11;	//both sides

	x_workable = x_dist - x_buff;
	y_workable = y_dist - y_buff;

	difference(){
		union(){
			//additions
			cube(size=[x_dist, y_dist, 1.5], center=true);

			color("Silver") translate([0,y_dist/2 - 2,0]) hull(){
				translate([0,1,0]) cylinder(h=1.51, r=1, center=true, $fn=50);
				cylinder(h=1.51, r=1, center=true, $fn=50);
			}
			
		}

		union(){
			//subtractions
			translate([0,-(y_workable)/2,0]) for(iterY = [0:rad*4:y_workable]){
				translate([-(x_workable)/2,iterY,0]) for(iterX = [0:rad*4:x_workable]){
					translate([x_workable-.5-iterX,0,0]) cylinder(h=2, r=rad, center=true, $fn=50);
				}
			}
			
		}
	}
}


//usual sizes, 30x70, 50x70, 20x80, 40x60
pcb(30.25, 70);