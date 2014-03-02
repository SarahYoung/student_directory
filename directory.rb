def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def input_cohort
	months = ["January", "February", :default]
	begin
		puts "Enter the cohort\n" 
		cohort = gets.chop
		cohort = :default if cohort.empty?
	end while !months.include?(cohort)
	cohort
end

def input_students 
	puts "Please enter the names of the students at Makers Academy"
	puts "To finish, just hit return twice"
	students = []
	begin
		name = gets.chop
		if !name.empty?
			cohort = input_cohort 
			students << {:name => name, :cohort => cohort.to_sym}
			if students.length > 1
				puts "We have #{students.length} students, please enter another name:"
			else
				puts "We have #{students.length} student, please enter another name:"
			end
		end 
	end while !name.empty? 
	students
end

def print_students(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]})"
	end
end

def print_footer(names)
	if names.length > 1
		puts "Overall, we have #{names.length} great students"
	else
		puts "Overall, we have #{names.length} great student"
	end
end

students = input_students
print_header
print_students(students)
print_footer(students)