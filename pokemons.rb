# Список выводится не так как нужно, но я не смог придумать как сделать по-другому. Помогите...
# Более того, при выводе строк я почему то вижу "/n" хотя кажется не должен
def pokemons (number)
    pokemons = []
    (1..number).each do |i|
        puts "Enter pokemon's name:"
        name = gets.to_s
        puts "Enter pokemon's color:"
        color = gets.to_s
        pokemon = {name: name,color: color}
        pokemons << pokemon
    end
    
    puts pokemons
end

puts "How many pokemons needs to add?"
number = gets.to_i
pokemons (number)
