function NonL = Non_Touching(i,C) %i>1   , C = loop(G);
% [ [ 1 2 3 1] [4 5 6 4]  [ 4 8 4] ]  1 2 3 1   4 5 6 4
NonL = { };   
combos = combntns(C,i);
%celldisp(combos);
rows = size(combos,1);
col= size(combos,2);
count = 1;
for  k = 1:rows 
   flagg=0;
for  n = 1:col 
arr1 = combos{k,n};
check = zeros(size(arr1));
  for m = n+1:col
  arr2= combos{k,m};
  arr = ismember(arr1,arr2);
   if(isequal(arr,check) == 0) 
       flagg=1;
       break;
   end
  end
 end
 if flagg==0 
 NonL{count}= combos(k,:);
 count = count+1;
 end
end