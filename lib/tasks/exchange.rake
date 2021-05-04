namespace :exchange do
    desc "Fetch exchange rate"
    task fetch: :environment do
        require 'open-uri'
        require 'json'

        api_key = Rails.application.credentials.open_exchange_rates[:app_id]
        uri = "https://openexchangerates.org/api/latest.json?app_id=" + api_key

        response = open(uri)
        response_code = response.status[0]

        if response_code == '200'
            result = JSON.parse(response.read)
            usd = result['rates']['USD']
            cad = result['rates']['CAD']
            jpy = result['rates']['JPY']
            eur = result['rates']['EUR']
            
            Rate.create(get_at: Time.now, usd: usd, cad: cad, jpy: jpy, eur: eur)

            logger = Logger.new 'log/fetch_rate.log'
        end
    end
end

namespace :exchange do
    
end
