def freeze_date
  test_simulation_date = Date.parse(ENV['GROUNDHOG_DATE']) rescue nil
  if test_simulation_date
    puts '=== ===' * 20
    puts "WARNING: Freezing the date of this instance to #{test_simulation_date}"
    puts '=== ===' * 20
    GroundhogDay.enable! date: test_simulation_date
  end
end

def unfreeze_date
  GroundhogDay.disable!
end

freeze_date
