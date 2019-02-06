class CabinsController < ApplicationController
  def index
    @cabins = Cabin.all
  end

  def show
    @cabin = Cabin.find(params[:id])
  end

  def new
    @cabin = Cabin.new
  end

  def create

    @cabin = Cabin.create(cabin_params)
    if @cabin.save
      redirect_to cabin_path(@cabin)
    else
      render :new
    end
  end

  def edit
    @cabin = Cabin.find(params[:id])
  end

  def update
    @cabin = Cabin.find(params[:id])
    @cabin.update(cabin_params)
    redirect_to cabin_path(@cabin)

  end

  def destroy
    @cabin = Cabin.find(params[:id])
    @cabin.destroy
    redirect_to cabins_path
  end

private

def cabin_params
  params.require(:cabin).permit(:name, :leader_last, :assistant_last, :gender, :capacity, :year)
end


end
