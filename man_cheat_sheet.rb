require 'pry'

def commands_library
  # binding.pry
  puts "Commands Library"
  puts "1) mv"
  puts "2) cp"
  puts "3) mkdir"
  puts "4) touch"
  puts "5) nano"
  user_input = gets.to_i
  if user_input == 1
    puts `man mv`
  elsif user_input == 2
    puts `man cp`
  elsif user_input == 3
    puts `man mkdir`
  elsif user_input == 4
    puts `man touch`
  elsif user_input == 5
    puts `man nano`
  elsif user_input >= 6
    puts "Man, you really stink at this!, 1-5 please"
  else
    puts "Bad command or filename. Try again."
  end
  menu
end


def search
  puts "Which command would you like to look up instructions for?"
  cmd = gets.strip
  puts `man #{cmd}`
  menu
end

# @man_array = []
def menu
  puts "--- Options ---"
  puts "1) Commands Library"
  puts "2) Search"
  puts "3) Exit and leave you alone"
  user_input = gets.strip.to_i
  puts commands_library if user_input == 1
  puts search if user_input == 2
  if user_input == 3
    puts "Thanks for stopping by! See you soon!"
    exit(0)
  end

  puts "Did you not see the options?" if user_input.to_i > 3
  puts "see ya!" if user_input == "exit"
  # handles validation with a regular expression that tests whether the input is a number
  if user_input != /\d/
    puts "Try entering a number this time wise guy!"
    menu
  end
end

# call the method "menu" because up to this point you've only been defining them.
menu

case commands_library
when 1
  puts `man mv`
when 2
  puts `man cp`
when 3
  puts `man mkdir`
when 4
  puts `man touch`
when 5
  puts `man nano`
end

# Loops so it keeps coming back once you've gone through the menu once
while true
  case menu
  when 1
    commands_library
  when 2
    search
  when 3
    puts "See ya!"
    exit(0)
  when "exit"
    puts "Later!"
    exit(0)
  else
    puts "Bad command or selection"
    menu
  end
  menu
end
