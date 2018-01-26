class Author < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  has_many :books
  has_many :author_locations
  has_many :locations, through: :author_locations
  has_many :author_periods
  has_many :periods, through: :author_periods
  belongs_to :user

  def assign_period
    Period.all.each do |timeframe|
      if self.birth_date >= timeframe.start_date && self.birth_date <= timeframe.end_date
        timeframe.authors << self
      end
    end
  end
end
