# -*- coding: utf-8; mode: ruby -*-
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
require 'hoe'

base_dir = Pathname(__FILE__).dirname
lib_dir = base_dir + "lib"
$LOAD_PATH.unshift(lib_dir.to_s)

def guess_version
  require 'pkg-config'
  PKGConfig::VERSION
end

ENV["VERSION"] ||= guess_version
version = ENV["VERSION"]
project = Hoe.spec('pkg-config') do |project|
  project.version = version
  project.rubyforge_name = 'cairo'
  project.author = "Kouhei Sutou"
  project.readme_file = "README.rdoc"
  project.email = ['kou@cozmixng.org']
  project.summary = 'A pkg-config wrapper for Ruby'
  project.url = 'http://github.com/rcairo/pkg-config'
  project.spec_extras = {
    :require_paths => ['lib'],
    :has_rdoc => false,
  }
  news = base_dir + "NEWS"
  project.changes = news.read.split(/^== .*$/)[1].strip
  project.description = "pkg-config can be used in your extconf.rb to properly detect neeed libraries for compiling Ruby native extensions"
end

desc "tag the current veresion"
task :tag do
  sh("git", "tag", "-a", version.to_s, "-m", "release #{version}!!!")
  sh("git", "push", "--tags")
end
