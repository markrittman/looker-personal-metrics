view: fluentd_activities {
  sql_table_name: personal_metrics.fluentd_activities ;;
  view_label: "Fitbit Workouts"

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  measure: calories {
    type: sum
    sql: ${TABLE}.calories ;;
  }

  measure: distance {
    type: sum
    sql: ${TABLE}.distance ;;
  }

  measure: duration {
    type: sum
    sql: ${TABLE}.duration ;;
  }

  dimension_group: end {
    label: "Activity End"
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

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension_group: start {
    label: "Activity Start"
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

  measure: steps {
    type: sum
    sql: ${TABLE}.steps ;;
  }



  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
