class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def create
    employee = Employee.create(employee_params)
    if employee.valid?
      redirect_to employee
    else
      redirect_to new_employee_path
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :alias, :office, :dog_id)
  end
end
