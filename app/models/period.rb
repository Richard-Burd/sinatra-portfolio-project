class Period < ActiveRecord::Base
  has_many :author_periods
  has_many :authors, through: :author_periods
end
