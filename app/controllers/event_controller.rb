class EventController < ApplicationController
  before_filter :authenticate_user!, :only => [:create]
  
  def list
    @events = Event.all
  end

  def view
    @event = Event.find_by_id(params[:id])
    respond_to do |format|
      format.html {}
      format.json {
        return render :json => @event 
      }
    end
  end
  
  def new
      
  end
  
  def create
    event = current_user.events.create({
      :title => params[:title],
      :moment => params[:moment]
    })
    
    flash[:success] = "Event angelegt"
    redirect_to "/events/#{event.id}"
  end
end
