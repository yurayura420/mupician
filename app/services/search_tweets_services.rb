Class SearchTweetsService
  def self.search    
    if serch != ""
      Tweet.where('text LIKE(?)',"%#{search}%")
    else  
      Tweet.all
    end
  end
end  