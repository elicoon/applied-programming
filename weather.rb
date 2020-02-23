require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "2d31f2693209b31c67232a10ff2a1feb"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash


# Defined variables
current_temp=forecast["currently"]["temperature"]
current_summary=forecast["currently"]["summary"]


#forecasts
puts "---------------"
puts "In Chicago, it is currently #{current_temp} degrees and #{current_summary}."
puts "---------------"
puts "Extended forecast:"

# puts forecast["daily"]["data"][0].keys

# puts "A high temperature of #{forecast["daily"]["data"][0]["temperatureHigh"]} and #{forecast["daily"]["data"][0]["summary"]}"
# puts "# A high temperature of 33.98 and Mostly cloudy throughout the day."

forecast_array= forecast["daily"]["data"]

for the_weather_for_the_day in forecast_array
    # zebra = forecast_array[0]
    # zebra = forecast_array[1]
    # zebra = forecast_array[2] etc... 
    puts "A high temperature of #{the_weather_for_the_day["temperatureHigh"]} and #{the_weather_for_the_day["summary"]}"
end


# for high_temp in forecast
#     puts "#"
# puts "First day's forecast is a high temperature of #{high_temp} degrees and #{summary}"

# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`

# Example output:
#
# In Chicago, it is currently 33.89 degress and Clear
# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.