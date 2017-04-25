#!/usr/bin/env ruby
require "yaml"
YAML.parse(File.open(ARGV[0], "rb").read)
#pp=YAML.load_file ARGV[0]
#puts pp.to_s
