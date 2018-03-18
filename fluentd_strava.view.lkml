view: fluentd_strava {
  sql_table_name: personal_metrics.fluentd_strava ;;
  view_label: "2 - Health and Workouts"

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  measure: achievement_count {
    group_label: "Cycle Workout Metrics"
    type: sum
    sql: ${TABLE}.achievement_count ;;
  }

  measure: average_cadence {
    value_format: "0.00"
    group_label: "Cycle Workout Metrics"


    type: average
    sql: ${TABLE}.average_cadence ;;
  }

  measure: average_speed {
    value_format: "0.00"
    group_label: "Cycle Workout Metrics"


    type: average
    sql: ${TABLE}.average_speed ;;
  }

  measure: average_temp {
    group_label: "Cycle Workout Metrics"

    value_format: "0.0"
    type: average
    sql: ${TABLE}.average_temp ;;
  }

  measure: average_watts {
    group_label: "Cycle Workout Metrics"

    value_format: "0.00"

    type: average
    sql: ${TABLE}.average_watts ;;
  }


  dimension: commute {
    group_label: "Cycle Workout Details"
    type: yesno
    sql: ${TABLE}.commute ;;
  }



  measure: total_distance {
    label: "Total Distance (Km)"
    group_label: "Cycle Workout Metrics"

    type: sum
    value_format: "0.00"
    sql: ${TABLE}.distance/1000 ;;
  }

  measure: avg_distance {
    label: "Avg Distance (Km)"
    group_label: "Cycle Workout Metrics"


    type: average
    value_format: "0.00"

    sql: ${TABLE}.distance/1000 ;;
  }

  measure: total_elapsed_time {
    group_label: "Cycle Workout Metrics"

    value_format: "0.00"

    type: sum
    sql: ${TABLE}.elapsed_time ;;
  }

  measure: avg_elapsed_time {
    value_format: "0.00"
    group_label: "Cycle Workout Metrics"

    type: average
    sql: ${TABLE}.elapsed_time ;;
  }

  measure: elev_high {
    group_label: "Cycle Workout Metrics"
    value_format: "0.00"
    type: average
    sql: ${TABLE}.elev_high ;;
  }

  measure: elev_low {
    group_label: "Cycle Workout Metrics"
    value_format: "0.00"
    type: average
    sql: ${TABLE}.elev_low ;;
  }







  dimension: gear_id {
    group_label: "Cycle Workout Details"

    type: string
    sql: ${TABLE}.gear_id ;;
  }

  dimension: has_heartrate {
    group_label: "Cycle Workout Details"

    type: yesno
    sql: ${TABLE}.has_heartrate ;;
  }



  measure: total_kilojoules {
    group_label: "Cycle Workout Metrics"

    type: sum
    sql: ${TABLE}.kilojoules ;;
  }

  measure: avg_kilojoules {
    group_label: "Cycle Workout Metrics"

    type: average
    sql: ${TABLE}.kilojoules ;;
  }

  measure: kudos_count {
    group_label: "Cycle Workout Metrics"

    type: sum
    sql: ${TABLE}.kudos_count ;;
  }

  dimension: location_city {
    group_label: "Cycle Workout Details"
    type: string
    sql: ${TABLE}.location_city ;;
  }

  dimension: location_country {
    group_label: "Cycle Workout Details"
    type: string
    sql: ${TABLE}.location_country ;;
    drill_fields: [location_state,location_city]
  }

  dimension: location_state {
    type: string
    group_label: "Cycle Workout Details"

    sql: ${TABLE}.location_state ;;
    drill_fields: [location_city]

  }




  measure: avg_moving_time {
    group_label: "Cycle Workout Metrics"


    type: average
    sql: ${TABLE}.moving_time ;;
  }

  measure: total_moving_time {
    group_label: "Cycle Workout Metrics"

    type: sum
    sql: ${TABLE}.moving_time ;;
  }

  dimension: name {
    group_label: "Cycle Workout Details"

    label: "Workout Description"

    type: string
    sql: ${TABLE}.name ;;
  }



  measure: pr_count {
    label: "Strava Personal Record Count"
    group_label: "Cycle Workout Metrics"
    type: sum
    sql: ${TABLE}.pr_count ;;
  }



  dimension_group: date_time {
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
      minute,
      minute5,
      minute10,
      minute15,
      minute30,
      time_of_day,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_date ;;
  }



  dimension: start_location {
    group_label: "Cycle Workout Details"

    type: location
    sql_latitude: ${TABLE}.start_latitude ;;
    sql_longitude: ${TABLE}.start_longitude ;;
  }



  measure: suffer_score {
    group_label: "Cycle Workout Metrics"
    type: average
    sql: ${TABLE}.suffer_score ;;
  }


  measure: total_elevation_gain {
    group_label: "Cycle Workout Metrics"

    type: sum
    sql: ${TABLE}.total_elevation_gain ;;
  }

  measure: avg_elevation_gain {
    group_label: "Cycle Workout Metrics"

    type: average
    sql: ${TABLE}.total_elevation_gain ;;
  }

  dimension: type {
    group_label: "Cycle Workout Details"

    type: string
    sql: ${TABLE}.type ;;
  }



  dimension: workout_type {
    group_label: "Cycle Workout Details"

    type: number
    sql: ${TABLE}.workout_type ;;
  }


}
