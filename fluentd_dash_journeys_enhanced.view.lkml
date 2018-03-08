view: fluentd_dash_journeys_enhanced {
  sql_table_name: personal_metrics.fluentd_dash_journeys_enhanced ;;
  view_label: "Car Journeys"


  dimension_group: date {
    label: "Journey Start Date + Time"
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
    sql: ${TABLE}.date_time ;;
  }

  dimension: distance_km {
    type: number
    sql: ${TABLE}.distance_km ;;
  }

  dimension: driving_score {
    type: number
    sql: ${TABLE}.DrivingScore ;;
  }

  dimension: duration_mins {
    type: number
    sql: ${TABLE}.duration_mins ;;
  }

  dimension: end_address {
    type: string
    sql: ${TABLE}.EndAddress ;;
  }

  dimension_group: end_date {
    label: "Journey End Date + Time"
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
    sql: ${TABLE}.end_date_time ;;
  }

  dimension: end_latitude {
    type: number
    sql: ${TABLE}.EndLatitude ;;
  }

  dimension: end_longitude {
    type: number
    sql: ${TABLE}.EndLongitude ;;
  }

  dimension: end_weather_conditions {
    type: string
    sql: ${TABLE}.EndWeatherConditions ;;
  }

  dimension: ended_at {
    type: string
    sql: ${TABLE}.EndedAt ;;
  }

  dimension: engine_light_alerts {
    type: number
    sql: ${TABLE}.EngineLightAlerts ;;
  }

  dimension: hard_acceleration_alerts {
    type: number
    sql: ${TABLE}.HardAccelerationAlerts ;;
  }

  dimension: hard_brake_alerts {
    type: number
    sql: ${TABLE}.HardBrakeAlerts ;;
  }

  dimension: sms_sent_alerts {
    type: number
    sql: ${TABLE}.SmsSentAlerts ;;
  }

  dimension: speed_alerts {
    type: number
    sql: ${TABLE}.SpeedAlerts ;;
  }

  dimension: start_address {
    type: string
    sql: ${TABLE}.StartAddress ;;
  }

  dimension: start_latitude {
    type: number
    sql: ${TABLE}.StartLatitude ;;
  }

  dimension: start_longitude {
    type: number
    sql: ${TABLE}.StartLongitude ;;
  }

  dimension: start_weather_conditions {
    type: string
    sql: ${TABLE}.StartWeatherConditions ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
