# frozen_string_literal: true

require_relative "abstract"
require 'securerandom'

module Sorta
  module Reaper
    module Entity
      class Item < Abstract
        attribute :position, Types::Integer | Types::Float
        attribute :length, Types::Integer | Types::Float

        attribute :iguid, Types::String.constrained(uuid_v1: true).default { SecureRandom.uuid }

        # <ITEM
        # POSITION 1.71929551252328
        # SNAPOFFS 0
        # LENGTH 1
        # LOOP 1
        # ALLTAKES 0
        # FADEIN 1 0 0 1 0 0 0
        # FADEOUT 1 0 0 1 0 0 0
        # MUTE 0 0
        # SEL 0
        # IGUID {9A50A0BD-5A41-4132-8F65-47624A4B0840}
        # IID 1
        # >
        #   >
      end
    end
  end
end
