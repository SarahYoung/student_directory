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
	puts "Please enter the names of the students at Makers Academy"
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

def print_by_cohort(students)
	cohorts = students.map { |student| student[:cohort] }
	cohorts.each do |cohort|
		students.select{|student| student[:cohort] == cohort}.each do |student|
			puts "#{student[:name]}, (#{student[:cohort]} cohort)"
		end
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

students = input_students
print_header
print_by_cohort(students)
print_footer(students)