$fn=128;

module expected_nut_body()
{
	cylinder(r=14.35, h=5);
	cylinder(r=8, h=24);
}

module short_nut_body()
{
	cylinder(r=14.35, h=5);
	cylinder(r=8, h=11);
}

module expected_lead_nut()
{
	radius = 11;
	step = ((3.14159265 * 2) / 3);	
	difference(){
		expected_nut_body();
		translate([sin(0) * radius,cos(0) * radius,-1])cylinder(r=1.75, h=10);
		translate([sin(120) * radius,cos(120) * radius,-1])cylinder(r=1.75, h=10);
		translate([sin(-120) * radius,cos(-120) * radius,-1])cylinder(r=1.75, h=10);
		translate([0,0,-0.05])cylinder(r=4.2, h=25);
	}
}

module expected_lead_nut_nobolt()
{
	radius = 11;
	step = ((3.14159265 * 2) / 3);	
	difference(){
		expected_nut_body();
		translate([0,0,-0.05])cylinder(r=4.2, h=25);
	}
	translate([sin(0) * radius,cos(0) * radius,0])cylinder(r=1.5, h=10);
	translate([sin(120) * radius,cos(120) * radius,0])cylinder(r=1.5, h=10);
	translate([sin(-120) * radius,cos(-120) * radius,0])cylinder(r=1.5, h=10);
}

module short_lead_nut_nobolt()
{
	radius = 11;
	step = ((3.14159265 * 2) / 3);	
	difference(){
		short_nut_body();
		translate([0,0,-0.05])cylinder(r=4.2, h=25);
	}
	translate([sin(0) * radius,cos(0) * radius,0])cylinder(r=1.5, h=10);
	translate([sin(120) * radius,cos(120) * radius,0])cylinder(r=1.5, h=10);
	translate([sin(-120) * radius,cos(-120) * radius,0])cylinder(r=1.5, h=10);
}

expected_lead_nut();
