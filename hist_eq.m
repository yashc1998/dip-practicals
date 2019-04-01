pkg load image
 
i = [1 2 3; 4 5 6; 7 8 8];
[m,n] = size(i);
 
max_i = max(max(i));
 
count = zeros(1, max_i);
 
for k = 1:m
    for j=1:n
        count(i(k,j))++;
    end
end
 
count = [790 1023 850 656 329 255 122 81];
m = 64;
n = 64;
 
pr = zeros(1, max_i);
 
for t=1:max_i
    pr(t) = count(t);
end
 
for t=1:max_i
    pr(t) = pr(t)/(m*n);
end
 
c_pr = zeros(1, max_i);
 
c_pr = pr;
 
for t = 2:max_i
    c_pr(t) += c_pr(t-1);
end
 
sk = zeros(1, max_i);
 
sk = c_pr .* (max_i - 1);
 
for t = 1:max_i
    sk(t) = round(sk(t));
end
 
 
for t=1:max_i - 2
  if (t >1)
    if(sk(t) == sk(t-1))
      count(t-1) += count(t);
      count(t) = [];
      sk(t) = [];
      t--;
      max_i--;
    endif
  endif
endfor

hist(count, sk);