require 'singleton'

class PubnubSingleton
        include Singleton
        attr_accessor :pubnub

        def initialize()
            @pubnub = Pubnub.new(
              publish_key: Rails.application.secrets.PUBNUB_PUBLISH_KEY,
              subscribe_key: Rails.application.secrets.PUBNUB_SUBSCRIBE_KEY,
              secret_key: Rails.application.secrets.PUBNUB_SECRET_KEY,
              logger: Rails.logger
            )   
        end

        def self.client
            self.instance.pubnub
        end
end