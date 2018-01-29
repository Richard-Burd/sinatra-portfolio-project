class Book < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  belongs_to :user
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres
  has_many :book_languages
  has_many :languages, through: :book_languages

  # This supposes a book with no publication date was
  # written by its author in the last quarter of her
  # or his lifetime
  def hypothetical_date_of_publication
    if self.author.name != "unknown" && self.author.name != "Unknown" && self.author.name != nil
      if self.author.birth_date.negative? && self.author.death_date.positive?
        total_years_alive = self.author.death_date + self.author.birth_date
      else
        total_years_alive = self.author.death_date - self.author.birth_date
      end
      probable_start_date = total_years_alive * 0.75 + self.author.birth_date
      probable_end_date = self.author.death_date - 2
      "A.) Probably between #{display_date_as_bce_or_ce(probable_start_date.round)} and #{display_date_as_bce_or_ce(probable_end_date)}"
    else
      "B.) Probably between #{display_date_as_bce_or_ce(self.author.birth_date)} and #{display_date_as_bce_or_ce(self.author.death_date)}"
    end
  end
end
