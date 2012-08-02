#!/usr/bin/env ruby

$VERBOSE = true

base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
lib_dir = File.join(base_dir, "lib")
test_dir = File.join(base_dir, "test")

ENV["BUNDLE_GEMFILE"] ||= File.join(base_dir, "Gemfile")
require "bundler/setup"

require 'test-unit'

$LOAD_PATH.unshift(lib_dir)
$LOAD_PATH.unshift(test_dir)

Dir.glob("test/**/test_*.rb") do |file|
  require file.gsub(/(?:^test\/|\.rb$)/, '')
end

exit Test::Unit::AutoRunner.run(false)
