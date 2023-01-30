require 'time'

class Event 

  attr_accessor :start_date, :duration, :event_name, :attendees

  def initialize (start_date, duration, event_name, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @event_name = event_name
    @attendees = attendees
  end

  def postpone_24h
    @start_date += 86400
  end

  def end_date
    @start_date + ( @duration *60)
  end

  def is_past?
    start_date < Time.now
  end

  def is_future?
    start_date > Time.now
  end

  def is_soon?
    ((Time.now - start_date)<= 1800 ) && ((Time.now - start_date)>= 0)
  end

  def to_s
    puts "> Titre : #{event_name}"
    puts "> Date de début : #{start_date}"
    puts "> Durée : #{duration}"
    puts "> Invités : #{attendees}"
  end

end