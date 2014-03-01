students = [
 {:name => "Mario Gintili", :cohort => :February, :hobby => "coding"},
 {:name => "Rick Brunstedt", :cohort => :February, :hobby => "coding"},
 {:name => "Mikhail Dubov", :cohort => :February, :hobby => "coding"},
 {:name => "Karolis Noreika", :cohort => :February, :hobby => "coding"},
 {:name => "Michael Sidon", :cohort => :February, :hobby => "coding"},
 {:name => "Charles de Barros", :cohort => :February, :hobby => "coding"},
 {:name => "Ruslan Vikhor", :cohort => :February, :hobby => "coding"},
 {:name => "Toby Retallick", :cohort => :February, :hobby => "coding"},
 {:name => "Mark Mekhail", :cohort => :February, :hobby => "coding"},
 {:name => "Sarah Young", :cohort => :February, :hobby => "coding"},
 {:name => "Hanna Wight", :cohort => :February, :hobby => "coding"},
 {:name => "Khushkaren Singh", :cohort => :February, :hobby => "coding"},
 {:name => "Manjit Singh", :cohort => :February, :hobby => "coding"},
 {:name => "Alex Gaudiosi", :cohort => :February, :hobby => "coding"},
 {:name => "Ross Hepburn", :cohort => :February, :hobby => "coding"},
 {:name => "Natascia Marchese", :cohort => :February, :hobby => "coding"},
 {:name => "Tiffanie Chia", :cohort => :February, :hobby => "coding"},
 {:name => "Matthew Thomas", :cohort => :February, :hobby => "coding"},
 {:name => "Freddy McGroarty", :cohort => :February, :hobby => "coding"},
 {:name => "Tyler Rollins", :cohort => :February, :hobby => "coding"},
 {:name => "Richard Curteis", :cohort => :February, :hobby => "coding"},
 {:name => "Anna Yanova", :cohort => :February, :hobby => "coding"},
 {:name => "Andrew Cumine",:cohort => :February, :hobby => "coding"}
]


def print_header
	puts "The students of my cohort at Makers Academy".center(100)
	puts "-----------------".center(100)
end

def print(students)
	i = 0
	student = {}
	while i < students.length
		student = students[i]
		puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort), hobby: #{student[:hobby]}".center(100)
		i += 1
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students".center(100)
end

print_header
print(students)
print_footer(students)