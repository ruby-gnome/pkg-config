#!/usr/bin/env ruby

base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
test_unit_dir = File.join(base_dir, "test-unit", "lib")
lib_dir = File.join(base_dir, "lib")
test_dir = File.join(base_dir, "test")

$LOAD_PATH.unshift(test_unit_dir)

require 'test/unit'

$LOAD_PATH.unshift(base_dir)
$LOAD_PATH.unshift(lib_dir)

$LOAD_PATH.unshift(test_dir)

Dir.glob("test/**/test_*.rb") do |file|
  require file.sub(/\.rb$/, '')
end

exit Test::Unit::AutoRunner.run(false)
