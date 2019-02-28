class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render :index
  end

  def show
    @dog = Dog.find(params[:id])
    @employees = @dog.employees
    render :show
  end

  def new
    @dog = Dog.new
    render :new
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to dog_path(@dog)
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
