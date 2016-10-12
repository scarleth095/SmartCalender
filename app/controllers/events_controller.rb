class EventsController < ApplicationController
 
def index
    @events = Event.all
  end

  def show  
      @event=Event.find(params[:id])
       @event.destroy
  end

  def new
    @event = Event.new
  end

  def create
      @event = Event.new(event_params)
    if @event.save
      redirect_to "/"
    else
      render 'new'
    end 
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to "/"
    else
      render 'edit'
    end
  end

  def destroy
    @event=Event.find(params[:id])
    @event.destroy
    redirect_to "/"
  end

  private
    def event_params
      params.require(:event).permit(:description, :time, :date)
  end

    def find_event
      @event = Event.find(params[:id])
  end

end