# your code go
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene
    def initialize(name, bank_account=25, happiness= 8,hygiene=8)
        @name= name
        @bank_account= bank_account
        @happiness=happiness
        @hygiene= hygiene
    end

    def happiness=(value)
        if value > 10 
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value
        end
    end
    def hygiene=(val)
        if val > 10
            @hygiene =10
        elsif val < 0
            @hygiene = 0
        else
            @hygiene=val
        end
    end
    
    def happy?
        if happiness > 7
            return true

        else
            return false
        end
    end
    def clean?
        if hygiene > 7
            return true

        else
            return false
        end
    end
    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end
    def take_bath 
       self.hygiene=( hygiene + 4)
       return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(hygiene-3)
        self.happiness=(happiness+2)
        '♪ another one bites the dust ♫'
    end
    def call_friend(friend)
        self.happiness = (happiness+3)  
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(happiness-2)
            person.happiness=(person.happiness-2)
            return 'blah blah partisan blah lobbyist' 
        elsif topic == "weather"
            self.happiness=(happiness+1)
            person.happiness=(person.happiness+1)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end