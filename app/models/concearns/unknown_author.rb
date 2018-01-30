module UnknownAuthor
  module InstanceMethods
    # call this method onto a instance of the Book class that has an unknown author in order to assign an author name that will
    # work within the restful-route-system this project needs us to use; if we "slug" several authors with the same name (unknown)
    # than the displaying data seen on the ERB will be messed up.
    def unknown_author
      if self.author.name.include?("Unknown") || self.author.name.include?("unknown") || self.author.name == nil
      unknown_author = self.author
      unknown_author.name = self.title + " - " "Author Unknown"
      unknown_author.save
      end
    end
  end
end
