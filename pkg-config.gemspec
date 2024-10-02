# -*- mode: ruby -*-
#
# Copyright (C) 2010-2019  Kouhei Sutou <kou@clear-code.com>
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
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

require_relative "lib/pkg-config/version"

Gem::Specification.new do |spec|
  spec.name = "pkg-config"
  spec.version = PKGConfig::VERSION
  spec.homepage = "https://github.com/ruby-gnome/pkg-config"
  spec.authors = ["Kouhei Sutou"]
  spec.email = ["kou@cozmixng.org"]
  spec.summary = 'A pkg-config implementation for Ruby'
  spec.description = "pkg-config can be used in your extconf.rb to properly detect need libraries for compiling Ruby native extensions"
  spec.license = "LGPLv2+"
  spec.files = ["README.rdoc", "NEWS.md", "Gemfile", "Rakefile", "LGPL-2.1"]
  spec.files += Dir.glob("lib/**/*.rb")
  spec.test_files = Dir.glob("test/**/*.rb")

  spec.add_development_dependency("test-unit")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("bundler")

  spec.metadata["msys2_mingw_dependencies"] = "pkg-config"
end
