class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def create
    employee = Employee.create(employee_params)
    if employee.valid?
    redirect_to employees_path(employee)
  else
    flash[:errors] = employee.errors.full_messages
    redirect_to new_employee_path
  end
end


  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
  end
end
