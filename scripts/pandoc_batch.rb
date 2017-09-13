#!/usr/bin/ruby

# Change the file extensions below with what you are converting from and to
extFrom = '.md'
extTo = '.html'

files = Dir.glob("*#{extFrom}")
name = ''
base = ''
files.each do |file|
	if File.exists?(file.strip)
		f = File.open(file.strip, encoding: 'UTF-8')
		name = File.basename(file)
		base = File.basename(file).gsub(/#{extFrom}/, '')
		command = "pandoc " + "#{name}" + " -o " + "#{base}" + "#{extTo}"
		%x{#{command}}
	end
end
