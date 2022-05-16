# frozen_string_literal: true

class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kittens }
      format.json { render :json => @kittens }
    end
    # render :json => Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kitten }
      format.json { render :json => @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:notice] = 'Succesfully created!'
      redirect_to root_url
    else
      flash[:notice] = 'Something went wrong, try again!'
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      flash[:notice] = 'Succesfully updated!'
      redirect_to root_url
    else
      flash[:notice] = 'Something went wrong, try again!'
    end
  end

	def destroy
		@kitten = Kitten.find(params[:id])
		@kitten.destroy
		flash[:notice] = 'Deleted!'
		redirect_to root_url
	end

  private

  def kitten_params
    params.require(:kitten).permit(:id, :name, :age, :softness, :cuteness)
  end
end
