class Team
  attr_accessor :name
  attr_writer :city
  attr_reader :state

  @@team_count = 0

  def to_s
    puts @state + " " + @name
  end

  def initialize
    @@team_count += 1
  end

  def self.number_of_teams
    @@team_count
  end

  def cheer_for_team
    puts "Go #{@name}!"

    puts "Go #{name}!"

  end

  def city=(name)
    @city = name
    set_state_by_city
  end

  private

  def set_state_by_city
    if @city == "Gainesville"
      @state = "Florida"
    else
      @state = "No clue"
    end
  end

end
