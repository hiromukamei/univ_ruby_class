#/usr/bin/env ruby

def arraycalc(x,y)
	arr = []
	x.length.times do |i|
		arr.push(yield x[i],y[i])
	end
	return arr
end

p arraycalc([1,4,8], [4,5,6]){|x,y| x*y}
