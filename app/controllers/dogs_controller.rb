class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render :index
  end

  # def new
  #
  # end
  #
  # def create
  #
  # end

  def show
    find_dog
    @employees = @dog.employees
    render :show
  end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

end
