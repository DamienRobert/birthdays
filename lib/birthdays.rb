require 'birthdays/version'

require 'yaml'
require 'dr/parse/time_parse'

class Person
	attr_accessor :name, :bday, :ybday

	def self.get_day(*args, range: :keep)
		return Time.now if args.empty?
		day=args.first
		if Range === day
			case range
			when :begin
				return day.begin
			when :end
				return day.end
			end
		end
		return day
	end

	def initialize(name,bday)
		@name=name
		if bday.class == Date then
			@bday=bday
		else
			@bday = DR::TimeParse.parse(bday).to_date
		end
		@ybday=Date.parse("#{@bday.month}/#{@bday.day}")
	end
	def <=>(el)
		return @ybday <=> el.ybday
	end

	def birthday?(*day)
		day=Person.get_day(*day)
		case day
		when Range
			first=day.begin
			last=day.end
			return (first.month < @bday.month or first.month == @bday.month && first.day <= @bday.day) &&
				(last.month > @bday.month or last.month == @bday.month && last.day >= @bday.day)
		else
			return day.month == @bday.month && day.day == @bday.day
		end
	end
	def age(*day)
		day=Person.get_day(*day, range: :end)
		ChronicDuration.output(day - @bday.to_time)
	end
	#round the age in years
	def bday_age(*day)
		day=Person.get_day(*day, range: :end).to_date
		age=day.year-@bday.year
		age-=1 if day < @ybday
		return age
	end
	def to_s(*day)
		day=Person.get_day(*day, range: :end)
		@name+" (born #{@bday}, #{bday_age(day)}y)"
	end
end
