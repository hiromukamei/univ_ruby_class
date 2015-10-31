#!/usr/bin/env ruby

class Account
	attr_accessor :credit

	def initialize
		@credit = 0
	end

	def deposit(sum)
		@credit += sum
	end

	def withdraw(sum)
		@credit -= sum if check(sum)
	end

	def transfer(name, sum)
		if check(sum)
			@credit -= sum
			name.credit=(name.credit+sum)
		end
	end

	def balance
		return "Your credit is #{@credit}"
	end

	def check(sum)
		unless sum > @credit
			boolean = true
		else
			boolean = false
			puts "Your request is over credit"
		end
		return boolean
	end
end

hoge = Account.new
hoge.deposit(3000)
piyo = Account.new
piyo.deposit(1000)
piyo.withdraw(500)
hoge.transfer(piyo, 2000)
puts hoge.balance
puts piyo.balance
piyo.transfer(hoge, 5000)
