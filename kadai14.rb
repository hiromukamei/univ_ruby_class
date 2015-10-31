#!/usr/bin/env ruby

class Student
    attr_reader :name

	def initialize(n)
		@name = n
	end

	def affiliation
		return university + faculty
	end
end

class KeioStudent < Student
	def university
		return '慶應義塾大学'
	end

	def transfer(f)
		@faculty = f
		def self.faculty
			return @faculty
		end
	end
end

class PStudent < KeioStudent
	def faculty
		return '総合政策学部'
	end
end

class EStudent < KeioStudent
	def faculty
		return '環境情報学部'
	end
end

taro = PStudent.new('太郎')
puts "#{taro.name}は#{taro.affiliation}の学生です。"
taro.transfer('環境情報学部')
puts "#{taro.name}は#{taro.affiliation}の学生です。"
