# frozen_string_literal: true

require_relative "abstract"
require 'securerandom'

module Sorta
  module Reaper
    module Entity
      class Track < Abstract
        attribute :name, Types::String.optional
        attribute :trackid, Types::String.constrained(uuid_v1: true).default { SecureRandom.uuid }

        attribute? :items, Types::Array(Item)

        # <TRACK {E582C8D9-3002-4A45-97B7-08B6347ACED3}
        # NAME dorojka1
        # PEAKCOL 16576
        # BEAT -1
        # AUTOMODE 0
        # VOLPAN 1 0 -1 -1 1
        # MUTESOLO 0 0 0
        # IPHASE 0
        # PLAYOFFS 0 1
        # ISBUS 0 0
        # BUSCOMP 0 0 0 0 0
        # SHOWINMIX 1 0.6667 0.5 1 0.5 -1 -1 -1
        # FREEMODE 0
        # SEL 0
        # REC 0 0 1 0 0 0 0
        # VU 2
        # TRACKHEIGHT 0 0 0 0 -1 0
        # INQ 0 0 0 0.5 100 0 0 100
        # NCHAN 2
        # FX 1
        # TRACKID {E582C8D9-3002-4A45-97B7-08B6347ACED3}
        # PERF 0
        # MIDIOUT -1
        # MAINSEND 1 0
        #
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
