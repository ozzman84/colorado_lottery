class Contestant
  attr_reader :full_name, :age, :state_of_residence, :first_name, :spending_money, :last_name, :game_interests

  def initialize(hash_data)
    @first_name         = hash_data[:first_name]
    @last_name          = hash_data[:last_name]
    @age                = hash_data[:age]
    @state_of_residence = hash_data[:state_of_residence]
    @spending_money     = hash_data[:spending_money]
    @game_interests     = []
    @full_name          = "#{hash_data[:first_name]} #{hash_data[:last_name]}"
  end

  def out_of_state?
    state_of_residence != 'CO'
  end

  def add_game_interest(game)
    game_interests << game 
  end
end
