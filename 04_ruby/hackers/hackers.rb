=begin
  hackers
   |
   |-- mary_poppins
          |--README.md
   |-- jo
          |--README.md
   |-- lisa
          |--README.md
rescue => exception
  
=end

require 'fileutils'
# hackers = ARGV
hackers = ['Mary Poppins', 'Jo','Lisa']

hackers.each do |hacker|
  new_dir = hacker.downcase.gsub(' ', '_')
  FileUtils.mkdir new_dir
  FileUtils.cd(new_dir) do
    FileUtils.touch('README.md')
  end
  
end