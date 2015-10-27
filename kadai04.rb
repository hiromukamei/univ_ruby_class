#!/usr/bin/env ruby

puts "素数判定プログラムです。\n2以上の自然数を入力してください。"

class Test
	def sosu(num)
		return true if num == 2
		for i in 2...num
			if num % i == 0
				return false
			else
				return true
			end
		end
	end
end

begin #実行する処理
	input_num = gets.chomp!.to_i
	raise "The inputed number is smaller than 2" if input_num <= 1 #例外を引き起こす
rescue => e #例外が発生した時に実行される
	p e
else #例外が発生しなかった時に実行される
	puts "2以上が入力されました"
ensure #例外の発生有無にかかわらず最後に必ず実行する処理
	puts "#{input_num} was inputed"
end

test1 = Test.new
boolean = test1.sosu(input_num)
if boolean == true
	puts "素数です。"
elsif boolean == false
	puts "素数ではないです。"
end
