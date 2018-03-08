view: fluentd_drilltodetail_events {
  sql_table_name: personal_metrics.fluentd_drilltodetail_events ;;
  view_label: "Drill to Detail Podcast"

  measure: avgpageloadtime {
    label: "Average Page Load Time"
    type: average
    sql: ${TABLE}.avgpageloadtime ;;
  }

  measure: avgsessionduration {
    label: "Average Session Duration"
    type: average
    sql: ${TABLE}.avgsessionduration ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: concat(cast(${date_time_of_day} as string),${event_type}) ;;
  }

  measure: bounce_count {
    label: "Bounces"
    type: sum
    sql: ${TABLE}.bounce_count ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date_time ;;
  }

  dimension: devicecategory {
    type: string
    sql: ${TABLE}.devicecategory ;;
  }

  measure: entrance_count {
    label: "Session Entrances"
    type: sum
    sql: ${TABLE}.entrance_count ;;
  }

  measure: event_count {
    type: sum
    sql: ${TABLE}.event_count ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  measure: exit_count {
    type: sum
    sql: ${TABLE}.exit_count ;;
  }

  dimension: initial_referrer {
    type: string
    sql: ${TABLE}.initial_referrer ;;
  }

  dimension: initial_referring_domain {
    type: string
    sql: ${TABLE}.initial_referring_domain ;;
  }

  dimension: event_location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude  ;;
  }



  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: referring_domain {
    type: string
    sql: ${TABLE}.referring_domain ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: screen_height {
    type: number
    sql: ${TABLE}.screen_height ;;
  }

  dimension: screen_width {
    type: number
    sql: ${TABLE}.screen_width ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: visitor_count {
    type: number
    sql: ${TABLE}.visitor_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
