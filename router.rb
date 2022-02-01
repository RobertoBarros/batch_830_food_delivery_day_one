class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts '-' * 30
    puts '1. Create a new Meal'.red_on_blue
    puts '2. List all meals'.red_on_blue
    puts '-' * 30
    puts '3. Create a new Customer'.red_on_blue
    puts '4. List all customers'.red_on_blue
    puts '-' * 30
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    end
  end
end
