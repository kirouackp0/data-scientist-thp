require_relative 'methods'

def user_interface
  puts "Welcome to our journalist handles analysis tool. Please choose the method you would like to run."
  puts "If you want to see the number of handles in the database, input \"a\""
  puts "If you want to see the shortest handle in the database, input \"b\""
  puts "If you want to see the number of handles in the database that have contain five characters (not counting the @), input \"c\""
  puts "If you want to see the number of handles in the database that start with a capital letter, input \"d\""
  puts "If you want to sort the handles alphabetically, input \"e\""
  puts "If you want to sort the handles by size (smallest to biggest), input \"f\""
  puts "If you want to see the index position of a handle (default is @epenser), input \"g\""
  puts "If you want to see the distribution of sizes of handles in the database, input \"h\""

  method_option = gets.chomp.to_s.downcase
  possible_options = 'abcdxefgh'

  if !possible_options.include?(method_option)
    puts "invalid input, plese try again"
    user_interface
  end

  case method_option
  when 'a'
    puts "The number of handles in the database is:"
    count_handles(JOURNALISTS)
  when 'b'
    puts "The shortest handles are:"
    shortest_handle(JOURNALISTS)
  when 'c'
    puts "The handles with fewer than 5 characters are:"
    five_character_handles(JOURNALISTS)
  when 'd'
    puts "The handles that start with uppercase letters are:"
    uppercase_handles(JOURNALISTS)
  when 'e'
    puts "Here are the handles sorted alphabetically:"
    sort_by_alphabetical(JOURNALISTS)
  when 'f'
    puts "Here are the handles sorted by size:"
    sort_by_length(JOURNALISTS)
  when 'g'
    get_handle
  when 'h'
    puts "Here is the distribution of handle sizes:"
    distribution_hash = distribution_handles_by_size(JOURNALISTS)    

    puts "\n"
    puts "Here is the hash:"
    puts distribution_hash

    puts "\n"
    puts "Here is the bar graph:"
    visual_representation(distribution_hash)
  when 'x'
    return
  end
end

def get_handle
  puts "Please input the handle you want to search for (if you want to search for default, press enter)."
  user_handle = gets.chomp
  if user_handle == ""
    puts "Here is the index position of the handle requested:"
    find_position_of_handle(JOURNALISTS)
  else
    puts "Here is the index position of the handle requested:"
    find_position_of_handle(JOURNALISTS, user_handle)
  end
end
user_interface