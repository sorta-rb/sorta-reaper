# frozen_string_literal: true

require_relative "abstract"

module Sorta
  module Reaper
    module Entity
      class Project < Abstract
        attribute :proj_ver, Types::Float.default(0.1)
        attribute :daw_ver, Types::String.default("6.53/win64")
        attribute :unnamed_1, Types::Integer.default(1651778831)

        attribute? :tracks, Types::Array(Track)

        # not used, but described

        attribute? :notes, Notes.default { Notes.new }
        attribute? :record_cfg, RecordCfg.default { RecordCfg.new }
        attribute? :applyfx_crg, ApplyfxCfg.default { ApplyfxCfg.new }

        attribute? :ripple, Types::Integer
        attribute? :groupoverride, Types.Array(Types::Integer)
        attribute? :autoxfade, Types::Integer
        attribute? :envattach, Types::Integer

        attribute? :pooledenvattach, Types::Integer
        attribute? :mixeruiflags, Types.Array(Types::Integer)
        attribute? :peakgain, Types::Integer
        attribute? :feedback, Types::Integer

        attribute? :panlaw, Types::Integer
        attribute? :projoffs, Types.Array(Types::Integer)
        attribute? :maxprojlen, Types.Array(Types::Integer)
        attribute? :grid, Types.Array(Types::Integer)

        attribute? :timemode, Types.Array(Types::Integer)
        attribute? :video_config, Types.Array(Types::Integer)
        attribute? :panmode, Types::Integer
        attribute? :cursor, Types::Float

        attribute? :zoom, Types.Array(Types::Float | Types::Integer)
        attribute? :vzoomex, Types.Array(Types::Integer)
        attribute? :use_rec_cfg, Types::Integer
        attribute? :recmode, Types::Integer

        attribute? :smptesync, Types.Array(Types::Integer)
        attribute? :loop, Types::Integer
        attribute? :loopgran, Types.Array(Types::Integer)
        attribute? :record_path, Types.Array(Types::String).constrained(size: 2)

        attribute? :render_file, Types::String
        attribute? :render_pattern, Types::String
        attribute? :render_fmt, Types.Array(Types::Integer)
        attribute? :render_1x, Types::Integer
        attribute? :render_range, Types.Array(Types::Integer)
        attribute? :render_resample, Types.Array(Types::Integer)
        attribute? :render_addtoproj, Types::Integer
        attribute? :render_stems, Types::Integer
        attribute? :render_dither, Types::Integer

        attribute? :timelockmode, Types::Integer
        attribute? :tempoenvlockmode, Types::Integer
        attribute? :itemmix, Types::Integer
        attribute? :defpitchmode, Types.Array(Types::Integer)
        attribute? :takelane, Types::Integer
        attribute? :samplerate, Types.Array(Types::Integer)
        attribute? :lock, Types::Integer

        attribute? :global_auto, Types::Integer
        attribute? :tempo, Types.Array(Types::Integer)
        attribute? :playrate, Types.Array(Types::Float)
        attribute? :selection, Types.Array(Types::Integer)
        attribute? :selection2, Types.Array(Types::Integer)

        attribute? :masterautomode, Types::Integer
        attribute? :mastertrackheight, Types.Array(Types::Integer)
        attribute? :masterpeackcol, Types::Integer
        attribute? :mastermutesolo, Types::Integer
        attribute? :mastertrackview, Types.Array(Types::Float)
        attribute? :masterhwout, Types.Array(Types::Integer)
        attribute? :master_nch, Types.Array(Types::Integer)
        attribute? :master_volume, Types.Array(Types::Integer)
        attribute? :master_panmode, Types.Array(Types::Integer)
        attribute? :master_fx, Types::Integer
        attribute? :master_sel, Types::Integer

        # {
        #   ripple: 0,
        #   groupoverride: [0, 0, 0],
        #   autoxfade: 1,
        #   envattach: 0,
        #   pooledenvattach: 0,
        #   mixeruiflags: [11, 48],
        #   peakgain: 1,
        #   feedback: 0,
        #   panlaw: 1,
        #   projoffs: [0, 0, 0],
        #   maxprojlen: [0, 600],
        #   grid: [3199, 8, 1, 8, 1, 0, 0, 0],
        #   timemode: [1, 5, -1, 30, 0, 0, -1],
        #   video_config: [0, 0, 256],
        #   panmode: 3,
        #   cursor: 12.5,
        #   zoom: [100.00000000000011, 894, 0],
        #   vzoomex: [6, 0],
        #   use_rec_cfg: 0,
        #   recmode: 1,
        #   smptesync: [0, 30, 100, 40, 1000, 300, 0, 0, 1, 0, 0],
        #   loop: 0,
        #   loopgran: [0, 4],
        #   record_path: ["", ""],
        #   render_file: "",
        #   render_pattern: "",
        #   render_fmt: [0, 2, 0],
        #   render_1x: 0,
        #   render_range: [1, 0, 0, 18, 1000],
        #   render_resample: [3, 0, 1],
        #   render_addtoproj: 0,
        #   render_stems: 0,
        #   render_dither: 0,
        #   timelockmode: 1,
        #   tempoenvlockmode: 1,
        #   itemmix: 0,
        #   defpitchmode: [589824, 0],
        #   takelane: 1,
        #   samplerate: [44100, 0, 0],
        #   lock: 1
        # }
      end
    end
  end
end
