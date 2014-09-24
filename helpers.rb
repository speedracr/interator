def set_month
  puts "Enter the month (MM)"
  @startmonth = gets.chomp
end

def set_year
  puts "Enter year (YYYY)"
  @startyear = gets.chomp
end

def calculatemonths(startyear, startmonth, amount, rate)
  currentmonth = Time.now.month
  currentyear = Time.now.year

  if startyear >= currentyear && startmonth > currentmonth
    return "This won't work. Enter a date in the past."
  elsif currentyear > startyear
    partial_months_start = 12 - startmonth + 1
  else 
    partial_months_start = 0
  end

  if currentyear - 1 > startyear
    full_months = (currentyear - startyear - 1) * 12
  else
    full_months = 0
  end

  partial_months = currentmonth - 1

  @diff = partial_months_start + full_months + partial_months
  @quarters = @diff / 3
  interestrate = ((100 + rate)/100.0)
  @result = amount * (interestrate ** @quarters)

  # puts diff
  # puts interestrate
  # puts "quarters #{diff / 3 }"
  # puts "The final amount is #{result}"
  # puts "start #{partial_months_start}, full #{full_months}, partial #{partial_months}" 
end