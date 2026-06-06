/* 
    Test Grid for Sortimo H63 bins
    Version 1.0
    Copyright © 2026 By Richard A. Milewski
    All Rights Reserved
    Released under the BSD 2-Clause License
    https://opensource.org/license/bsd-2-clause
*/

include <BOSL2/std.scad>

$fn = 72;

repeat = [4,3];
unit = 24;
spacing = 52;
depth = 5;
wall = 1.5;
r = 5.5;


    grid_copies(n = repeat, spacing = spacing) 
        rect_tube(size = 24, h = depth, wall = wall, rounding = r) {
            //color("skyblue") text(str($col,",",$row), anchor = CENTER);  // Label boxes
            if (repeat.x > 1) { 
                position(RIGHT) if ($col < repeat.x - 1) {ycopies(n = 2, spacing = 11) cuboid([spacing-unit,wall,depth], anchor = LEFT);}
            }
            if (repeat.y > 1) {
                position(FWD)   if ($row > 0) {xcopies(n = 2, spacing = 11) cuboid([wall,spacing-unit,depth], anchor = BACK);}
            }

        }

    echo(spacing - 2 * unit);