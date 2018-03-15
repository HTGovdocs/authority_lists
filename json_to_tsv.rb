
# Take a nauth record in json and output a tsv containing 
# URI, Name, ParentOrganization
require 'json'

File.open(ARGV.shift).each do |line|
  rec = JSON.parse(line)
  puts [rec['sameAs'],
        rec['name'],
        rec['parentOrganization']].join("\t")
end
