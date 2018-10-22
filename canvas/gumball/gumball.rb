# The following code is a sample implementation of the Gumball Machine. 
# Complete the Ruby code for this MVC Gumball Machine app. The comments 
# (starting with a #) will tell you where you need to add your code.

class Gumball
end

class GumballMachineModel

  def initialize(gumballCount: 0)
    # fill in this line
    @gumballCount = gumballCount
  end
  
  def dispense
    if @gumballCount > 0
      @gumballCount -= 1
      return Gumball.new
    else
      return nil
    end
  end

  def refill(count)
    @gumballCount += count
  end

end

class GumballMachineView

  def greeting
    # output a greeting message to the console
    puts "Hi i'm a gumball machine!"
  end

  def menu
    choice = nil
    while choice != "G" && choice != "R" && choice != "X"
      puts "Press G to get a gumball, R to refill, or X to exit"
      choice = gets.chomp.upcase
    end
    
    choice
  end

  def getGumball
    puts "Yum, here's your gumball"
  end

  def machineEmpty
    # output an appropriate message to the console
    puts "the gumball machine is empty!"
    
  end

  def refill(count)
    # output an appropriate message to the console.
    # Make sure you tell the user how many gumballs there are now!
    puts "you have filled the machine with #{count} gumballs"
  end

  def exit
    # output an appropriate message to the console
    puts "gumbaiiii!"
  end

end

class GumballMachineController

  def initialize
    @gumballMachineModel = GumballMachineModel.new
    @gumballMachineView = GumballMachineView.new
  end

  def run
    @gumballMachineView.greeting
    choice = @gumballMachineView.menu 
    
    while choice != "X"
      if choice == "G"
        gumball = @gumballMachineModel.dispense
        if gumball.nil?
          @gumballMachineView.machineEmpty
        else
          # fill in this line
          @gumballMachineModel.dispense
          @gumballMachineView.getGumball
        end
      end
      if choice == "R"
        numGumballs = @gumballMachineModel.refill(6)
        @gumballMachineView.refill(5) # put something inside the brackets
      end
      choice = @gumballMachineView.menu
    end
    # call the exit method
    @gumballMachineView.exit
  end
end

gumballMachineController = GumballMachineController.new
gumballMachineController.run