class TapsController < ApplicationController
  def index
    @taps = Tap.all
  end

  def show
    @tap = Tap.find(params[:id])
  end

  def new
    @tap = Tap.new
  end

  def create
    @tap = Tap.new(params[:tap])
    if @tap.save
      redirect_to @tap, :notice => "Successfully created tap."
    else
      render :action => 'new'
    end
  end

  def edit
    @tap = Tap.find(params[:id])
  end

  def update
    @tap = Tap.find(params[:id])
    if @tap.update_attributes(params[:tap])
      redirect_to @tap, :notice  => "Successfully updated tap."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @tap = Tap.find(params[:id])
    @tap.destroy
    redirect_to taps_url, :notice => "Successfully destroyed tap."
  end
end
