class Api::EventsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :update]

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render :show
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  def edit

  end

  def show
    @event = Event.find(params[:id])
    render :show
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      render :show
    else
      render json: @event.errors.full_messages, status: 422
    end
  end

  def event_params
    params.require(:event).permit(
      :title,
      :start_date_time,
      :end_date_time,
      :description,
      :price,
      :num_tickets,
      :organizer_id,
      :organizer_name,
      :organizer_description,
      :avatar,
      :location
    )
  end
end
