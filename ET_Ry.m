function ET_Ry = ET_Ry(bet)
ET_Ry = [   cos(bet)    0   sin(bet)    0;
            0           1   0           0; 
            -sin(bet)   0   cos(bet)    0;
            0           0   0           1];