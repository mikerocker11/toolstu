class Question < ApplicationRecord
  belongs_to :list
  has_many :answers, :dependent => :destroy, :inverse_of => :question
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:response].blank? }, allow_destroy: true
end
