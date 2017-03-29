require "ios_asset_extractor/version"
require 'tmpdir'

module IosAssetExtractor
  class Extractor
  	attr_reader :file_path
  	def initialize(file_path)
  		@file_path = file_path
  		@command_path = File.expand_path "../../bin/iOSAssetExtractor", __FILE__
  	end

  	def file_with_size_hash
  		Dir.mktmpdir do |dir_path|
  			system "#{@command_path} -i #{@file_path} -o #{dir_path} > /dev/null 2>&1 "
  			Dir.entries(dir_path).select do |entry|
  				not File.directory?("#{dir_path}/#{entry}")
  			end.map do |entry|
					{
  					name: entry,
  					size: File.size("#{dir_path}/#{entry}")
  				}
  			end
  		end
  	end

  	def extract_to(dir_path)
  		system "#{@command_path} -i #{@file_path} -o #{dir_path} > /dev/null 2>&1"
  	end
  end
end
