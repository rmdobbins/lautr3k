$fn=128;

module nut_body()
{
	translate([0,0,1.5])cylinder(r=11, h=3.5);
	cylinder(r=5.41, h=30);
}

module lead_nut()
{
	difference(){
		nut_body();
		translate([0,0,-1])cylinder(r=4, h=20);
		translate([8,0,-1])cylinder(r=1.75, h=10);
		translate([-8,0,-1])cylinder(r=1.75, h=10);
		translate([0,8,-1])cylinder(r=1.75, h=10);
		translate([0,-8,-1])cylinder(r=1.75, h=10);
	}
}

module lead_nut_cutout(){
	nut_body();
	translate([8,0,-1])cylinder(r=1.75, h=20);
	translate([-8,0,-1])cylinder(r=1.75, h=20);
	translate([0,8,-1])cylinder(r=1.75, h=20);
	translate([0,-8,-1])cylinder(r=1.75, h=20);
}

module lead_nut_cutout_screw(){
	nut_body();
	translate([8,0,-1])cylinder(r=1.5, h=10);
	translate([-8,0,-1])cylinder(r=1.5, h=10);
	translate([0,8,-1])cylinder(r=1.5, h=10);
	translate([0,-8,-1])cylinder(r=1.5, h=10);
}

lead_nut();
