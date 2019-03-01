class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: true
#   validate :alias_does_not_equal_target
#   validate :title_does_not_equal_target
#
#
#
#   def alias_does_not_equal_target
#     self.all.each do |employee|
#     if employee.alias == self.alias
#       @errors.add(:alias, "should not be the same as the another user")
#     end
#   end
# # def title_does_not_equal_target
# # @errors.add(:title, "should not be the same as the another user") if self.title == employee.title
# # end
#
# end
end
