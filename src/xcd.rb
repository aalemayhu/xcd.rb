#!/usr/bin/ruby

def paths
  home = ENV['HOME']
  src = "#{home}/src"
  github = "#{src}/github.com"
  {
      :me => "#{github}/scanf",
      :w => "#{github}/profsys",
      :d => "#{home}/Dropbox/Downloads",
      :a => "#{github}/apple",
      :c => "#{home}/Library/Mobile Documents/com~apple~CloudDocs",
      :t => "/tmp/",
      :k => "#{src}/kernel.org"
    }
end

def navigateTo(dir)
  directory_path = "#{paths[dir.downcase.to_sym]}"
  `mkdir -p '#{directory_path}'`
  Dir.chdir("#{directory_path}")
  system("bash")
end

def usage
  puts "USAGE: xcd d"
  puts "\nSupported options:"
  paths.each_pair do |ykey, value|
    puts "#{ykey} - #{value}"
  end
end

a = ARGV[0] || "me"
if a.start_with?("help")
  usage()
else
  navigateTo(a)
end
