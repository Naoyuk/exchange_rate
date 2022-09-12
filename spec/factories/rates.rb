# frozen_string_literal: true

FactoryBot.define do
  factory :rate do
    get_at { '2021-05-03 18:22:32' }
    usd { 1.5 }
    cad { 1.5 }
    jpy { 1.5 }
    eur { 1.5 }
  end
end
