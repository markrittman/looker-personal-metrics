view: fluentd_locations {
  sql_table_name: personal_metrics.fluentd_locations ;;
  view_label: "Places Visited"

  dimension: id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.id ;;
  }



  dimension_group: end {
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
    sql: ${TABLE}.endTime ;;
  }



  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    label: "Location Visited Name"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.startTime ;;
  }



  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
