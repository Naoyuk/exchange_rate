# frozen_string_literal: true

class Rate < ApplicationRecord
  def usd_jpy(rate)
    (rate.jpy / rate.usd).round(2)
  end

  def cad_jpy(rate)
    (rate.jpy / rate.cad).round(2)
  end

  def eur_jpy(rate)
    (rate.jpy / rate.eur).round(2)
  end
end
