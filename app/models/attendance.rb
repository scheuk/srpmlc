class Attendance < ActiveRecord::Base
  attr_accessible :date, :session, :time
  belongs_to :child
end
