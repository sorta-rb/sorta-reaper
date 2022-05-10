# frozen_string_literal: true

require_relative "abstract"
require 'securerandom'

module Sorta
  module Reaper
    module Entity
      class Item < Abstract
        attribute :position, Types::Integer | Types::Float
        attribute? :length, Types::Integer | Types::Float

        attribute :iguid, Types::String.constrained(uuid_v1: true).default { SecureRandom.uuid }

        attribute? :name, Types::String
        attribute? :source, Source

        # Start in source
        attribute? :soffs, Types::Integer | Types::Float

        # <ITEM
        #   POSITION 3
        #   SNAPOFFS 0
        #   LENGTH 8.5
        #   LOOP 1
        #   ALLTAKES 0
        #   FADEIN 1 0 0 1 0 0 0
        #   FADEOUT 1 0 0 1 0 0 0
        #   MUTE 0 0
        #   SEL 0
        #   IGUID {7920763B-F9A4-4E42-A5A4-48BB596C96B4}
        #   IID 2
        #   NAME 09-220503_1522.wav
        #   VOLPAN 1 0 1 -1
        #   SOFFS 0
        #   PLAYRATE 1 1 0 -1 0 0.0025
        #   CHANMODE 0
        #   GUID {85A6592F-2881-4A99-A935-1858EDF6E2D7}
        # >
      end
    end
  end
end
