#ГОТОВО
def greetengs (name,age)
    if age >= 18
        print name + "cамое время заняться делом!"
    else 
        print name + "тебе меньше 18ти, но учиться программировать никогда не рано"
    end
end

print "Enter your name: "
name = gets.to_s
print "Enter your age: "
age = gets.to_i
puts greetengs(name,age)