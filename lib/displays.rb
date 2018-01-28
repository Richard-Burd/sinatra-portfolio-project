module Displays
  module InstanceMethods
    # This will display the date as either B.C.E. or C.E
    def display_date_as_bce_or_ce(number)
      if number >= 1
        number.to_s + " C.E."
      else
        number.abs.to_s + " B.C.E."
      end
    end
  end
end
