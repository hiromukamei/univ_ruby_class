#!/usr/bin/env ruby

selected_num = rand(0..99)
puts "コンピューターが選んだ0から99までの数字を当てるプログラムです。\n0から99までの数字を入力してください。"

while
	input_num = gets.chomp!.to_i
	if input_num > selected_num
		puts "入力された数字は正解よりも大きいです。\nもう一度入力してください。"
	elsif input_num < selected_num
		puts "入力された数字は正解よりも小さいです。\nもう一度入力してください。"
	else
		puts "正解です!"
		break
	end
end
