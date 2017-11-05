# frozen_string_literal: true

require 'pathname'

module Pandoc
  class IncludedFile
    def initialize(path)
      @path = path
    end

    def pathname
      Pathname(clean_path(@path)).expand_path
    end

    private

    def clean_path(raw_path)
      raw_path.gsub(/\\_/, '_').tap do |path|
        path.slice!(0) if path.start_with?('"', "'")
        path.slice!(-1) if path.end_with?('"', "'")
      end
    end
  end
end
