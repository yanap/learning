p $stdin  #=> #<IO:0x2e7e8>
p $stdout #=> #<IO:0x2e7d4>
p $stderr #=> #<IO:0x2e7c0>
$stderr.printf("%X\n", 0xcafe) #=> CAFE
