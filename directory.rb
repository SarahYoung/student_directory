def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def input_cohort
	months = ["January", "February", :default]
	begin
		puts "Enter the cohort" 
		cohort = gets.chomp
		cohort = :default if cohort.empty?
	end while !months.include?(cohort)
	cohort
end

def input_students 
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	students = []
	begin
		name = gets.chomp
		if !name.empty?
			cohort = input_cohort 
			students << {:name => name, :cohort => cohort.to_sym} 
			puts "We have #{students.length} students, please enter another name:"
		end 
	end while !name.empty? 
	students
end

def print(students)
	a = 0
	while a < students.length
		puts "#{students[a][:name]} (#{students[a][:cohort]} cohort)"
		a += 1
	end		
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end


print_header
students = input_students
# print(students)
print_footer(students)