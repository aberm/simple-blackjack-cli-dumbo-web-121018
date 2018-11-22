def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  a = deal_card
  b = deal_card
  display_card_total(a + b)
  a + b
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  case answer
    when 's'
      card_total
    when 'h'
      card_total += deal_card
      card_total
    when !'h' && !'s'
      invalid_command
      prompt_user
      card_total
  end
      
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  x = initial_round
  until x > 21
    x = hit?(x)
    display_card_total(x)
  end
  end_game(x)
  
end
    
