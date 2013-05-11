class Attendance < ActiveRecord::Base
  attr_accessible :date, :session, :time, :child_id
  belongs_to :child

  scope :thisweek, lambda {
    where("date between ? and ?", Date.today.at_beginning_of_week, Date.today.at_end_of_week)
  }
end
