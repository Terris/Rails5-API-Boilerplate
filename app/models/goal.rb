class Goal < ApplicationRecord
  validates_presence_of :user, :order, :description
end
