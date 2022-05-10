# frozen_string_literal: true

require_relative "abstract"

module Sorta
  module Reaper
    module Entity
      class Source < Abstract
        attribute? :file, Types::String

        #   <SOURCE WAVE
        #     FILE "C:\Users\odebe\Documents\REAPER Media\133\09-220503_1522.wav"
        #   >
      end
    end
  end
end
