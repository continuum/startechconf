task :preregistros => :environment do
  puts Preregistro.all.join(",\n")
end
