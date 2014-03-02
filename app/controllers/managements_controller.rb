class ManagementsController < ApplicationController
  before_action :authenticate_admin!

  # GET /managements
  # GET /managements.json
  def index
    @registrations = Registration.all
  end

  # GET /managements/1
  # GET /managements/1.json
  def show

  end

  # GET /managements/new
  def new

  end

  # GET /managements/edit
  def edit

  end

  # POST /managements
  # POST /managements.json
  def create

  end

  # PATCH/PUT /managements/1
  # PATCH/PUT /managements/1.json
  def update
    @registration = Registration.find(params[:id])

    respond_to do |format|
      if @registration.update_attribute(:paid, params[:paid])
        format.html { redirect_to managements_path, notice: '更新成功' }
        format.json { render action: :index  }
      else
        format.html { redirect_to managements_path, notice: '更新失敗' }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /managements/1
  # DELETE /managements/1.json
  def destroy

  end

end
