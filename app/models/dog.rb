class Dog < ApplicationRecord
  has_many :employees

  # def self.number_of_employees_owned
  #   # self.employees.count
  #   Dog.all.map do |emp|
  #     emp.employees.count
  #   end
  # end

end
