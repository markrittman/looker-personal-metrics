view: fluentd_log_enhanced_std {
  sql_table_name: personal_metrics.fluentd_log_enhanced_devices ;;
  view_label: "6 - Smart Devices"

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
    sql: ${TABLE}.start_date_time ;;
  }

  dimension_group: start_date_time {
    group_label: "Start and End Dates/Times"

    label: "Start"
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
    sql: ${TABLE}.start_date_time ;;
  }

  dimension: event_timestamp {
    type: string
    sql: ${TABLE}.start_date_time ;;
  }

  dimension_group: end_date_time {
    group_label: "Date"
    label: "End"
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

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: concat(cast(${TABLE}.start_date_time as string), ${TABLE}.device) ;;
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
    drill_fields: [device_type]
  }

  dimension: metric {
    group_label: "Smart Device"
    label: "Metric"
    type: string
    sql: ${TABLE}.metric ;;
  }



  dimension: room {
    group_label: "Location"
    type: string
    sql: ${TABLE}.room ;;
    drill_fields: [device_type,device]
  }

  dimension: raw_value {
    type: string
    sql: ${TABLE}.raw_value ;;
  }

  measure: count {
    type: count
    drill_fields: [device]
  }


measure: total_state_duration_seconds {
  type: sum
  sql: ${TABLE}.state_duration_seconds ;;
}

  measure: avg_state_duration_seconds {
    type: average
    sql: ${TABLE}.state_duration_seconds ;;
}

  measure: avg_state_value {
    type: average
    sql: ${TABLE}.value ;;
  }

  measure: max_state_value {
    type: max
    sql: ${TABLE}.value ;;
  }
  }
