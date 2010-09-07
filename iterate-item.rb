#!/usr/bin/ruby

#figure out what I'm not seeing with the concatination of the 'n' variable for the file name


(1..20).each do |n|
  `mongoimport -db opencycdb -c properties --jsonArray --upsert #{'properties/prop' << " " << '#{n}' << '.json'}`
end
(1..20).each do |n|
  `mongoimport -db opencycdb #{'types/type << #{n} << .json'} -c types --jsonArray --upsert`
end

(1..32).each do |n|
  `mongoimport -db opencycdb #{'item << #{n} << .json'} -c item --jsonArray --upsert`
end
