#!/usr/bin/env ruby

def paths
  home = ENV["HOME"]
  src = "#{home}/src"
  github = "#{src}/github.com"
  {
    t: "/tmp/",
    me: "#{github}/scanf",
    w: "#{github}/profsys",
    d: "#{home}/Dropbox/Downloads",
    a: "#{github}/apple",
    c: "#{home}/Library/Mobile Documents/com~apple~CloudDocs",
    t: "/tmp/",
    k: "#{src}/kernel.org",
    s: "#{src}",
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
