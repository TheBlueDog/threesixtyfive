class SnapsController < ApplicationController
  before_action :set_snap, only: [:show, :edit, :update, :destroy]

  def index
    @snaps = Snap.all
  end

  def show
  end

  def new
    @snap = Snap.new
  end

  def edit
  end

  def create
    @snap = Snap.new(snap_params)

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

    def snap_params
      params.require(:snap).permit(:title, :description)
    end
end
