class Child < ActiveRecord::Base
  validates :first, presence: true
  validates :last, presence: true
  attr_accessible :age, :first, :last, :created_at
  belongs_to :site
  belongs_to :user
end
