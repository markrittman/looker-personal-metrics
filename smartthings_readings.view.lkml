view: smartthings_readings {
  view_label: "6 - Smart Devices"
  sql_table_name: personal_metrics.smartthings_readings ;;

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: concat(cast(${TABLE}.date_time as string),${TABLE}.device) ;;

  }

  dimension_group: date {
    type: time
    hidden: yes
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

  dimension_group: start_date {
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

  dimension: device {
    group_label: "Smart Device"
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: device_type {
    group_label: "Smart Device"

    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: metric {
    group_label: "Smart Device"

    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: raw_value {
    type: string
    sql: ${TABLE}.raw_value ;;
  }

  dimension: room {
    group_label: "Smart Device"

    type: string
    sql: ${TABLE}.room ;;
  }

  measure: avg_sensor_value {
    type: average
    sql: ${TABLE}.value ;;
  }

  measure:max_sensor_value {
    type: max
    sql: ${TABLE}.value ;;
  }

  measure:min_sensor_value {
    type: min
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
