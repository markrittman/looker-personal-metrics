view: fluentd_activities {
  sql_table_name: personal_metrics.fluentd_activities_5_mins ;;
  view_label: "2 - Health and Workouts"


  measure: calories {
    group_label: "Exercise Activity Metrics"
    type: sum
    sql: ${TABLE}.calories ;;
  }

  measure: distance {
    group_label: "Exercise Activity Metrics"
    type: sum
    sql: ${TABLE}.distance ;;
  }

  measure: duration {
    group_label: "Exercise Activity Metrics"

    type: sum
    sql: ${TABLE}.duration ;;
  }



  dimension: source {
    group_label: "Exercise Activities"

    type: string
    sql: ${TABLE}.source ;;
  }

  dimension_group: date_time {
    label: "Activity Start"
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

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.date_time ;;

  }


  measure: steps {
    group_label: "Exercise Activity Metrics"


    type: sum
    sql: ${TABLE}.steps ;;
  }

  measure: count {
    group_label: "Exercise Activity Metrics"
    label: "Walks"

    type: count

  }


  dimension: type {
    group_label: "Exercise Activities"

    type: string
    sql: ${TABLE}.type ;;
  }


}
