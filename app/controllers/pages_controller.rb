class PagesController < ApplicationController
  

def calendar
      @event = Event.new
    @events=Event.all
     

end
    
end
    
    
