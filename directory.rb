student_count = 23

students = [
 ["Mario Gintili", :February],
 ["Rick Brunstedt", :February],
 ["Mikhail Dubov", :February],
 ["Karolis Noreika", :February],
 ["Michael Sidon", :February],
 ["Charles de Barros", :February],
 ["Ruslan Vikhor", :February],
 ["Toby Retallick", :February],
 ["Mark Mekhail", :February],
 ["Sarah Young", :February],
 ["Hanna Wight", :February],
 ["Khushkaren Singh", :February],
 ["Manjit Singh", :February],
 ["Alex Gaudiosi", :February],
 ["Ross Hepburn", :February],
 ["Natascia Marchese", :February],
 ["Tiffanie Chia", :February],
 ["Matthew Thomas", :February],
 ["Freddy McGroarty", :February],
 ["Tyler Rollins", :February],
 ["Richard Curteis", :February],
 ["Anna Yanova", :February],
 ["Andrew Cumine", :February]
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end

def print(students)
	students.each do |student|
		puts "#{student[0]} (#{student[1]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)