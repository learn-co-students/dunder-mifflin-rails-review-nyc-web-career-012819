class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    render :index
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
    # byebug
    @dog = Dog.all.map { |dogy| dogy.employees.count }.sort.reverse
  end

  def create
    employee = Employee.create(employee_params)
    if employee.valid?
    redirect_to employee_path employee
    else
      flash[:errors] = employee.errors.full_messages
      byebug
      redirect_to new_employee_path
    end
  end

  def show
    find_employee
    @dog = @employee.dog
    render :show
  end

  def edit
    find_employee
    @dogs = Dog.all
    render :edit
  end

  def update
    find_employee
    if @employee.update(employee_params)
      redirect_to @employee
    else
      flash[:errors] = employee.errors.full_messages
      # byebug
      redirect_to edit_employee_path
    end
  end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

end
