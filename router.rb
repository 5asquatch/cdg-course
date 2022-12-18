#НЕ ГОТОВО!
module Resource
    def connection(routes)
      if routes.nil?
        puts "No route matches for #{self}"
        return
      end
  
      loop do
        print 'Choose verb to interact with resources (GET/POST/PUT/DELETE) / q to exit: '
        verb = gets.chomp
        break if verb == 'q'
  
        action = nil
  
        if verb == 'GET'
          print 'Choose action (index/show) / q to exit: '
          action = gets.chomp
          if action == 'index'

          elsif action == 'show'
            
          end
          break if action == 'q'
        end
  
  
        action.nil? ? routes[verb].call : routes[verb][action].call
      end
    end
  end
  
  class PostsController
    extend Resource
  
    def initialize
      @posts = ["hello", "hello2"]
    end
  
    def index
        (1..@posts).each do |i|
            puts @posts[i]
        end
    end
  
    def show
      puts 'show'
    end
  
    def create
      puts 'create'
    end
  
    def update
      puts "Enter ID of post to update:"
      id = gets.to_i
      puts "Enter new text of post:"
      new_text = gets.to_s
      @posts[id] = new_text
      puts 'update'
    end
  
    def destroy 
        puts "Enter ID of post to delete:"
        id = gets.to_i
        @posts[id].destroy
    end
  end
  
  class Router
    def initialize
      @routes = {}
    end
  
    def init
      resources(PostsController, 'posts')
  
      loop do
        print 'Choose resource you want to interact (1 - Posts, 2 - Comments, q - Exit): '
        choise = gets.chomp
  
        PostsController.connection(@routes['posts']) if choise == '1'
        break if choise == 'q'
      end
  
      puts 'Good bye!'
    end
  
    def resources(klass, keyword)
      controller = klass.new
      @routes[keyword] = {
        'GET' => {
          'index' => controller.method(:index),
          'show' => controller.method(:show)
        },
        'POST' => controller.method(:create),
        'PUT' => controller.method(:update),
        'DELETE' => controller.method(:destroy)
      }
    end
  end
  
  router = Router.new
  
  router.init