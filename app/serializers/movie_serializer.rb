class MovieSerializer < ActiveModel::Serializer
  attributes :id,  :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director
  #customizes our JSON, we're providing a list of the attrbutes we want to be included 


  #applying custom methods 
  def summary 
    #byebug
    end
  end

end
