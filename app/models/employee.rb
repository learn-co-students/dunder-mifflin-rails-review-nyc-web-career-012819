class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, :presence => true
  validates :alias, :uniqueness => true
  validates :title, presence: true
  validates :title, uniqueness: true
  # having trouble displyaing error message
  # also the bonus: sorting by number of employees the dog owned in new.erb

  def to_s
    self.first_name + ', ' + self.last_name.upcase
  end
end
