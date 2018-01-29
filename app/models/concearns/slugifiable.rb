module Slugifiable
  module ClassMethods
    def find_by_slug(slug)
      self.all.find{|i| i.slug == slug}
    end
  end

  module InstanceMethods
    def slug
      self.name.downcase.gsub(" ","-")
    end

    # This one is for books since books have a "title" whereas authors have a "name."
    def slugtitle
      self.title.downcase.gsub(" ","-")
    end
  end
end
