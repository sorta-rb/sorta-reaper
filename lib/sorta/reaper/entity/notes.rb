# frozen_string_literal: true

require_relative "abstract"

module Sorta
  module Reaper
    module Entity
      class Notes < Abstract
        # 0
        attribute :unnamed_1, Types::Integer.default(0)
        # 2
        attribute :unnamed_2, Types::Integer.default(2)
      end
    end
  end
end
