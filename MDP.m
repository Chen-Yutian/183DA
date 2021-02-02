function [rout, aout, yout, vout] = value_iteration(yin,vin,ain,horizon)

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
        vin = vin + f_net(ain,yin,ymax) + wobble(vin);
        
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
        
        % Calcualte and choose the action with max future expected reward
        % a = -1;
        [r1, a1, y1, v1] = MDP(yin,vin,-1,horizon-1);
        r1 = r1 + reward;
        % a = 0;
        [r2, a2, y2, v2] = MDP(yin,vin, 0,horizon-1);
        r2 = r2 + reward;
        % a = 1;
        [r3, a3, y3, v3] = MDP(yin,vin, 1,horizon-1);
        r3 = r3 + reward;
        
        
    end

        
end


    
