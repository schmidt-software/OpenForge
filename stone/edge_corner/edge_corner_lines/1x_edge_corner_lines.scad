include <forge_lib.scad>

module 1x_edge_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 16, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,24,7]);
    translate([0,24,0]) cube([23+9.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) rand_face(seed_vect[0]);
      translate([0,14,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[1]);
      translate([0,23,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[2]);
      translate([0,32,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[3]);
    }
    translate([0,24+8.2+manifold,0]) union() {
      translate([9,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[4]);
      translate([18,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[5]);
      translate([27,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[6]);
      translate([32,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) rand_face(seed_vect[7]);
    }
    translate([0,24-manifold,0]) union() {
      translate([9,0,0]) scale([0.9,1,1]) rand_face(seed_vect[8]);
      translate([18,0,0]) scale([0.9,1,1]) rand_face(seed_vect[9]);
      translate([27,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[10]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) rand_face(seed_vect[11]);
      translate([0,5,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[12]);
      translate([0,14,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[13]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[14]);
    translate([24+8.2+manifold,24,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[15]);
  }
}
      
module 1x_static_edge_corner_line(back1, back2, interior1, interior2, side, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,24,7]);
    translate([0,24,0]) cube([23+9.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,5,7]) rotate([0,90,270]) scale([7/10,1,5/7]) static_face(back1[0]);
      translate([0,14,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[1]);
      translate([0,23,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[2]);
      translate([0,32,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[3]);
    }
    translate([0,24+8.2+manifold,0]) union() {
      translate([9,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[0]);
      translate([18,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[1]);
      translate([27,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[2]);
      translate([32,0,7]) rotate([0,90,180]) scale([7/10,1,5/7]) static_face(back2[3]);
    }
    translate([0,24-manifold,0]) union() {
      translate([9,0,0]) scale([0.9,1,1]) static_face(interior1[0]);
      translate([18,0,0]) scale([0.9,1,1]) static_face(interior1[1]);
      translate([27,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(interior1[2]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,7]) rotate([0,90,90]) scale([7/10,1,5/7]) static_face(interior2[0]);
      translate([0,5,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[1]);
      translate([0,14,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[2]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([24+8.2+manifold,24,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 1x_stagger_edge_corner_line(sc, seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 14, seed=seed);
  
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,24,7]);
    translate([0,24,0]) cube([23+9.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,9,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[0]);
      translate([0,18,0]) rotate([0,0,270]) scale([0.9,1,1]) rand_face(seed_vect[1]);
      translate([0,32,0]) rotate([0,0,270]) scale([1.4,1,1]) rand_face(seed_vect[2]);
    }
    translate([0,24+8.2+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) rand_face(seed_vect[3]);
      translate([23,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[4]);
      translate([32,0,0]) rotate([0,0,180]) scale([0.9,1,1]) rand_face(seed_vect[5]);
    }
    translate([0,24-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) rand_face(seed_vect[6]);
      translate([14,0,0]) scale([0.9,1,1]) rand_face(seed_vect[7]);
      translate([23,0,0]) scale([0.9,1,1]) rand_face(seed_vect[8]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[9]);
      translate([0,9,0]) rotate([0,0,90]) scale([0.9,1,1]) rand_face(seed_vect[10]);
      translate([0,18,0]) rotate([0,0,90]) scale([1,1,1]) rand_face(seed_vect[11]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) rand_face(seed_vect[12]);
    translate([24+8.2+manifold,24,0]) rotate([0,0,90]) scale([.82,1,1]) rand_face(seed_vect[13]);
  }
}

module 1x_static_stagger_edge_corner_line(back1, back2, interior1, interior2, side, manifold=-0.05) {
  translate([1,1,0]) scale([1,1,1+sc]) union() {
    translate([0,0,0]) cube([8.2,24,7]);
    translate([0,24,0]) cube([23+9.2,8.2,7]);
    translate([-manifold,0,0]) union() {
      translate([0,9,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[0]);
      translate([0,18,0]) rotate([0,0,270]) scale([0.9,1,1]) static_face(back1[1]);
      translate([0,32,0]) rotate([0,0,270]) scale([1.4,1,1]) static_face(back1[2]);
    }
    translate([0,24+8.2+manifold,0]) union() {
      translate([14,0,0]) rotate([0,0,180]) scale([1.4,1,1]) static_face(back2[0]);
      translate([23,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[1]);
      translate([32,0,0]) rotate([0,0,180]) scale([0.9,1,1]) static_face(back2[2]);
    }
    translate([0,24-manifold,0]) union() {
      translate([4,0,0]) scale([1,1,1]) static_face(interior1[0]);
      translate([14,0,0]) scale([0.9,1,1]) static_face(interior1[1]);
      translate([23,0,0]) scale([0.9,1,1]) static_face(interior1[2]);
    }
    translate([8.2+manifold,0,0]) union() {
      translate([0,0,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[0]);
      translate([0,9,0]) rotate([0,0,90]) scale([0.9,1,1]) static_face(interior2[1]);
      translate([0,18,0]) rotate([0,0,90]) scale([1,1,1]) static_face(interior2[2]);
    }
    translate([0,-manifold,0]) rotate([0,0,0]) scale([.82,1,1]) static_face(side[0]);
    translate([24+8.2+manifold,24,0]) rotate([0,0,90]) scale([.82,1,1]) static_face(side[1]);
  }
}

module 1x_edge_corner_top(seed, manifold=-0.05) {
  seed_vect = rands(0, 100, 7, seed=seed);
  translate([0,24,manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([10,0,0]) scale([.9,1,1]) rand_face(seed_vect[0]);
      translate([19,0,0]) scale([.9,1,1]) rand_face(seed_vect[1]);
      translate([28,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) rand_face(seed_vect[2]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([0.9,1,1]) rand_face(seed_vect[3]);
      translate([0,-18,0]) rotate([-90,0,90]) scale([0.9,1,1]) rand_face(seed_vect[4]);
      translate([0,-18,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) rand_face(seed_vect[5]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) rand_face(seed_vect[6]);
  }
}

module 1x_static_edge_corner_top(top, manifold=-0.05) {
  translate([0,24,manifold]) union() {
    translate([0,1,0]) rotate([-90,0,0]) scale([1,1,8.2/7]) union() {
      translate([10,0,0]) scale([.9,1,1]) static_face(top[0]);
      translate([19,0,0]) scale([.9,1,1]) static_face(top[1]);
      translate([28,0,7]) rotate([0,90,0]) scale([7/10,1,5/7]) static_face(top[2]);
    }
    translate([9.2,0,0]) scale([8.2/7,1,1]) union () {
      translate([0,-9,0]) rotate([-90,0,90]) scale([0.9,1,1]) static_face(top[3]);
      translate([0,-18,0]) rotate([-90,0,90]) scale([0.9,1,1]) static_face(top[4]);
      translate([0,-18,0]) rotate([-90,0,180]) scale([7/10,1,5/7]) static_face(top[5]);
    }
    translate([10,0,0]) rotate([-90,0,90]) scale([0.9,1,9/7]) static_face(top[6]);

  }
}

//seed_vect = rands(0, 100, 2);
//1x_edge_corner_line(0, seed_vect[0]);
//translate([0,0,7]) 1x_edge_corner_top(seed_vect[1]);
//1x_stagger_edge_corner_line(0, seed_vect[0]);