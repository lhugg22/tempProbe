//Test Assembly of temperature probe

use <./vitamins/16x2_lcd.scad>
use <./vitamins/pcb.scad>
import("/Users/lou/dev/CAD/openSCAD/tempProbe/stls/arduino_nano_v3.stl", convexity=3);

translate([0,0,20]) pcb(30, 70);
translate([0,0,40]) lcd_crystal();