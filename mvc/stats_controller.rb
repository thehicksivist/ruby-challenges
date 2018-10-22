require_relative 'stats_view'
require_relative 'stats_model'


class StatsController
    def initialize
        @model = StatsModel.new
        @view = StatsView.new

    end
    def run
        @view.greeting
    choice = 0
    until choice == 4
    choice = @view.menu
        case choice
    when 1  
        foo = @view.read_numbers
        @model.insert(foo)
    when 2
        @view.display_numbers(@model.list)
    when 3
        @view.display_average(@model.average)
    when 4
        @view.goodbye
    end
end
    end
end


