# require_relative "./findable_module.rb"
module Concerns
  module Findable
    def find_by_name(name)
        all.detect do |song|
        song.name == name
      end
    end

    def find_or_create_by_name(name)
      if !find_by_name(name)
        create(name)
      else find_by_name(name)
      end
    end


 end
end
