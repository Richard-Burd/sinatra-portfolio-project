class Author < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  has_many :books
  has_many :author_locations
  has_many :locations, through: :author_locations
  has_many :author_periods
  has_many :periods, through: :author_periods
  belongs_to :user


  # This supposes a book with no publication date was
  # written by its author in the last quarter of her
  # or his lifetime
  def assign_period
    Period.all each do |timeframe|
      if self.birth_date >= timeframe.start_date || self.death_date <= timeframe.end_date
        timeframe.authors << self
      end
    end
  end
end
