
class KidsController < ApplicationController

  def index
    @kids = Kid.all
  end

  def show
    select_kid
  end

  def new
    @kid = Kid.new
  end

  def create
  
    @kid = Kid.create(kid_params)


    redirect_to kid_path(@kid)
  end

  def edit
    select_kid
  end

  def update
    select_kid
    @kid.update(kid_params)
    redirect_to kid_path(@kid)

  end

  def destroy
    select_kid
    @kid.destroy
    redirect_to kids_path
  end

private

def kid_params
  params.require(:kid).permit(:first_name, :last_name, :gender, :year, :sport, :emergency_contact)
end

def select_kid
  @kid = Kid.find(params[:id])
end
end
