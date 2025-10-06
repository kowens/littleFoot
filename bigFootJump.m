

function bigFootY = bigFootJump (index,y,maxJump)

   %make bigFoot Jump
    bigFootJump=mod(index,2);

    if (bigFootJump == 1)
      bigFootY = y - maxJump;
    else
      bigFootY = y + maxJump;
    endif

endfunction
