def input_students
	puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
		students = []
		name = gets.chomp
		while !name.empty? do
			students << {:name => name, :cohort => :February}
			puts "Now we have #{students.length} students"
			name = gets.chomp
		end
		students
end

def print_header
	puts "The students of my cohort at Makers Academy whose names are less than 12 characters"
	puts "-----------------"
end

def print(students)
	students.each do |student|
		if student[:name].length < 12
			puts "#{student[:name]} (#{student[:cohort]} cohort)"
		end
	end	
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

students = input_students
print_header
print(students)
print_footer(students)