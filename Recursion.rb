#returns a list of all the fibonnaci numbers (using ITERATION)
def fibslist(n)
    array = [0, 1]
    (n-1).times do
        array << array[-1] + array[-2]
    end
    
    print array

end


#returns fibonnaci number at nth position
def singlefib(n)
    if n < 2
        n
    else
        singlefib(n-2) + singlefib(n-1)
    end
end


#returns a list of all th efibonnaci numbers (using RECURSION)
def fibs_rec(n, array)

    n.times do |n|
        array << singlefib(n)                           #uses the value of n in that particular loop to pass into singlefib where recursion then occurs
    end
    
    array

end

array = []
print fibs_rec(6, array)