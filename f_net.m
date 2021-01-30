function yout = f_net(a_t,y,ymax)
    yout = a_t + round(A * sin(2*pi*y/ymax));
end