require 'singleton'

class PubnubSingleton
        include Singleton
        attr_accessor :pubnub

        def initialize()
            @pubnub = Pubnub.new(
              publish_key: ENV['PUBNUB_PUBLISH_KEY'],
              subscribe_key: ENV['PUBNUB_SUBSCRIBE_KEY'],
              secret_key: ENV['PUBNUB_SECRET_KEY'],
              logger: Rails.logger
            )   
        end

        def self.client
            self.instance.pubnub
        end
end