require_relative 'methods'

def user_interface
  puts "Welcome to our Cryptocurrency analysis tool. Please choose the method you would like to run."
  puts "If you want to see the cryptocurrencies whith the highest values, input \"a\""

  puts "If you want to see the cryptocurrencies whith the lowest values, input \"b\""
  puts "If you want to see the cryptocurrencies whith values lower than 6000, input \"c\""
  puts "If you want to see the cryptocurrency whith the highest value under 6000, input \"d\""
  puts "If you want to exit the program, input \"x\""

  method_option = gets.chomp.to_s.downcase
  possible_options = 'abcdx'

  if !possible_options.include?(method_option)
    puts "invalid input, plese try again"
    user_interface
  end

  method_selection(method_option)
end

def method_selection(selected_method)
  case selected_method 
  when 'a'
    puts "The cryptocurrencies with the highest value are:"
    highest_value_crypto(CRYPTO_CURRENCY_HASH)
  when 'b'
    puts "The cryptocurrencies with the lowest value are:"
    lowest_value_crypto(CRYPTO_CURRENCY_HASH)
  when 'c'
    puts "The cryptocurrencies with values lower than 6000 are:"
    puts crypto_value_less_than_6000(CRYPTO_CURRENCY_HASH).keys
  when 'd'
    puts "The cryptocurrency with the highest value under 6000 is:"
    highest_value_among_crypto_below_6000(CRYPTO_CURRENCY_HASH)
  when 'x'
    return
  end
end

user_interface