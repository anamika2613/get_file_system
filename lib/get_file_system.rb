require 'colorize'
require 'indentation'

module GetFileSystem
	class FileSystem
		def self.get_file_system(root_path, i: 0,d: nil)
			root_path = "#{root_path}/#{d}" if d
			if File.directory? root_path
				i=i+2
				Dir.entries(root_path).each do |d|
					next if d=='.' || d=='..'
					if File.directory?("#{root_path}/#{d}")
						puts "#{d.indent(i).red} #{File.size("#{root_path}/#{d}")} bytes" 
						get_file_system(root_path,d:d,i:i) 
					else      
						puts "#{d.yellow.indent(i)} #{File.size("#{root_path}/#{d}")} bytes" 
					end
				end
			else
				puts "#{root_path.yellow} #{File.size("#{root_path}/#{d}")} bytes"
				return  
			end
		end
	end
end
