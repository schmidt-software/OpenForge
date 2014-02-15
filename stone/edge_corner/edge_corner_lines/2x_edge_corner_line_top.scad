include <2x_edge_corner_lines.scad>
//  { 'back1': [23, 3, 27, 4, 25, 5],
//    'back2': [42, 18, 48, 8, 30, 61],
//    'interior1': [45, 39, 51, 6, 10], -> 45, 39, 51, 6, 31
//    'interior2': [0, 9, 11, 50, 37],
//    'sides': [41, 26]},
//  { 'back1': [],
//    'back2': [],
//    'interior1': [],
//    'interior2': [],
//    'sides': [49, 21, 45, 2, 55, 30, 11, 0, 3, 8, 61]}] -> 13, 21, 45, 2, 55, 30, 11, 0, 3, 8, 51

union() {
  2x_static_edge_corner_line([23, 3, 27, 4, 25, 5], [42, 18, 48, 8, 30, 61], [45, 39, 51, 6, 31], [0, 9, 11, 50, 37], [41, 26]);
  translate([0,0,7]) 2x_static_edge_corner_top([13, 21, 45, 2, 55, 30, 11, 0, 3, 8, 51]);
}