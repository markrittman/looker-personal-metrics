view: v_car_trips {
  sql_table_name: personal_metrics.v_car_trips ;;
  view_label: "Car Journeys"





  measure: distance_km {
    type: sum
    sql: ${TABLE}.distance_km ;;
  }

  dimension: distance_km_tier {
    type: tier
    tiers: [5,10,20,50,100,250,500]
    sql: ${TABLE}.distance_km ;;
  }

  measure: driving_score {
    type: average
    sql: ${TABLE}.DrivingScore ;;
  }



  dimension: end_location {
    type: location
    sql_latitude: ${TABLE}.EndLatitude ;;
    sql_longitude: ${TABLE}.EndLongitude ;;
  }



  measure: engine_light_alerts {
    type: sum
    sql: ${TABLE}.EngineLightAlerts ;;
  }

  measure: fuel_econ_kpl {
    type: average
    sql: ${TABLE}.fuel_econ_kpl ;;
  }

  measure: fuel_l {
    type: sum
    sql: ${TABLE}.fuel_l ;;
  }

  measure: hard_acceleration_alerts {
    type: sum
    sql: ${TABLE}.HardAccelerationAlerts ;;
  }

  measure: hard_brake_alerts {
    type: sum
    sql: ${TABLE}.HardBrakeAlerts ;;
  }



  dimension_group: journey_end_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.journey_end_date_time ;;
  }

  dimension: journey_mins_tier {
    type: tier
    tiers: [5,15,30,60,120,240,360,480,600]
    sql: ${TABLE}.journey_mins ;;
  }

  measure: journey_mins {
    type: sum
    sql: ${TABLE}.journey_mins ;;
  }

  dimension_group: journey_start_date {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour3,
      hour4,
      hour6,
      hour12,
      hour_of_day,
      time_of_day,
      minute,
      minute5,
      minute10,
      minute15,
      minute30,
      day_of_week,
      day_of_month,
      day_of_year,
      date,
      week,
      week_of_year,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.journey_start_date_time ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.journey_start_date_time ;;
  }

  measure: speed_alerts {
    type: sum
    sql: ${TABLE}.SpeedAlerts ;;
  }

  dimension: speed_kph_tier {
    type: tier
    tiers: [5,10,20,40,60,100]
    sql: ${TABLE}.speed_kph ;;
  }

  measure: speed_kph {
    type: average
    sql: ${TABLE}.speed_kph ;;
  }

  dimension: start_address {
    type: string
    sql: ${TABLE}.StartAddress ;;
  }

  dimension: start_location {
    type: location
    sql_latitude: ${TABLE}.StartLatitude ;;
    sql_longitude: ${TABLE}.StartLongitude ;;
  }



  dimension: start_weather_conditions {
    type: string
    sql: ${TABLE}.StartWeatherConditions ;;
  }

  dimension_group: time_of_day {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour3,
      hour4,
      hour6,
      hour8,
      hour_of_day,
      minute5,
      minute10,
      minute15,
      minute30,
      time_of_day
    ]
    sql: ${TABLE}.time_of_day ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
