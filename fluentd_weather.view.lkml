view: fluentd_weather {
  view_label: "2 - Health and Workouts"
  sql_table_name: personal_metrics.fluentd_weather_offsets ;;

  dimension: condition {
    group_label: "Local Weather Details"
    label: "Weather Condition"
    type: string
    sql: ${TABLE}.condition ;;
  }



  dimension_group: date {
    type: time
    hidden: yes
    timeframes: [
      date,
      time_of_day,
      hour,
      hour3,
      hour4,
      hour6,
      minute15,
      minute30,
      time
    ]
    sql: ${TABLE}.date_time ;;
  }

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.date_time ;;
  }

  dimension: humidity {
    group_label: "Local Weather Details"

    label: "Weather Humidity"
    type: number
    sql: ${TABLE}.humidity ;;
  }


  dimension: temp_c {
    group_label: "Local Weather Details"

    label: "Outside Temperature"
    type: tier
    tiers: [-5,0,5,10,15,20,25,30,40]
    style: integer
    sql: ${TABLE}.temp_c ;;
  }



  dimension: wind_direction {
    group_label: "Local Weather Details"

    label: "Wind Direction"
    type: string
    sql: ${TABLE}.wind_direction ;;
  }

  dimension: wind_speed_kph {
    group_label: "Local Weather Details"

    label: "Wind Speed Kph"
    type: tier
    tiers: [,0,5,10,15,20,25,30,40,50]
    style: integer
    sql: ${TABLE}.wind_speed_kph ;;
  }

  measure: avg_wind_speed_kph {
    group_label: "Local Weather Metrics"

    label: "Avg Wind Speed Kph"
    type: average
    value_format: "0"
    sql: ${TABLE}.wind_speed_kph  ;;
    }

    measure: avg_temp_c {
      group_label: "Local Weather Metrics"

      label: "Avg Temp C"
      value_format: "0"
      type: average
      sql: ${TABLE}.wind_speed_kph  ;;
  }

  measure: avg_wind_speed_kph_month_ago {
    group_label: "Local Weather Metrics"

    label: "Avg Wind Speed Kph (Month Ago)"
    value_format: "0"

    type: average
    sql: ${TABLE}.wind_speed_kph_month_ago  ;;
  }

  measure: avg_temp_c_month_ago {
    group_label: "Local Weather Metrics"

    label: "Avg Temp C (Month Ago)"
    value_format: "0"

    type: average
    sql: ${TABLE}.wind_speed_kph_month_ago  ;;
  }

  measure: avg_wind_speed_kph_3month_ago {
    group_label: "Local Weather Metrics"

    label: "Avg Wind Speed Kph (Three Months Ago)"
    value_format: "0"

    type: average
    sql: ${TABLE}.wind_speed_kph_3month_ago  ;;
  }

  measure: avg_temp_c_3month_ago {
    group_label: "Local Weather Metrics"

    label: "Avg Temp C (Three Months Ago)"
    value_format: "0"

    type: average
    sql: ${TABLE}.wind_speed_kph_3month_ago  ;;
  }

  measure: avg_wind_speed_kph_6month_ago {
    group_label: "Local Weather Metrics"

    label: "Avg Wind Speed Kph (Six Months Ago)"
    value_format: "0"

    type: average
    sql: ${TABLE}.wind_speed_kph_6month_ago  ;;
  }

  measure: avg_temp_c_6month_ago {
    group_label: "Local Weather Metrics"

    label: "Avg Temp C (Six Months Ago)"
    value_format: "0"

    type: average
    sql: ${TABLE}.wind_speed_kph_6month_ago  ;;
  }











}
