#!/usr/bin/env ruby

absolute_dir_path = File.expand_path(File.dirname(__FILE__))
command = "#{absolute_dir_path}/iOSAssetExtractor"
ARGV.each do |parameter|
	command += " #{parameter}"
end

exec command