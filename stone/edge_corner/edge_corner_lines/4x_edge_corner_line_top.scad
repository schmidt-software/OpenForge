include <4x_edge_corner_lines.scad>
//  { 'back1': [55, 60, 2, 3, 28, 18, 13, 48, 39, 5, 30],
//    'back2': [12, 11, 46, 0, 7, 36, 1, 23, 34, 11, 14],
//    'interior1': [62, 29,  1, 31, 61, 21, 56, 4, 35, 50],
//    'interior2': [52, 25, 17, 29, 19,  6, 63, 35, 45, 2],
//    'sides': [24, 1]},
//    'top': [30, 12, 43, 45, 10, 36, 55, 18, 51, 31, 39, 0, 42, 21, 20, 33, 57, 27, 37, 58, 54]);

union() {
  4x_static_edge_corner_line(
    [55, 60, 2, 3, 28, 18, 13, 48, 39, 5, 30],
    [12, 11, 46, 0, 7, 36, 1, 23, 34, 11, 14],
    [62, 29, 1, 31, 61, 21, 56, 4, 35, 50],
    [52, 25, 17, 29, 19, 6, 63, 35, 45, 2],
    [24,1]);
  translate([0,0,7]) 4x_static_edge_corner_top(
    [30, 12, 43, 45, 10, 36, 55, 18, 51, 31, 39, 0, 42, 21, 20, 33, 57, 27, 37, 58, 54]);
}
