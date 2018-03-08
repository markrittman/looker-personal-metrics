view: fluentd_twitterstream {
  sql_table_name: personal_metrics.fluentd_twitterstream ;;

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
    sql: ${TABLE}.created_at ;;
  }

  dimension: entityname {
    type: string
    sql: ${TABLE}.entityname ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: place {
    type: string
    sql: ${TABLE}.place ;;
  }

  dimension: sentimentmagnitude {
    type: string
    sql: ${TABLE}.sentimentmagnitude ;;
  }

  dimension: sentimentscore {
    type: string
    sql: ${TABLE}.sentimentscore ;;
  }

  dimension: user_lang {
    type: string
    sql: ${TABLE}.user_lang ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: user_profile_image_url {
    type: string
    sql: ${TABLE}.user_profile_image_url ;;
  }

  dimension: user_screen_name {
    type: string
    sql: ${TABLE}.user_screen_name ;;
  }

  dimension: user_time_zone {
    type: string
    sql: ${TABLE}.user_time_zone ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name, user_screen_name, entityname]
  }
}
