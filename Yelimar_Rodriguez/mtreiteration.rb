class Client_Search

  attr_reader :search_word
  
  def initialize(search_word)
    @search_word = search_word
  end
  
  def reddit_search
    @reddit_search ='http://www.reddit.com/search.json?q=' << @search_word
  end

  def search_path
    # RestClient.get(@reddit_search)
    result = RestClient.get(@reddit_search)
    parsed = JSON.parse result
    @parsed_info = parsed["data"]["children"] 
  end

  def list_of_titles
    @parsed_info.collect do |post| 
      puts (post["data"]["title"])
    end
end
end

