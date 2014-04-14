require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    module Dhl
      class Base < Spree::Calculator::Shipping::ActiveShipping::Base
        def carrier
          carrier_details = {
            :site_id => Spree::ActiveShipping::Config[:dhl_site_id],
            :password => Spree::ActiveShipping::Config[:dhl_password],
            :test => Spree::ActiveShipping::Config[:test_mode]
          }

          ActiveMerchant::Shipping::DHL.new(carrier_details)
        end
      end
    end
  end
end
