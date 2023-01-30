require_relative "lib/event"
require_relative "lib/user"
require_relative "lib/create_event"
require 'time'

# Exercices du cours et tests
User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)

user_1 = User.find_by_email("claude@claude.com")
#puts "Voici l'age du User trouvé : #{user_1.age}"
#puts ""

exemple = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
#puts exemple.to_s 
#puts ""

user_1 = User.find_by_email("claude@claude.com")
#puts "Voici l'age du User trouvé : #{user_1.age}"
#puts ""

CreateEvent.new
#tests pour create event

#Fin des exercices du cours et tests

