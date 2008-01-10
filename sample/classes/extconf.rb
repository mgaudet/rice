require 'mkmf'
$CFLAGS = '-g -Wall -I../.. -fno-inline'
$LDFLAGS = '-L../../rice'
$LIBS = '-lrice'
create_makefile('classes')

File.open('Makefile', 'a') do |mf|
  mf.puts 'LDSHARED = $(CXX) -shared'
end

