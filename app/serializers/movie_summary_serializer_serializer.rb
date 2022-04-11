class MovieSummarySerializer < ActiveModel::Serializer
  attributes :summary

  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end
  
  #in order to use our custom method we need to add a new route to routes.rb 

end