class PagesController < ApplicationController
  

def calendar
      @event = Event.new
    @events=Event.where("date > ?", 0) 
     

end
    
end
    
    
