view: fluentd_daily_health {
  sql_table_name: personal_metrics.fluentd_daily_health ;;
  view_label: "2 - Health and Workouts"

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

dimension: pk {
  primary_key: yes
  hidden: yes
  sql: ${TABLE}.date_time ;;
}


measure: fairly_active_minutes {
  group_label: "Daily Fitness Metrics"
  label: "Average Daily Exercise Mins"
  type: average
  value_format: "0"
  sql: ifnull(${TABLE}.FairlyActiveMinutes,0)+ifnull(${TABLE}.VeryActiveMinutes,0)+ifnull(${TABLE}.LightlyActiveMinutes,0) ;;
}







measure: total_calories_burned {
  group_label: "Daily Fitness Metrics"

  label: "Average Daily Calories Burned"
  value_format: "0"
  type: average
  sql: ${TABLE}.TotalCaloriesBurned ;;
}

measure: total_distance_covered {
  group_label: "Daily Fitness Metrics"

  label: "Metres Covered/Day"
  value_format: "0"
  type: average
  sql: ${TABLE}.TotalDistanceCovered ;;
}

measure: total_steps {
  group_label: "Daily Fitness Metrics"
  label: "Average Daily Steps Walked"
  value_format: "0"
  type: average
  sql: ${TABLE}.TotalSteps ;;
}



  measure: number_of_wakeups {
    group_label: "Daily Sleep Metrics"
    value_format: "0"
    type: average
    sql: ${TABLE}.numberOfWakeups ;;
  }

  measure: number_of_wakeups_month_ago {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.numberOfWakeups_month_ago ;;
  }

  measure: number_of_wakeups_3month_ago {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.numberOfWakeups_3month_ago ;;
  }



  measure: time_asleep {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.timeAsleep ;;
  }

  measure: time_asleep_month_ago {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.timeAsleep_month_ago ;;
  }

  measure: time_asleep_3month_ago {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.timeAsleep_3month_ago ;;
  }

  measure: time_awake {
    group_label: "Daily Sleep Metrics"

    type: average
    sql: ${TABLE}.timeAwake ;;
  }

  measure: time_awake_month_ago {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.timeAwake_month_ago ;;
  }

  measure: time_awake_3month_ago {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.timeAwake_3month_ago ;;
  }


  measure: time_in_bed {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.timeInBed ;;
  }

  measure: time_in_bed_month_ago {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.timeInBed_month_ago ;;
  }
  measure: time_in_bed_3month_ago {
    group_label: "Daily Sleep Metrics"
    value_format: "0"

    type: average
    sql: ${TABLE}.timeInBed_month_ago ;;
  }
  measure: fat_mass_kg {
    group_label: "Daily Weight Metrics"
    value_format: "0.00"

    type: average
    sql: ${TABLE}.FatMassKg ;;
  }

  measure: fat_percent_kg {
    group_label: "Daily Weight Metrics"
    value_format: "0.00"

    type: average
    sql: ${TABLE}.FatPercentKg ;;
  }

  measure: lean_mass_kg {
    group_label: "Daily Weight Metrics"
    value_format: "0.00"

    type: average
    sql: ${TABLE}.LeanMassKg ;;
  }

  measure: weight_kg {
    group_label: "Daily Weight Metrics"
    value_format: "0.0"

    type: average
    sql: ${TABLE}.weightKg ;;
  }

}
