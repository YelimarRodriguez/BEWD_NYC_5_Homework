require 'rest-client'
require 'json'
require_relative 'mtreiteration'

puts "Welcome to this Reddit search app! What would you like to look up today?"
search_word = gets.chomp
puts "Excellent. Let's search for #{search_word} on Reddit!
\n Here are a list of article titles based on your search:"

title_list = Client_Search.new(search_word)
title_list.reddit_search
title_list.search_path
title_list.list_of_titles
