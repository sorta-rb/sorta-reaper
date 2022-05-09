# frozen_string_literal: true

require_relative "../lib/sorta/reaper"

record_conf = Sorta::Reaper::Entity::RecordCfg.new(unnamed_1: "ZXZhdxgAAA==")
applyfx_conf = Sorta::Reaper::Entity::ApplyfxCfg.new
notes = Sorta::Reaper::Entity::Notes.new(unnamed_1: 0, unnamed_2: 2)

project =
  Sorta::Reaper::Entity::Project
    .new(
      proj_ver: 0.1,
      daw_ver: "6.53/win64",
      unnamed_1: 1651778831,
      notes: notes,
      ripple: 0,
      groupoverride: [0, 0, 0],
      autoxfade: 1,
      envattach: 0,
      pooledenvattach: 0,
      mixeruiflags: [11, 48],
      peakgain: 1,
      feedback: 0,
      panlaw: 1,
      projoffs: [0, 0, 0],
      maxprojlen: [0, 600],
      grid: [3199, 8, 1, 8, 1, 0, 0, 0],
      timemode: [1, 5, -1, 30, 0, 0, -1],
      video_config: [0, 0, 256],
      panmode: 3,
      cursor: 12.5,
      zoom: [100.00000000000011, 894, 0],
      vzoomex: [6, 0],
      use_rec_cfg: 0,
      recmode: 1,
      smptesync: [0, 30, 100, 40, 1000, 300, 0, 0, 1, 0, 0],
      loop: 0,
      loopgran: [0, 4],
      record_path: ["", ""],
      record_cfg: record_conf,
      applyfx_crg: applyfx_conf,
      render_file: "",
      render_pattern: "",
      render_fmt: [0, 2, 0],
      render_1x: 0,
      render_range: [1, 0, 0, 18, 1000],
      render_resample: [3, 0, 1],
      render_addtoproj: 0,
      render_stems: 0,
      render_dither: 0,
      timelockmode: 1,
      tempoenvlockmode: 1,
      itemmix: 0,
      defpitchmode: [589824, 0],
      takelane: 1,
      samplerate: [44100, 0, 0],
      lock: 1
    )

visitor = Sorta::Reaper::Render::Visitor.new
text = visitor.render(project)

File.open(File.join(__dir__, "simple.rpp"), "w") { |f| f.write(text) }
