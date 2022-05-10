# frozen_string_literal: true

require_relative "../lib/sorta/reaper"

source = Sorta::Reaper::Entity::Source.new(file: File.join(__dir__, "./test_audio.wav"), format: "wave")
item = Sorta::Reaper::Entity::Item.new(position: 0, length: 10, source: source)
track = Sorta::Reaper::Entity::Track.new(name: "generated_track", items: [item])
project = Sorta::Reaper::Entity::Project.new(tracks: [track])

visitor = Sorta::Reaper::Render::Visitor.new
text = visitor.render(project)

File.open(File.join(__dir__, "simple.rpp"), "w") { |f| f.write(text) }
