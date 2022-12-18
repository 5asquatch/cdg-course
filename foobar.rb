#ГОТОВО
def foobar (x,y)
    if x == 20
        result = y
    elsif y == 20
        result = x
    else
        result = x + y
    end
    print "Result = #{result}\n"
end

print "Enter first number: "
x = gets.to_i
print "Enter first number: "
y = gets.to_i
puts foobar(x,y)