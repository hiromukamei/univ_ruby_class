#!/usr/bin/env ruby

class Student
	attr_reader :name

	def initialize(n)
		@name = n
	end

	def affiliation
		return "#{self.university}#{self.faculty}"
	end
end

class KeioStudent < Student
	def university
		return '慶應義塾大学'
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
hanako = EStudent.new('花子')
puts "#{taro.name}は#{taro.affiliation}の学生です。"
puts "#{hanako.name}は#{hanako.affiliation}の学生です。"
