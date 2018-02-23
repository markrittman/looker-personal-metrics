view: fluentd_strava {
  sql_table_name: personal_metrics.fluentd_strava ;;
  view_label: "Strava Activities"

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  measure: achievement_count {
    type: sum
    sql: ${TABLE}.achievement_count ;;
  }

  measure: average_cadence {
    type: average
    sql: ${TABLE}.average_cadence ;;
  }

  measure: average_speed {
    type: average
    sql: ${TABLE}.average_speed ;;
  }

  measure: average_temp {
    type: average
    sql: ${TABLE}.average_temp ;;
  }

  measure: average_watts {
    type: average
    sql: ${TABLE}.average_watts ;;
  }

  measure: comment_count {
    type: sum
    sql: ${TABLE}.comment_count ;;
  }

  dimension: commute {
    type: yesno
    sql: ${TABLE}.commute ;;
  }

  dimension: device_watts {
    type: yesno
    sql: ${TABLE}.device_watts ;;
  }

  measure: distance {
    type: sum
    sql: ${TABLE}.distance ;;
  }

  measure: elapsed_time {
    type: sum
    sql: ${TABLE}.elapsed_time ;;
  }

  dimension: elev_high {
    type: number
    sql: ${TABLE}.elev_high ;;
  }

  dimension: elev_low {
    type: number
    sql: ${TABLE}.elev_low ;;
  }

  dimension: end_latlng {
    type: string
    sql: ${TABLE}.end_latlng ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }

  dimension: flagged {
    type: yesno
    sql: ${TABLE}.flagged ;;
  }

  dimension: gear_id {
    type: string
    sql: ${TABLE}.gear_id ;;
  }

  dimension: has_heartrate {
    type: yesno
    sql: ${TABLE}.has_heartrate ;;
  }

  dimension: has_kudoed {
    type: yesno
    sql: ${TABLE}.has_kudoed ;;
  }

  dimension: kilojoules {
    type: number
    sql: ${TABLE}.kilojoules ;;
  }

  dimension: kudos_count {
    type: number
    sql: ${TABLE}.kudos_count ;;
  }

  dimension: location_city {
    type: string
    sql: ${TABLE}.location_city ;;
  }

  dimension: location_country {
    type: string
    sql: ${TABLE}.location_country ;;
  }

  dimension: location_state {
    type: string
    sql: ${TABLE}.location_state ;;
  }

  dimension: manual {
    type: yesno
    sql: ${TABLE}.manual ;;
  }

  dimension: max_speed {
    type: number
    sql: ${TABLE}.max_speed ;;
  }

  dimension: moving_time {
    type: number
    sql: ${TABLE}.moving_time ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: photo_count {
    type: number
    sql: ${TABLE}.photo_count ;;
  }

  measure: pr_count {
    label: "Strava Personal Record Count"
    type: sum
    sql: ${TABLE}.pr_count ;;
  }

  dimension: private {
    type: yesno
    sql: ${TABLE}.private ;;
  }

  dimension: rainer {
    type: string
    sql: ${TABLE}.rainer ;;
  }

  dimension: resource_state {
    type: number
    sql: ${TABLE}.resource_state ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
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

  dimension_group: start_date_local {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_date_local ;;
  }

  dimension: start_location {
    type: location
    sql_latitude: ${TABLE}.start_latitude ;;
    sql_longitude: ${TABLE}.start_longitude ;;
  }



  measure: suffer_score {
    type: average
    sql: ${TABLE}.suffer_score ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  measure: total_elevation_gain {
    type: average
    sql: ${TABLE}.total_elevation_gain ;;
  }

  dimension: total_photo_count {
    type: number
    sql: ${TABLE}.total_photo_count ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: upload_id {
    type: number
    sql: ${TABLE}.upload_id ;;
  }

  dimension: utc_offset {
    type: number
    sql: ${TABLE}.utc_offset ;;
  }

  dimension: workout_type {
    type: number
    sql: ${TABLE}.workout_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
