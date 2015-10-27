#!/usr/bin/env ruby

max_length = 0 #最大文字数をカウントする変数
str_array = []

File.open('./words_for_kadai09.txt','r') do |f|
	f.each_line do |line|
		line.chomp!
		if line.length > max_length
			max_length = line.length #最大文字数を更新
			str_array = Array.new #配列を初期化
			str_array.push(line) #最大文字数の文字列を配列に追加
		elsif line.length == max_length
			str_array.push(line) #最大文字数の文字列を配列に追加
		end
	end
end

p str_array
