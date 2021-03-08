class SearchTweetsService
  def self.search(search)    
    if search != ""
      Tweet.where('musician LIKE(?)',"%#{search}%")
    else  
      Tweet.all
    end
  end
end  