class CatName
  attr_reader :name
  
  def initialize
    @name = ["Amigo", "Oscar", "Viking"].sample
  end
end
