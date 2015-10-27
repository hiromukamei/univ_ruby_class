#/usr/bin/env ruby

weight = [1,2,3,10,20]
available = []

for i in 1..weight.length do
	c =  weight.combination(i).to_a
	c.each do |a|
		sum = 0
		a.each do |num|
			sum += num
			available.push(sum) unless available.include?(sum) #availableに含まれてなければ追加
		end
	end
end

available.sort! #小さい順にソート
p available
