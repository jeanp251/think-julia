#=
    EXERCISE 5-2
    The function time returns the current Greenwich Mean Time in seconds
    since "the epoch", which is an arbitrary time used as a reference point
    On UNIX systems, the epoch is 1 January 1970
=#

time()

#=
    Write a scrip that reads the current time and converts it to a time of day
    in hours, minutes, and seconds, plus the number of days since the epoch
=#


number_minutes = time()/60
number_hours = number_minutes/60
number_days = number_hours/24

println("Number of minutes")
println(number_minutes)
println("Number of hours")
println(number_hours)
println("Number of days")
println(number_days)