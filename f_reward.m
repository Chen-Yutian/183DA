% Reward Function
function reward = f_reward(yt1,vt1)

    if (yt1 == 0) && (vt1 == 0)
        reward = 1;
    else
        reward = 0;

end