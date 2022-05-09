# frozen_string_literal: true

require_relative "abstract"

module Sorta
  module Reaper
    module Entity
      class Project < Abstract
        attribute :proj_ver, Types::Float
        # "6.53/win64"
        attribute :daw_ver, Types::String
        attribute :unnamed_1, Types::Integer

        attribute :notes, Notes
        attribute :ripple, Types::Integer
        attribute :groupoverride, Types.Array(Types::Integer)
        attribute :autoxfade, Types::Integer
        attribute :envattach, Types::Integer
        attribute :pooledenvattach, Types::Integer
        attribute :mixeruiflags, Types.Array(Types::Integer)
        attribute :peakgain, Types::Integer
        attribute :feedback, Types::Integer
        attribute :panlaw, Types::Integer
        attribute :projoffs, Types.Array(Types::Integer)
        attribute :maxprojlen, Types.Array(Types::Integer)
        attribute :grid, Types.Array(Types::Integer)
        attribute :timemode, Types.Array(Types::Integer)
        attribute :video_config, Types.Array(Types::Integer)
        attribute :panmode, Types::Integer
        attribute :cursor, Types::Float
        attribute :zoom, Types.Array(Types::Float | Types::Integer)
        attribute :vzoomex, Types.Array(Types::Integer)
        attribute :use_rec_cfg, Types::Integer
        attribute :recmode, Types::Integer
        attribute :smptesync, Types.Array(Types::Integer)
        attribute :loop, Types::Integer
        attribute :loopgran, Types.Array(Types::Integer)
        attribute :record_path, Types.Array(Types::String)

        attribute :record_cfg, RecordCfg
        attribute :applyfx_crg, ApplyfxCfg

        attribute :render_file, Types::String
        attribute :render_pattern, Types::String
        attribute :render_fmt, Types.Array(Types::Integer)
        attribute :render_1x, Types::Integer
        attribute :render_range, Types.Array(Types::Integer)
        attribute :render_resample, Types.Array(Types::Integer)
        attribute :render_addtoproj, Types::Integer
        attribute :render_stems, Types::Integer
        attribute :render_dither, Types::Integer

        attribute :timelockmode, Types::Integer
        attribute :tempoenvlockmode, Types::Integer
        attribute :itemmix, Types::Integer
        attribute :defpitchmode, Types.Array(Types::Integer)
        attribute :takelane, Types::Integer
        attribute :samplerate, Types.Array(Types::Integer)

        attribute :lock, Types::Integer

        # attribute :global_auto, Types::Integer
        # attribute :tempo, Types.Array(Types::Integer)
        # attribute :playrate, Types.Array(Types::Float)
        # attribute :selection, Types.Array(Types::Integer)
        # attribute :selection2, Types.Array(Types::Integer)
        #
        # attribute :masterautomode, Types::Integer
        # attribute :mastertrackheight, Types.Array(Types::Integer)
        # attribute :masterpeackcol, Types::Integer
        # attribute :mastermutesolo, Types::Integer
        # attribute :mastertrackview, Types.Array(Types::Float)
        # attribute :masterhwout, Types.Array(Types::Integer)
        # attribute :master_nch, Types.Array(Types::Integer)
        # attribute :master_volume, Types.Array(Types::Integer)
        # attribute :master_panmode, Types.Array(Types::Integer)
        # attribute :master_fx, Types::Integer
        # attribute :master_sel, Types::Integer
        #
      end
    end
  end
end
