def input_students
	print "Please enter the names of the students\nTo finish, just hit return twice\n"
		students = []
		name = gets.chomp
		while !name.empty? do
			students << {:name => name, :cohort => :February}
			print "Now we have #{students.length} students\n"
			name = gets.chomp
		end
		students
end

def display_header
	print "The students of my cohort at Makers Academy\n-----------------\n"
end

def display(students)
	students.each do |student|
		print "#{student[:name]} (#{student[:cohort]} cohort)\n"
	end
end

def display_footer(names)
	print "Overall, we have #{names.length} great students\n"
end

students = input_students
display_header
display(students)
display_footer(students)