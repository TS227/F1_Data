task :import_all_data do
  Rake::Task["import:seasons"].invoke
  Rake::Task["import:circuits"].invoke
  Rake::Task["import:constructors"].invoke
  Rake::Task["import:drivers"].invoke
  Rake::Task["import:races"].invoke
  Rake::Task["import:status"].invoke
  Rake::Task["import:results"].invoke
  Rake::Task["import:constructor_results"].invoke
  Rake::Task["import:constructor_standings"].invoke
  Rake::Task["import:driver_standings"].invoke
  Rake::Task["import:lap_times"].invoke
  Rake::Task["import:pit_stops"].invoke
  Rake::Task["import:qualifying"].invoke
  Rake::Task["import:sprint_results"].invoke
end
