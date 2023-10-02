#!/usr/bin/env python

import math

def get_pose(a, b, c, d, e, f):

    level = ""
    with open("stacklevel.txt", "r") as file:
        lines = file.readlines()
        if lines:
            level = lines[-1].strip()
            print(level)
        else:
            return a, b, c, d, e, f
    
    if level == "base":
        return a, b + (4.5*(math.pi/180)), c, d, e, f

    elif level == "middle":
        return a, b + (1.5*(math.pi/180)), c, d, e, f

    else:
        return a, b - (1.5*(math.pi/180)), c, d, e, f
