view: fluentd_weather {
  sql_table_name: personal_metrics.fluentd_weather ;;

  dimension: condition {
    label: "Weather Condition"
    type: string
    sql: ${TABLE}.condition ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
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

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.date_time ;;
  }

  dimension: humidity {
    label: "Weather Humidity"
    type: number
    sql: ${TABLE}.humidity ;;
  }


  dimension: temp_c {
    label: "Outside Temperature"
    type: tier
    tiers: [-5,0,5,10,15,20,25,30,40]
    style: integer
    sql: ${TABLE}.temp_c ;;
  }



  dimension: wind_direction {
    label: "Wind Direction"
    type: string
    sql: ${TABLE}.wind_direction ;;
  }

  dimension: wind_speed_kph {
    label: "Wind Speed Kph"
    tiers: [,0,5,10,15,20,25,30,40,50]
    style: integer
    sql: ${TABLE}.wind_speed_kph ;;
  }

  measure: avg_wind_speed_kph {
    label: "Avg Wind Speed Kph"
    type: average
    sql: ${TABLE}.wind_speed_kph  ;;
    }

    measure: avg_temp_c {
      label: "Avg Temp C"
      type: average
      sql: ${TABLE}.wind_speed_kph  ;;
  }
}
