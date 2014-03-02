class EventController < ApplicationController
  # GET /event
  def show
    @registration = Registration.new
    @registration.members.build
  end

  # GET /event/edit
  def edit

  end

  # POST /event
  # POST /event.json
  def create

  end

  # PATCH/PUT /event
  # PATCH/PUT /event.json
  def update

  end

  # DELETE /event
  # DELETE /event.json
  def destroy

  end
end
