require_relative 'data'

def count_handles(array_of_handles)
  puts array_of_handles.length
end

# count_handles(JOURNALISTS)
def shortest_handle(array_of_handles)
  # alternative sort:
  # puts array_of_handles.min { |a, b| a.length <=> b.length }
  sorted_array = array_of_handles.sort_by(&:length)
  puts sorted_array[0]
end

# shortest_handle(JOURNALISTS)

def five_character_handles(array_of_handles)
  handles_of_five = []

  array_of_handles.each do |handle|
    handles_of_five << handle if handle.length == 6
  end

  puts handles_of_five.length
end

# five_character_handles(JOURNALISTS)

def uppercase_handles(array_of_handles)
  handles_uppercase = []
  uppercase_letters = ('A'..'Z')

  array_of_handles.each do |handle|
    handles_uppercase << handle if uppercase_letters.include?(handle[1])
  end

  puts handles_uppercase.length
end

# uppercase_handles(JOURNALISTS)

def sort_by_alphabetical(array_of_handles)
  puts array_of_handles.sort_by(&:downcase)
end

#sort_by_alphabetical(JOURNALISTS)

def sort_by_length(array_of_handles)
  puts array_of_handles.sort_by(&:length)
end
#sort_by_length(JOURNALISTS)

def find_position_of_handle(array_of_handles, user_handle = '@epenser')
  puts array_of_handles.find_index(user_handle)
end

# find_position_of_handle(JOURNALISTS)
def distribution_handles_by_size(array_of_handles)
  array_of_handles_sorted_by_length = array_of_handles.sort_by(&:length)
  array_of_lengths_of_handles = array_of_handles_sorted_by_length.map { |handle| handle.length }
  distribution_hash = {}

  array_of_lengths_of_handles.each do |length|
    if distribution_hash.key?(length)
      distribution_hash[length] += 1
    else
      distribution_hash[length] = 1
    end
  end

  return distribution_hash
end

# distribution_handles_by_size(JOURNALISTS)

def visual_representation(hash)
  puts "length -- number of instances"
  puts "------------------------------ "

  hash.each do |key, value|
    if key < 10
      print " #{key}     |" 
    else
      print " #{key}    |" 
    end

    value.times { print "*" }
    print "\n"
  end
end