include <3x_edge_corner_lines.scad>
//  { 'back1': [33, 19, 5, 56, 4, 30, 21, 11, 34],
//    'back2': [7, 35, 10, 12, 24, 16, 42, 46, 61],
//    'interior1': [63, 26, 32, 54, 22, 55, 60, 47], -> 63, 26, 32, 54, 60, 22, 19, 20
//    'interior2': [57, 9, 20, 17, 53, 0, 40, 45],
//    'sides': [51, 13]},

3x_static_edge_corner_line(
  [33, 19, 5, 56, 4, 30, 21, 11, 34],
  [7, 35, 10, 12, 24, 16, 42, 46, 61],
  [63, 26, 32, 54, 60, 22, 19, 20],
  [57, 9, 20, 17, 53, 0, 40, 45],
  [51, 13]);
