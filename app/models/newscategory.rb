class Newscategory
  include Mongoid::Document
  field :category, type: String

  CATEGORIES = %w[Kriminal Nasional Megapolitan Sport Nah\ Ini\ Dia]
#  def self.categories
#  	 each do |cats|
#  	 p cats.category
#  	 end
#  end
end
