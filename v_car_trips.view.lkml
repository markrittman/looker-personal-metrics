view: v_car_trips {
  sql_table_name: personal_metrics.v_car_trips ;;
  view_label: "3 - Travel and Transportation"





  measure: distance_km {
    group_label: "Car Journey Metrics"
    value_format: "0.00"

    type: sum
    sql: ${TABLE}.distance_km ;;
  }

  dimension: distance_km_tier {
    group_label: "Car Journey Details"

    type: tier
    tiers: [5,10,20,50,100,250,500]
    sql: ${TABLE}.distance_km ;;
  }

  measure: driving_score {
    group_label: "Car Journey Metrics"
    value_format: "0.00"

    type: average
    sql: ${TABLE}.DrivingScore ;;
  }



  dimension: end_location {
    group_label: "Car Journey Details"

    type: location
    sql_latitude: ${TABLE}.EndLatitude ;;
    sql_longitude: ${TABLE}.EndLongitude ;;
  }



  measure: engine_light_alerts {
    group_label: "Car Journey Metrics"

    type: sum
    sql: ${TABLE}.EngineLightAlerts ;;
  }

  measure: fuel_econ_kpl {
    group_label: "Car Journey Metrics"
    value_format: "0.00"

    type: average
    sql: ${TABLE}.fuel_econ_kpl ;;
  }

  measure: fuel_l {
    group_label: "Car Journey Metrics"
    value_format: "0.00"

    type: sum
    sql: ${TABLE}.fuel_l ;;
  }

  measure: hard_acceleration_alerts {
    group_label: "Car Journey Metrics"

    type: sum
    sql: ${TABLE}.HardAccelerationAlerts ;;
  }

  measure: hard_brake_alerts {
    group_label: "Car Journey Metrics"

    type: sum
    sql: ${TABLE}.HardBrakeAlerts ;;
  }



  dimension_group: journey_end_date {

    group_label: "Car Journey Details"

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
    group_label: "Car Journey Details"

    type: tier
    tiers: [5,15,30,60,120,240,360,480,600]
    sql: ${TABLE}.journey_mins ;;
  }

  measure: journey_mins {
    group_label: "Car Journey Metrics"
    value_format: "0.00"
    type: sum
    sql: ${TABLE}.journey_mins ;;
  }

  dimension_group: date_time {
    group_label: "Car Journey Details"
    hidden: yes
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
    group_label: "Car Journey Metrics"

    type: sum
    sql: ${TABLE}.SpeedAlerts ;;
  }

  dimension: speed_kph_tier {
    group_label: "Car Journey Details"

    type: tier
    tiers: [5,10,20,40,60,100]
    sql: ${TABLE}.speed_kph ;;
  }

  measure: speed_kph {
    group_label: "Car Journey Metrics"
    value_format: "0.00"
    type: average
    sql: ${TABLE}.speed_kph ;;
  }

  dimension: start_address {
    group_label: "Car Journey Details"

    type: string
    sql: ${TABLE}.StartAddress ;;
  }

  dimension: start_location {
    group_label: "Car Journey Details"

    type: location
    sql_latitude: ${TABLE}.StartLatitude ;;
    sql_longitude: ${TABLE}.StartLongitude ;;
  }



  dimension: start_weather_conditions {
    group_label: "Car Journey Details"

    type: string
    sql: ${TABLE}.StartWeatherConditions ;;
  }

  dimension_group: time_of_day {
    type: time
    hidden: yes
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
    group_label: "Car Journey Metrics"
    label: "Car Trips"

    type: count
    drill_fields: []
  }
}
