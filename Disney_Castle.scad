$fn = 90;

difference(){
    union(){ //dranmachen
        union(){ //tuerme
            turm([0, 0, 0], 500, 60);
            turm([0, 150, 0], 300, 45);
            turm([350, 130, 0], 240, 33);
            turm([350, -130, 0], 240, 33);
            turm([270, 240, 0], 230, 22);
            turm([150, -330, 0], 240, 35);
            turm([-20, 340, 0], 240, 35);
        }
        union(){ //details fuer normale tuerme
            color("blue"){
                
                translate([350, 130, 180]){
                    cylinder(40, 45, 32);
                }
                translate([350, -130, 180]){
                    cylinder(40, 45, 32);
                }
                translate([150, -330, 180]){
                    cylinder(40, 48, 32);
                }
                translate([-20, 340, 180]){
                    cylinder(40, 48, 32);
                } 
            }
            
            color(["23, 130, 130"]){
                
                translate([350, 130, 155]){
                    cylinder(30, 36, 40);
                }
                translate([350, -130, 155]){
                    cylinder(30, 36, 40);
                }
                translate([150, -330, 155]){
                    cylinder(30, 38, 45);
                }
                translate([-20, 340, 155]){
                    cylinder(30, 38, 45);
                }
                
            }
        }    

        union(){ //boden
            color(["23, 130, 130"]){
                translate([0, 0, 0]){
                    cylinder(15, 500, 500);
                }
                translate([0, 0, 13]){
                    cylinder(17, 480, 480);
                }
            }
        } 
        union(){ //waende
            color(["23, 130, 130"]){
                translate([350, 0, 115]){
                    cube([90, 120, 230], true);
                }
                
                translate([350, 0, 100]){
                    cube([30, 210, 200], true);
                }
                translate([313, 193, 100]){
                    rotate([0, 0, 39]){
                        cube([30, 130, 200], true);
                    }
                }
            
                translate([210, 280, 100]){
                    rotate([0, 0, 60]){
                        cube([30, 130, 200], true);
                    }
                }
                translate([255, -245, 100]){
                    rotate([0, 0, -45]){
                        cube([30, 280, 200], true);
                    }
                }
                translate([70, -335, 100]){
                    rotate([0, 0, -84]){
                        cube([30, 120, 200], true);
                    }
                }
                translate([50, 335, 100]){
                    rotate([0, 0, 80]){
                        cube([30, 130, 200], true);
                    }
                }
            }
        }
        union(){ //andere tuerme
            color(["23, 130, 130"]){
                translate([-20, -350, 0]){
                    cylinder(250, 40, 40);
                }
    
                translate([-20, -350, 240]){
                    cylinder(30, 48, 48);
                }
                translate([130, 310, 140]){
                    rotate([0, 0, 72]){
                        cube([80, 80, 280], true);
                    }
                }
                translate([130, 310, 280]){
                    rotate([0, 0, 72]){
                        cube([100, 100, 40], true);
                    }
                }
                
            }
        
        
        color("gold"){
            translate([130, 310, 253]){
                rotate([0, 0, 72]){
                    cube([90, 90, 30], true);
                }
            } 
        }
    }
        
        
    }
   
    
    union(){ //wegmachen
        union(){ //tor
            translate([350, 0, 60]){
                cube([100, 60, 60], true);         
            }
            translate([300, 0, 90]){
                rotate([0, 90, 0]){
                    cylinder(100, 30, 30);         
                }
            }
        }
        union(){ //turmteile
            translate([-20, -350, 250]){
                cylinder(30, 37, 37);
            }
            translate([-20, -350, 270]){
                cylinder(30, 22, 22);
            }
            translate([130, 310, 280]){
                rotate([0, 0, 72]){
                    cube([80, 80, 80], true);
                }
            }
            
        }
            
        
    }
} 
difference(){ 
    union(){ //sachen dranmachen auf sachen die weggemacht wurden
        color(["30, 200, 200"]){
            translate([-20, -350, 260]){
                cylinder(40, 25, 25);
            }
            translate([-20, -350, 285]){
                cylinder(20, 33, 33);
            }
            translate([130, 310, 300]){
                rotate([0, 0, 72]){
                    cube([50, 50, 80], true);
                }
            }
            translate([130, 310, 330]){
                rotate([0, 0, 72]){
                    cube([60, 60, 30], true);
                }
            }

        }  
        
    }
    union(){ //sachen doppelt wegmachen
        translate([-20, -350, 292]){
            cylinder(60, 22, 22);
        }
        translate([130, 310, 340]){
                rotate([0, 0, 72]){
                    cube([40, 40, 30], true);
                }
            }
        
    }
}


    
module turm(position, hohe, dicke){
    color(["30, 200, 200"]){
        translate(position){
            cylinder(hohe, dicke, dicke);
        }
    }
    color("blue"){
        translate(position + [0, 0, hohe - 2]){
            cylinder(hohe * 0.55, dicke * 1.2, 0);
            cylinder(hohe * 0.2, dicke * 1.4, dicke * 0.6);
        }
    }
}


    
