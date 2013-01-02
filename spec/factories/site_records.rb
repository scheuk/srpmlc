# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :site_record do
    site nil
    user nil
    date "2013-01-01"
    tc 1
    nc 1
    br 1
    ea 1
    bd 1
  end
end
