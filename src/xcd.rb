#!/usr/bin/ruby

def paths
    home = ENV['HOME']
    src = "#{home}/src/github.com"
    return {
        "w" => "#{src}/profsys",
        "d" => "#{home}/Dropbox/Downloads",
        "a" => "#{src}/apple",
        "c" => "#{home}/Library/Mobile Documents/com~apple~CloudDocs",
        "t" =>  "/tmp/"
    }
  end

  def navigateTo(dir)
    Dir.chdir("#{paths[dir]}")
    system("bash")
  end

  def usage
    puts "USAGE: xcd d"
    puts"\nSupported options:"
    paths.each_pair do |ykey, value|
      puts "#{ykey} - #{value}"
    end
  end

ARGV.each do|a|
  if a.start_with?("help")
    usage()
  else
    navigateTo(a)
  end
end