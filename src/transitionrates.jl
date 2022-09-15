function alpham(u)
    numerator = 2.5-0.1*(u+65)
    denominator = exp(2.5-0.1*(u+65))-1
    numerator/denominator
end 

function betam(u)
    4*exp(-(u+65)/18)
end  


function alphan(u)
    numerator = 0.1-0.01*(u+65)
    denominator = exp(1-0.1*(u+65))-1
   return numerator/denominator
end 


function betan(u)
    return 0.125*exp(-(u+65)/80)
end

function alphah(u)
    return 0.07*exp(-(u+65)/20)
end 

function betah(u)
    numerator = 1
    denominator = exp(3.0-0.1*(u+65))+1
    return numerator/denominator
end