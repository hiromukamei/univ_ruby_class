#!/usr/bin/env ruby

puts "素数判定プログラムです。\n自然数を入力してください。"

class Test
	def sosu(num)
		if num <= 1
			return false
		elsif num == 2
			return true
		else
			for i in 2...num
				if num % i == 0
					return false
				else
					return true
				end
			end
		end
	end
end

input_num = gets.chomp!.to_i

test1 = Test.new
boolean = test1.sosu(input_num)
if boolean == true
	puts "素数です。"
elsif boolean == false
	puts "素数ではないです。"
end
