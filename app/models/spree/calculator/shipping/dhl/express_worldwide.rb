require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module DHL
      class ExpressWorldwide < Spree::Calculator::Shipping::DHL::Base
        def self.description
          I18n.t("dhl.express_worldwide")
        end
      end
    end
  end
end
