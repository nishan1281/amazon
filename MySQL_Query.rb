
#!/usr/bin/ruby

require "mysql"

begin
  con = Mysql.new '127.0.0.1', 'root', '', 'amazon'

  rs = con.query("SELECT `value` FROM url where `status`=0")

  rs

  rs.each do |row|
    puts row.join("\s")
  end

rescue Mysql::Error => e
  puts e.errno
  puts e.error

ensure
  con.close if con
end