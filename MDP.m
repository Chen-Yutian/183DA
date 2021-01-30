function [rout, aout, yout, vout] = MDP(yin,vin,ain,horizon)

    reward = 0;
    
    if yin == 0
        reward = 1;
    end
    
    if horizon == 0
        rout = reward;
        aout = 0;
        yout = yin;
        vout = vin;
    else
        yin = yin + vin;
        vin = vin + f_net(ain,yin,ymax);
        
        if yin > ymax
            yin = ymax;
        end
        if yin < -ymax
            yin = -ymax;
        end
        if vin > vmax
            vin = vmax;
        end
        if vin < -vmax
            vin = -vmax;
        end
        
        
    end

        
end



    yt1 = yt + vt;
    vt1 = vt + a + f_phi(y,ymax);
    
