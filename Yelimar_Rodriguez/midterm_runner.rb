require 'rest-client'
require 'json'
require_relative 'midterm'

puts "Welcome to this Reddit search app! What would you like to look up today?"
search = gets.chomp
puts "Excellent. Let's search for #{search} on Reddit!
\n Here are the available articles based on your search:"

website = 'http://www.reddit.com/search.json?q=' << search.strip
RestClient.get(website)
result = RestClient.get(website)
parsed = JSON.parse result
search_results = parsed["data"]["children"]

List_of_titles = search_results.collect do |post| 
  Story.new (puts (post["data"]["title"]))
end