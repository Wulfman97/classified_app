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
      if @add.save redirect_to adds_path
      else
      render :new
    end 
  end

  def edit
    @add = Add.find(params[:id])
  end

  private

  def post_params
    params.require(:add).permit(:title, :author, :body, :contact)
  end
end
