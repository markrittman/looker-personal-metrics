view: fluentd_mixpanel_podcast_plays {
  sql_table_name: personal_metrics.fluentd_mixpanel_podcast_plays ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
    drill_fields: [episode,region]
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

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.date_time ;;
  }

  dimension: episode {
    type: string
    sql: ${TABLE}.episode ;;
  }

  dimension: initial_referrer {
    type: string
    sql: ${TABLE}.initial_referrer ;;
  }

  dimension: initial_referring_domain {
    type: string
    sql: ${TABLE}.initial_referring_domain ;;
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

  measure: count {
    label: "Play Count"
    type: count
  }
}
