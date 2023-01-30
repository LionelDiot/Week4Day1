require 'time'

class CreateEvent
  def initialize
    puts "Salut, tu veux créer un évenement ? Cool !"

    puts "Commencons! Quel nom souhaites tu pour ton évenement ? "
    print">"
    event_name = gets.chomp

    puts "OK #{event_name} est prévu pour quand ? (format YYYY-MM-DD HH:MM) ? "
    print">"
    event_time = gets.chomp
    

    puts "et le #{event_time}, ca durerait combien de temps ? (en minutes) "
    print">"
    event_duration = gets.chomp.to_i

    puts "et pendant ces #{event_duration} minutes, qui va venir ? (je veux les emails séparé par un \" \") "
    print">"
    event_attendees = gets.chomp
    event_attendees_array = event_attendees.split
    
    event = Event.new(event_time, event_duration, event_name, event_attendees_array)
    puts ""
    puts event.to_s
  end
end