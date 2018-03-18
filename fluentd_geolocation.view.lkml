view: fluentd_geolocation {
  sql_table_name: personal_metrics.fluentd_geolocation ;;
  view_label: "5 - Locations Visited"

  measure: altitude_m {
    type: average
    sql: ${TABLE}.altitude_m ;;
  }

  dimension: battery_percentage_remaining {
    type: number
    sql: ${TABLE}.battery_percentage_remaining ;;
  }

  dimension: compass_direction {
    type: number
    sql: ${TABLE}.compass_direction ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
    drill_fields: [locality]
  }

  dimension_group: date {
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

  dimension: pk {
    primary_key: yes
    hidden: no
    sql: ${TABLE}.date_time ;;
  }

  dimension: location_mapref {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lon ;;
  }

  dimension: locality {
    type: string
    sql: ${TABLE}.locality ;;
    drill_fields: [location]
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }



  measure: velocity_kmh {
    type: average
    sql: ${TABLE}.velocity_kmh ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
