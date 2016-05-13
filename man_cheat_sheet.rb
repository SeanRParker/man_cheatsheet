# @man_array = []
def menu
  puts "--- Options ---"
  puts "1) Commands Library"
  puts "2) Search"
  puts "3) Exit and leave you alone"
  user_input = gets.strip.to_i
  exit(0) if user_input == 3
  puts "Thanks for stopping by! See you soon!" if user_input == 3
  puts "Did you not see the options?" if user_input.to_i > 3
  puts "Try entering a number this time wise guy!" if user_input == '0'
  user_input.to_i
end

def search
  puts "Which command would you like to look up instructions for?"
  cmd = gets.chomp
  puts `man #{cmd}`
  menu
end

def commands_library
  puts "Commands Library"
  puts "1) mv"
  puts "2) cp"
  puts "3) mkdir"
  puts "4) touch"
  puts "5) nano"
  user_input = gets.strip.downcase
  if user_input == "1"
    puts `man mv`
  elsif user_input == "2"
    puts `man cp`
  elsif user_input == "3"
    puts `man mkdir`
  elsif user_input == "4"
    puts `man touch`
  elsif user_input == "5"
    puts `man nano`
  else
    puts "Bad command or filename. Try again."
  end
  menu
end

while true
  case menu
    when 1
      commands_library
    when 2
      search
    else
      puts "Bad command or selection"
      menu
  end


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
  menu
end
