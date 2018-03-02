class Book < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  include UnknownAuthor::InstanceMethods
  belongs_to :user
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres
  has_many :book_languages
  has_many :languages, through: :book_languages

  validates :title, uniqueness: true
  # This supposes a book with no publication date was
  # written by its author in the last quarter of her
  # or his lifetime
  def hypothetical_date_of_publication
    if !self.author.name.include?("unknown") && !self.author.name.include?("Unknown") && self.author.name != nil
      if self.author.birth_date.negative? && self.author.death_date.positive?
        total_years_alive = self.author.death_date + self.author.birth_date
      else
        total_years_alive = self.author.death_date - self.author.birth_date
      end
      probable_start_date = total_years_alive * 0.75 + self.author.birth_date
      probable_end_date = self.author.death_date - 2
      "Probably published between #{display_date_as_bce_or_ce(probable_start_date.round)} and #{display_date_as_bce_or_ce(probable_end_date)}"
    else
      "Probably published between #{display_date_as_bce_or_ce(self.author.birth_date)} and #{display_date_as_bce_or_ce(self.author.death_date)}"
    end
  end

  # These methods below won't work because although it's the book that wants the method inside it because it is fundementally about the book,
  # a method in the Book class cannot reach into (and change) the Author class.  This method needs to be in the "Object" class or a module.

  #def author_unknown
  #  if self.author.name.include?("Unknown") || self.author.name.include?("unknown") || self.author.name == nil
  #    self.author.find_by(name: "Unknown") || self.author.find_by(name: "unknown")
  #    self.author.name = self.title + " - " "Author Unknown"
  #    self.save
  #  end
  #end

  #def author_unknown
  #  if self.author.name.include?("Unknown") || self.author.name.include?("unknown") || self.author.name == nil
  #    self.author.name << self.title.to_s + " - " "Author Unknown"
  #  end
  #end
end
