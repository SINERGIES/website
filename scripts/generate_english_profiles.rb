#!/usr/bin/env ruby

require "fileutils"
require "json"
require "yaml"

source_dir = File.expand_path("../_people", __dir__)
output_dir = File.expand_path("../en/members", __dir__)
FileUtils.mkdir_p(output_dir)

expected = []

Dir.glob(File.join(source_dir, "*.md")).sort.each do |source_path|
  slug = File.basename(source_path, ".md")
  front_matter = File.read(source_path, encoding: "UTF-8")[/\A---\s*\n(.*?)\n---/m, 1]
  metadata = YAML.safe_load(front_matter, permitted_classes: [], aliases: false) || {}
  title = metadata.fetch("title")
  output_path = File.join(output_dir, "#{slug}.md")
  expected << output_path

  File.write(output_path, <<~PAGE, mode: "w", encoding: "UTF-8")
    ---
    layout: person-en
    title: #{title.to_json}
    lang: en
    person_slug: #{slug.to_json}
    permalink: /en/members/#{slug}/
    ---
  PAGE
end

Dir.glob(File.join(output_dir, "*.md")).each do |path|
  File.delete(path) unless expected.include?(path)
end

puts "Generated #{expected.length} English member profiles."
