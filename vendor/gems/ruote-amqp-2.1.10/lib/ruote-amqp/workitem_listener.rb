module RuoteAMQP

  #
  # = AMQP Workitem Listener
  #
  # Used in conjunction with the RuoteAMQP::Participant, the WorkitemListener
  # subscribes to a specific direct exchange and monitors for
  # incoming workitems. It expects workitems to arrive serialized as
  # JSON.
  #
  # == Configuration
  #
  # AMQP configuration is handled by directly manipulating the values of
  # the +AMQP.settings+ hash, as provided by the AMQP gem. No
  # defaults are set by the listener. The only +option+ parsed by
  # the initializer of the workitem listener is the +queue+ key (Hash
  # expected). If no +queue+ key is set, the listener will subscribe
  # to the +ruote_workitems+ direct exchange for workitems, otherwise it will
  # subscribe to the direct exchange provided.
  #
  # The participant requires version 0.6.6 or later of the amqp gem.
  #
  # == Usage
  #
  # Register the engine or storage with the listener:
  #
  #   RuoteAMQP::WorkitemListener.new( engine_or_storage )
  #
  # The workitem listener leverages the asynchronous nature of the amqp gem,
  # so no timers are setup when initialized.
  #
  # See the RuoteAMQP::Participant docs for information on sending
  # workitems out to remote participants, and have them send replies
  # to the correct direct exchange specified in the workitem
  # attributes.
  #
  class WorkitemListener < Ruote::Receiver

    class << self

      # Listening queue - set this before initialization
      attr_writer :queue

      def queue
        @queue ||= 'ruote_workitems'
      end

    end

    # Starts a new WorkitemListener
    #
    # @param [ Ruote::Engine, Ruote::Storage ] A configured ruote engine or storage instance
    # @param [ String ] An optional queue name
    def initialize( engine_or_storage, queue = nil )

      super( engine_or_storage )

      self.class.queue = queue if queue

      RuoteAMQP.start!

      MQ.queue( self.class.queue, :durable => true ).subscribe do |message|
        if AMQP.closing?
          # Do nothing, we're going down
        else
          workitem = decode_workitem( message )
          receive( workitem )
        end
      end
    end

    def stop
      RuoteAMQP.stop!
    end

    private

    # Complicated guesswork that needs to happen here to detect the format
    def decode_workitem( msg )
      hash = Rufus::Json.decode( msg )
      Ruote::Workitem.new( hash )
    end
  end
end
