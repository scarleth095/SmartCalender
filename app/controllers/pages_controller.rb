class PagesController < ApplicationController
  
require 'date'
  
def calendar
      @event = Event.new
    @events=Event.where("date > ?", 0) 
    d = Date.today

    from=d.change(:day => 1)
    
    @holidays=Holidays.between(from, d.end_of_month, :us)
     

end
    
end
    
    
