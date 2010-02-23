class ScrappiesController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @scrappies = Scrappy.all
    respond_with(@scrappies)
  end

  def show
    @scrappy = Scrappy.find(params[:id])
    respond_with(@scrappy)
  end

  def new
    @scrappy = Scrappy.new
    respond_with(@scrappy)
  end

  def create
    @scrappy = Scrappy.new(params[:scrappy])
    respond_with(@scrappy) do |format|
      if @scrappy.save
        format.html { redirect_to(scrappies_url, :notice => 'A new scrappy was successfully created.') }
      else
        format.html { render :action => :new }
      end
    end
  end

  def edit
    @scrappy = Scrappy.find(params[:id])
  end

  def update
    @scrappy = Scrappy.find(params[:id])
    respond_with(@scrappy) do |format|
      if @scrappy.update_attributes(params[:scrappy])
        format.html { redirect_to(scrappies_url, :notice => 'The scrappy was successfully updated.') }
      else
        format.html { render :action => :edit }
      end
    end
  end

  def destroy
    @scrappy = Scrappy.find(params[:id])
    @scrappy.destroy
    respond_with(@scrappy) do |format|
      format.html { redirect_to(scrappies_url, :notice => 'The scrappy was successfully destroyed.') }
    end
  end
end
