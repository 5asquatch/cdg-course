#ГОТОВО?
def index (file)
    file_data = file.read
    file_split = file_data.split("\n")
    puts file_split
    file.close
end 

def find (file, id)
    file_data = file.read

    file.close
end

def where (file)
    file.close
end 

def update (file)
    file.close
end

def delete ()
    file.close
end

def create (file, add)
    File.write(file,string, mode: "a")
    file.close
end

file = File.open ("/home/sergey/students")
puts "Choose file operation:"
puts "1 - Read File"
puts "2 - Find String"
puts "3 - Where"
puts "4 - Update File"
puts "5 - Read file"
puts "6 - Delete file"
puts "7 - Add String"
op_id = gets.to_i
    case op_id
    when 1 
        index (file)
    when 7 
        puts "Enter string to add:"
        add = gets.to_s
        create (file,add)
    else
    end


