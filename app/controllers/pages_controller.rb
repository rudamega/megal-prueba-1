require 'json'
require 'open-uri'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    url = 'https://walkin-app.com/v2.0/habitaciones/habitacionesOcupadas/api/ocupado'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    @hab = user.first[1].length

    url = 'https://walkin-app.com/v2.0/habitaciones/habitacionesOcupadas/api/mantenimiento'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    @hab_mantenimiento = user.first[1].length

    url = 'https://walkin-app.com/v2.0/habitaciones/habitacionesOcupadas/api/disponible'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    @hab_disponible = user.first[1].length
  end

  def ocupados
    url = 'https://walkin-app.com/v2.0/habitaciones/habitacionesOcupadas/api/ocupado'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    @hab = user.first[1]
  end

  def disponibles
    url = 'https://walkin-app.com/v2.0/habitaciones/habitacionesOcupadas/api/disponible'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    @hab = user.first[1]
  end

  def mantenimientos
    url = 'https://walkin-app.com/v2.0/habitaciones/habitacionesOcupadas/api/mantenimiento'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
    @hab = user.first[1]
  end
end
