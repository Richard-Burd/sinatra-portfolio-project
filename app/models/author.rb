class Author < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  include UnknownAuthor::InstanceMethods
  has_many :books
  has_many :author_locations
  has_many :locations, through: :author_locations
  has_many :author_periods
  has_many :periods, through: :author_periods
  belongs_to :user
  has_many :languages, through: :books

  def assign_period
    Period.all.each do |timeframe|

      if self.birth_date >= timeframe.start_date && self.death_date <= timeframe.end_date     # case 1
        timeframe.authors << self
      elsif self.birth_date >= timeframe.start_date && self.birth_date <= timeframe.end_date  # Case 2
        timeframe.authors << self
      end

      if self.death_date >= timeframe.start_date && self.birth_date <= timeframe.start_date # Case 3
        timeframe.authors << self
      end

    end
  end
end
