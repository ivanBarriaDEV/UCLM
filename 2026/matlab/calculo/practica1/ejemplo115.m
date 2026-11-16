a_n = zeros(1,11)
a_n(1) = sqrt(2)
for i = 2:11
    a_n(i) = sqrt(2 + a_n(i-1))
end