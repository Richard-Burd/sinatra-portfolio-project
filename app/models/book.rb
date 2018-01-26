class Book < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  belongs_to :user
  belongs_to :author
  belongs_to :genre
  has_many :book_languages
  has_many :languages, through: :book_languages

  # This supposes a book with no publication date was
  # written by its author in the last quarter of her
  # or his lifetime
  def hypothetical_date_of_publication
    total_years_alive = self.author.death_date - self.author.birth_date
    total_years_alive * 0.75
  end
end
