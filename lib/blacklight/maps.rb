# frozen_string_literal: true

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem_extension(Blacklight)
loader.setup

require 'blacklight/maps/version'

module Blacklight
  module Maps
    require 'blacklight_maps/controller'
    require 'blacklight_maps/render_constraints_override'
    require 'blacklight/maps/engine'
    require 'blacklight_maps/export'
    require 'blacklight_maps/geometry'
    require 'blacklight_maps/maps_search_builder'

    # returns the full path to the blacklight plugin installation
    def self.root
      @root ||= File.expand_path(File.dirname(File.dirname(File.dirname(__FILE__))))
    end
  end
end
