#!/usr/bin/env ruby

num_array = [0,100]
range = 1..99 #入力可能range

while true
	puts "1~99の数字を入力してください"
	input = gets.chomp!.to_i
	unless range.include?(input) #入力が範囲内か調べる
		puts "入力が範囲外です" 
		break
	end
	count = 0 #何番目の配列を比較してるかcountする

	num_array.each do |i|
		if input <= i
			num_array[count,0] = input #配列の数字がinputと同じ、またはそれより大きくなった時にその数字の前にinputを挿入する
			break
		end
		count += 1
	end
	p num_array
end

