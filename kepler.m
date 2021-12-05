%% ex 3
function [E , i_ter] = kepler(m,ecc)
  E_i = m;
  E = m + ecc * sin(E_i);
  i_ter = 1;
  reach = 1e-6;
 while   (E - E_i) >= reach
   E_i = E;
   E = m + ecc * sin(E_i);
   i_ter = i_ter + 1;
end
endfunction
