class List < ApplicationRecord
  belongs_to :user
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:question].blank? }, allow_destroy: true

  validates :title, :type_of_list, :mode,  presence: true

end
