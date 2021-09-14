// Gmsh project created on Sat Aug 21 11:44:41 2021
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 0};
//+
Point(2) = {0, 0.584, 0, 0};
//+
Point(3) = {0.584, 0.584, 0, 0};
//+
Point(4) = {0.584, 0, 0, 0};
//+
Point(5) = {0.292, 0, 0, 0};
//+
Point(6) = {0.292, 0.048, 0, 0};
//+
Point(7) = {0.292+0.024, 0.048, 0, 0};
//+
Point(8) = {0.292+0.024, 0, 0, 0};
//+
Point(9) = {0.146, 0.046, 0, 1};
//+
Point(10) = {0.146, 0.15, 0, 1};
//+
Point(11) = {0.156, 0.15, 0, 1};
//+
Point(12) = {0.156, 0.056, 0, 1};
//+
Point(13) = {0.250, 0.046, 0, 1};
//+
Point(14) = {0.240, 0.056, 0, 1};
//+
Point(15) = {0.240, 0.150, 0, 1};
//+
Point(16) = {0.250, 0.150, 0, 1};
//+
Line(1) = {1, 5};
//+
Line(2) = {5, 6};
//+
Line(3) = {6, 7};
//+
Line(4) = {7, 8};
//+
Line(5) = {8, 4};
//+
Line(6) = {4, 3};
//+
Line(7) = {3, 2};
//+
Line(8) = {2, 1};
//+
Line(9) = {10, 11};
//+
Line(10) = {11, 12};
//+
Line(11) = {12, 14};
//+
Line(12) = {14, 15};
//+
Line(13) = {15, 16};
//+
Line(14) = {16, 13};
//+
Line(15) = {13, 9};
//+
Line(16) = {9, 10};
//+
Curve Loop(1) = {7, 8, 1, 2, 3, 4, 5, 6};
//+
Curve Loop(2) = {14, 15, 16, 9, 10, 11, 12, 13};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 0.1} {
  Surface{1}; Layers{1}; Recombine;
}
//+
Physical Surface("lefftWall") = {3, 12};
//+
Physical Surface("rightWall") = {10, 9};
//+
Physical Surface("lowerWall") = {4, 6, 8, 15};
//+
Physical Surface("atmosfere") = {2};
//+
Physical Volume("volume") = {1};
