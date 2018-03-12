view: fluentd_sleeps {
  sql_table_name: personal_metrics.fluentd_sleeps ;;
  view_label: "Fitbit Sleep Tracking"

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension_group: day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.day ;;
  }

  dimension: efficiency {
    type: number
    sql: ${TABLE}.efficiency ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.endTime ;;
  }

  dimension: human_id {
    type: string
    sql: ${TABLE}.humanId ;;
  }

  dimension: main_sleep {
    type: yesno
    sql: ${TABLE}.mainSleep ;;
  }

  dimension: number_of_wakeups {
    type: number
    sql: ${TABLE}.numberOfWakeups ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.startTime ;;
  }

  dimension: string_field_18 {
    type: string
    sql: ${TABLE}.string_field_18 ;;
  }

  dimension: time_after_wakeup {
    type: number
    sql: ${TABLE}.timeAfterWakeup ;;
  }

  dimension: time_asleep {
    type: number
    sql: ${TABLE}.timeAsleep ;;
  }

  dimension: time_awake {
    type: number
    sql: ${TABLE}.timeAwake ;;
  }

  dimension: time_in_bed {
    type: number
    sql: ${TABLE}.timeInBed ;;
  }

  dimension: time_series {
    type: string
    sql: ${TABLE}.timeSeries ;;
  }

  dimension: time_to_fall_asleep {
    type: number
    sql: ${TABLE}.timeToFallAsleep ;;
  }

  dimension: tz_offset {
    type: string
    sql: ${TABLE}.tzOffset ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updatedAt ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
