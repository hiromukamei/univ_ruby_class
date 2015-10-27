#!/usr/bin/env ruby

puts "入力された数字に対応するピラミッドを作成するプログラムです。\n数字を入力してください。"
num = gets.chomp!.to_i

for i in 1..num
	(num-i).times do
		print ' '
	end
	(2*i-1).times do
		print '*'
	end
	print "\n"
end
