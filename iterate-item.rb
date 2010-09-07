#!/usr/bin/ruby

20.each do |n|
  `mongoimport -db opencycdb #{'properties/prop + " " + #{n} + .json'} -c properties --jsonArray --upsert`
end
20.each do |n|
  `mongoimport -db opencycdb #{'types/type + #{n} + .json'} -c types --jsonArray --upsert`
end
32.each do |n|
  `mongoimport -db opencycdb #{'item + #{n} + .json'} -c item --jsonArray --upsert`
end
