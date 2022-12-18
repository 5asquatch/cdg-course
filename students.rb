#НЕ ГОТОВО!
if File.exist? ("/home/sergey/students")
    file = File.open ("/home/sergey/students")
    file_data = file.read
    puts file_data
    puts "Enter student's age:"
    age = gets.to_i 
    


    file.close 
else 
    puts "File doesn't exist"
end