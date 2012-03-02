module Usercycle
  module Event
    
    def event
      @event ||= Event.new self
    end
    
    class Event
      
      def initialize(client)
        @client = client
      end
      
      # List events by identity
      #
      #  client.event.find_by_identity('john.smith@example.com')
      #
      def find_by_identity(identity, options={})
        @client.class.get("/events.json?identity=#{identity}", options)
      end

      # Creating an event
      #
      #  @params = {
      #    :identity => 'john.smith@example.com',
      #    :action_name => 'signed_up',
      #    :occurred_at => '2012-03-01 19:45:54 UTC'
      #    :properties => { :first_name => 'John', :last_name => 'Smith' }
      #  }
      #  @client.event.create(@params)
      #
      def create(params)
        options = { :body => params }
        @client.class.post('/events.json', options)
      end
    end
  end
end