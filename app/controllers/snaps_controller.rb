class SnapsController < ApplicationController
  before_action :set_snap, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @date = Time.parse(params[:date]) rescue Time.now
    from = @date.beginning_of_day
    to   = @date.end_of_day
    @snaps = Snap.where(created_at: from..to).order("created_at DESC")
  end

  def show
  end

  def new
    @snap = current_user.snaps.build
  end

  def edit
  end

  def create
    @snap = current_user.snaps.build(snap_params)

    respond_to do |format|
      if @snap.save
        format.html { redirect_to @snap, notice: 'Snap was successfully created.' }
        format.json { render action: 'show', status: :created, location: @snap }
      else
        format.html { render action: 'new' }
        format.json { render json: @snap.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @snap.update(snap_params)
        format.html { redirect_to @snap, notice: 'Snap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @snap.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @snap.destroy
    respond_to do |format|
      format.html { redirect_to snaps_url }
      format.json { head :no_content }
    end
  end

  private
    def set_snap
      @snap = Snap.find(params[:id])
    end

    def correct_user
      @snap = current_user.snaps.find_by(id: params[:id])
      redirect_to snaps_path, notice: "Yo, that aint your Snap!" if @snap.nil?
    end

    def snap_params
      params.require(:snap).permit(:title, :description, :image)
    end
end





