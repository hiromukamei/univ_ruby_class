#!/usr/bin/env ruby

puts 'SFC学部生CNSログイン名っぽいのを区別します'

while true
	input = gets.chomp
	if /\A[ts]\d{5}[a-z]{2}\z/ =~ input
		puts 'yes'
	else
		puts 'no'
	end
end

#memo
##rubyでは正規表現の入力は複数行も可能である。
##そのため^$を使用すると行等の手前という意味になり、予期せぬ入力がmatchする。(以下例)
##^$の代わりに\A\zを使うべし!
##例
##/^https?:\/\/[^\n]+$/i この正規表現に対して以下コードがmatchする
##javascript:exploit_code();/*
##http://hi.com
##*/
