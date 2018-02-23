view: strava_efforts {
  sql_table_name: personal_metrics.strava_efforts ;;
  view_label: "Strava Segment Efforts"

  dimension: activity {
    type: string
    sql: ${TABLE}.Activity ;;
  }

  dimension: activity_id {
    type: number
    sql: ${TABLE}.Activity_Id ;;
  }

  dimension: bearing {
    type: tier
    tiers: [90,180,270]
    sql: ${TABLE}.Bearing ;;
  }

  measure: cadence {
    type: average
    sql: ${TABLE}.Cadence ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  measure: dist_km {
    type: sum
    sql: ${TABLE}.Dist_km/1000 ;;
  }

  measure: elapsed_time {
    type: sum
    sql: ${TABLE}.Elapsed_Time ;;
  }

  measure: elv_change_m {
    type: sum
    sql: ${TABLE}.Elv_change_m ;;
  }

  measure: elv_gain_m {
    type: sum
    sql: ${TABLE}.Elv_gain_m ;;
  }

  dimension: gear {
    type: string
    sql: ${TABLE}.Gear ;;
  }

  dimension: grade__ {
    type: number
    sql: ${TABLE}.Grade__ ;;
  }

  dimension: heart_rate {
    type: number
    sql: ${TABLE}.Heart_Rate ;;
  }

  dimension: max_elv_m {
    type: number
    sql: ${TABLE}.Max_Elv_m ;;
  }

  dimension: max_grade__ {
    type: number
    sql: ${TABLE}.Max_Grade__ ;;
  }

  dimension: max_hr {
    type: number
    sql: ${TABLE}.Max_HR ;;
  }

  dimension: name {
    label: "Segment Name"
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: others {
    type: number
    sql: ${TABLE}.Others ;;
  }

  dimension: pace__100m {
    type: number
    sql: ${TABLE}.Pace__100m ;;
  }

  dimension: pace__km {
    type: number
    sql: ${TABLE}.Pace__km ;;
  }

  dimension: pr_pos {
    type: number
    sql: ${TABLE}.PR_Pos ;;
  }

  dimension: pr_pos_score {
    type: number
    sql: ${TABLE}.PR_Pos_Score ;;
  }

  dimension: segment_id {
    type: number
    sql: ${TABLE}.Segment_Id ;;
  }

  measure: speed_km_h {
    type: average
    sql: ${TABLE}.Speed_km_h ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}.Tries ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension_group: effort_start_date{
    type: time
    timeframes: [
      raw,
      time,
      minute5,
      minute10,
      minute15,
      time_of_day,
      hour,
      hour4,
      hour6,
      hour12,
      hour_of_day,
      date,
      day_of_week,
      day_of_month,
      day_of_year,
      day_of_week_index,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.`When` ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: concat(concat(cast(${TABLE}.activity_id as string),cast(${TABLE}.segment_id as string),cast(${TABLE}.`When` as string)) ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
