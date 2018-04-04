require 'fileutils' # standard library


# Good for command line programmes
# ARGV argument vector like an array


# puts 'Choose file name.'
file_name = ARGV[0]

FileUtils.touch(file_name)