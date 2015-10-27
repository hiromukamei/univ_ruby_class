#!/usr/bin/env ruby
dictionary = {}
puts '翻訳ソフトです'

while true
	puts '英語を入力してください'
	input = gets.chomp
	if dictionary[input]
		puts "日本語: #{dictionary[input]}"
	else
		puts "辞書に登録されていません。\n#{input}の日本語訳を教えてください!"
		meaning = gets.chomp
		dictionary[input] = meaning
	end
end
