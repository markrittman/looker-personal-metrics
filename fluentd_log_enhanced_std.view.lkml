view: fluentd_log_enhanced_std {
  sql_table_name: personal_metrics.fluentd_log_enhanced_std ;;
  view_label: "6 - Smart Devices"

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
    hidden: yes
    sql: concat(cast(${TABLE}.date_time as string), ${TABLE}.deviceName) ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}.deviceName ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.deviceType ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: raw_value {
    type: string
    sql: ${TABLE}.raw_value ;;
  }

  dimension: room {
    type: string
    sql: ${TABLE}.room ;;
  }

  measure: value {
    type: average
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [device_name]
  }
}
