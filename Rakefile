# -*- coding: utf-8; mode: ruby -*-
#
# Copyright (C) 2010-2011  Kouhei Sutou <kou@clear-code.com>
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

require 'English'

require 'pathname'
require 'fileutils'
require 'rubygems'
require 'jeweler'

base_dir = Pathname(__FILE__).dirname
lib_dir = base_dir + "lib"
$LOAD_PATH.unshift(lib_dir.to_s)

def guess_version
  require 'pkg-config'
  PKGConfig::VERSION
end

ENV["VERSION"] ||= guess_version
version = ENV["VERSION"].dup
spec = nil
Jeweler::Tasks.new do |_spec|
  spec = _spec
  spec.name = "pkg-config"
  spec.version = version
  spec.rubyforge_project = 'cairo'
  spec.author = "Kouhei Sutou"
  spec.email = ['kou@cozmixng.org']
  spec.summary = 'A pkg-config implementation for Ruby'
  spec.homepage = 'http://github.com/rcairo/pkg-config'
  spec.description = "pkg-config can be used in your extconf.rb to properly detect need libraries for compiling Ruby native extensions"
  spec.license = "LGPLv2+"
  spec.files = FileList["lib/**/*.rb",
                        "*.rb",
                        "Gemfile",
                        "Rakefile",
                        "LGPL-2.1"]
  spec.test_files = FileList["test/**/*.rb"]
end

Rake::Task["release"].prerequisites.clear
Jeweler::RubygemsDotOrgTasks.new do
end

desc "tag the current veresion"
task :tag do
  sh("git", "tag", "-a", version.to_s, "-m", "release #{version}!!!")
  sh("git", "push", "--tags")
end
