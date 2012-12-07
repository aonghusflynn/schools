require 'csv'
require 'json'

filename='stats_Second-level-school-list-2011-2012'

csv = CSV.read(filename+'.csv','r:iso-8859-1')

json = JSON.dump(csv)
File.open(filename+'.json','w+') do |file|
  file<<json
end
