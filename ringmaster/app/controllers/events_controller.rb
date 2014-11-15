class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy, :create]

  def index
    @events = Event.all
    if params[:search]
    Event.all(:conditions => { :date => Date.strptime(date, '%d-%m-%Y') })
  end
end



  def new
    @event = Event.new
  end

def create
    @event = Event.create(event_params)

  end

  def search
  @event = Event.search params[:search]
   redirect_to @event
end

  def show

  end


  def edit
  end

  def update
    @event.update(event_params)
    redirect_to @event
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :start_time, :venue_id, :band_id, :kid_friendly)
  end
end
