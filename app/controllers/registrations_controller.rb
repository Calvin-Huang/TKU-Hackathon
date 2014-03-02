class RegistrationsController < ApplicationController
  before_action :set_registration, except: [:index, :new, :create]

  def index
    @registrations = Registration.where(team_name: params[:team_name])

    if @registrations.length == 1
      respond_to do |format|
        format.html { redirect_to @registrations.first, notice: '查詢成功' }
        format.json { render @registrations.first }
      end
    end

  end

  # GET /registrations/1
  def show

  end

  def new
    @registration = Registration.new
    @registration.members.build
  end

  # GET /registrations/edit
  def edit

  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(registration_params)

    respond_to do |format|
      if @registration.save
        if @registration.members.any?
          @registration.members.each do |member|
            RemindMailer.content(member.email, member.name).deliver
          end
        end
        format.html { redirect_to registration_path(@registration), notice: '報名成功' }
        format.json { render action: :show, status: :created, location: @registration }
      else
        format.html { render action: :new }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrations
  # PATCH/PUT /registrations.json
  def update

  end

  # DELETE /registrations
  # DELETE /registrations.json
  def destroy

  end

  private
    def registration_params
      params.require(:registration).permit(:team_name, members_attributes: [ :name, :phone, :email ]).merge(paid: false)
    end

    def set_registration
      @registration = Registration.find(params[:id])
    end
end