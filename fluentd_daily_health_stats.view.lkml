view: fluentd_daily_health_stats {
  view_label: "Fitbit Daily Activity Stats"
  sql_table_name: personal_metrics.fluentd_daily_health_stats ;;



  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year]

    sql: ifnull(parse_timestamp('%B %d, %Y',ltrim(${TABLE}.dateOfActivity)),${TABLE}.date_time) ;;
  }

  measure: fairly_active_minutes {
    group_label: "Activity Hours"
    label: "Fairly Active Hours"
    type: sum
    sql: round(${TABLE}.FairlyActiveMinutes/60,2) ;;
  }

  measure: lightly_active_minutes {
    group_label: "Activity Hours"

    label: "Lightly Active Hours"

    type: sum
    sql: round(${TABLE}.LightlyActiveMinutes/60,2) ;;
  }

  measure: sedentary_minutes {
    group_label: "Activity Hours"

    label: "Sedentary Active Hours"
    type: sum
    sql: round(${TABLE}.SedentaryMinutes/60,2) ;;
  }

  dimension: source {
    label: "Fitness Data Source"
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: total_calories_burned {
    group_label: "Workout Metrics"

    label: "Total Calories Burned"
    type: sum
    sql: ${TABLE}.TotalCaloriesBurned ;;
  }

  measure: total_distance_covered {
    group_label: "Workout Metrics"

    label: "Total Distance Covered Km"
    type: sum
    sql: round(${TABLE}.TotalDistanceCovered/1000,2) ;;
  }

  measure: total_steps {
    group_label: "Workout Metrics"
    label: "Total Steps"
    type: sum
    sql: ${TABLE}.TotalSteps ;;
  }

  dimension: very_active_minutes {
    group_label: "Activity Hours"
    label: "Very Active Hours"
    type: string
    sql: round(${TABLE}.VeryActiveMinutes/60,2) ;;
  }


}
