class Child < ActiveRecord::Base
  validates :first, presence: true
  validates :last, presence: true
  attr_accessible :age, :first, :last, :created_at, :attendances_attributes
  belongs_to :site
  belongs_to :user
  has_many :attendances
  accepts_nested_attributes_for :attendances
end
