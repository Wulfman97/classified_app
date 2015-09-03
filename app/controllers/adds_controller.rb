class AddsController < ApplicationController
  def index
    @adds = Add.all
  end

  def show
    @add = Add.find(params[:id])
  end

  def new
    @add = Add.new
  end

  def create
    @add = add.new(add_params)
      if @add.save 
        redirect_to adds_path
      else
      render :new
    end 
  end

  def edit
    @add = Add.find(params[:id])
  end

  def update
    @add = Add.find(params[:id])
    if @add.update(add_params) 
      redirect_to adds_path
    else
      render :edit
    end 
  end

  def destroy
    @add = Add.find(params[:id]) 
    @add.destroy
    redirect_to adds_path
  end

  private

  def add_params
    params.require(:add).permit(:title, :author, :body, :contact)
  end
end
