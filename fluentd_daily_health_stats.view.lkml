view: fluentd_daily_health_stats {
  sql_table_name: personal_metrics.fluentd_daily_health_stats ;;

  dimension: date_of_activity {
    type: string
    sql: ${TABLE}.DateOfActivity ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_time ;;
  }

  dimension: fairly_active_minutes {
    type: string
    sql: ${TABLE}.FairlyActiveMinutes ;;
  }

  dimension: lightly_active_minutes {
    type: string
    sql: ${TABLE}.LightlyActiveMinutes ;;
  }

  dimension: sedentary_minutes {
    type: string
    sql: ${TABLE}.SedentaryMinutes ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: total_calories_burned {
    type: string
    sql: ${TABLE}.TotalCaloriesBurned ;;
  }

  dimension: total_distance_covered {
    type: string
    sql: ${TABLE}.TotalDistanceCovered ;;
  }

  dimension: total_distance_covered_unit {
    type: string
    sql: ${TABLE}.TotalDistanceCoveredUnit ;;
  }

  dimension: total_steps {
    type: number
    sql: ${TABLE}.TotalSteps ;;
  }

  dimension: very_active_minutes {
    type: string
    sql: ${TABLE}.VeryActiveMinutes ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
