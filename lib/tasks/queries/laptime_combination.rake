namespace :query do
  task lap_times: :environment do
    average_lap_times = Circuit.joins(races: :lap_times)
       .select("circuits.*, AVG(lap_times.milliseconds) AS average_lap_time")
       .group("circuits.circuit_id")
    average_lap_times.each do |circuit|
      total_milliseconds = circuit.average_lap_time.to_i
      minutes = total_milliseconds / 60000
      seconds = (total_milliseconds % 60000) / 1000
      milliseconds = total_milliseconds % 1000

      formatted_time = format("%02d:%02d.%03d", minutes, seconds, milliseconds)
      puts "Circuit: #{circuit.name}, Average Lap Time: #{formatted_time}"
    end
  end
end
