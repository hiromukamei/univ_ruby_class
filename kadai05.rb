#!/usr/bin/env ruby

puts "素数判定プログラムです。\n2以上の自然数を入力してください。"

begin #実行する処理
	num = gets.chomp!.to_i
	raise "The inputed number is smaller than 2" if num <= 1 #例外を引き起こす
rescue => e #例外が発生した時に実行される
	p e
else #例外が発生しなかった時に実行される
	result =  catch(:comment) do
		if num == 2
			throw :comment, "素数です。"
		else
			for i in 2...num
				if num % i == 0
					throw :comment, "素数ではないです。"
				else
					throw :comment, "素数です。"
				end
			end
		end  
	end
	puts result
end
