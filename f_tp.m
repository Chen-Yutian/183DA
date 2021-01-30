% Transitional probability
function pout = f_tp(vt1, vt, fnet, yt1, yt)

    if (vt1 == vt + fnet +1) && (yt1 == yt + vt)
        pout = (vt/vmax) * pw * 0.5 * (1 - pc*abs(vt)/vmax);

    elseif (vt1 == vt + fnet) && (yt1 == yt + vt)
        pout = (1-(vt/vmax) * pw * 0.5) * (1 - pc*abs(vt)/vmax);

    elseif (vt1 == vt + fnet - 1) && (yt1 == yt + vt)
        pout = (vt/vmax) * pw * 0.5 * (1 - pc*abs(vt)/vmax);

    elseif (vt1 == 0) && (yt1 == yt + vt)
        pout = pc * abs(vt)/vmax;

    else
        pout = 0;
    
end