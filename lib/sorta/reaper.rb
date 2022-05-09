# frozen_string_literal: true

require 'dry-types'
require 'dry-struct'

module Sorta
  module Reaper
    class Error < StandardError; end
  end
end

require_relative "reaper/version"

require_relative "reaper/entity/record_cfg"
require_relative "reaper/entity/applyfx_cfg"
require_relative "reaper/entity/notes"
require_relative "reaper/entity/project"

require_relative 'reaper/render/visitor'
