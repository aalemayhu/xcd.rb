#!/usr/bin/env ruby

def paths
  home = ENV["HOME"]
  src = "#{home}/src"
  github = "#{src}/github.com"
  {
    :c => "#{home}/Library/Mobile Documents/com~apple~CloudDocs",
    :d => "#{home}/Downloads",
    :i => "#{github}/imba",
    :m => "#{github}/scanf",
    :s => "#{github}/scrimba",
    :sc => "#{src}"
    :t => '/tmp/',
  }
end

def navigate_to(dir)
  path = paths[dir.downcase.to_sym]

  if path
    puts path
  else
    usage
  end
end

def usage
  puts "USAGE: xcd d"
  puts
  puts "Supported options:"

  paths.each do |arg, path|
    puts "#{arg} - #{path}"
  end
end

arg = ARGV[0]

navigate_to(arg)
