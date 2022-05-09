# frozen_string_literal: true

require_relative "../types"

module Sorta
  module Reaper
    module Entity
      class Abstract < Dry::Struct
        Binary = Types::String

        def visit(visitor)
          visitor.send("visit_#{self.class.name.split("::").last}", self)
        end
      end
    end
  end
end
