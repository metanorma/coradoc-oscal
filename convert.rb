#!/usr/bin/env ruby
require "coradoc"

input_file = ARGV.first

unless input_file
  puts "Error: input file path not given as argument."
  exit(1)
end

unless input_file.match?(/.adoc\z/)
  puts "Error: input file name must end with `.adoc`."
  exit(1)
end

unless File.exists?(input_file)
  puts "Error: input file does not exist"
  exit(1)
end

output_file = input_file.gsub(/.adoc\z/, '.yaml')
puts "Converting OSCAL AsciiDoc #{input_file} into #{output_file}."

IO.write(
  "sample.oscal.yaml",
  Coradoc::Oscal.parse_to_yaml("./sample.oscal.adoc")
)

puts "Done: #{output_file} written."
