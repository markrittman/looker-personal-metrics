view: fluentd_communications {
  sql_table_name: personal_metrics.fluentd_communications ;;

  dimension: categoryname {
    type: string
    sql: ${TABLE}.categoryname ;;
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

  dimension: entityname {
    type: string
    sql: ${TABLE}.entityname ;;
  }

  dimension: message_sentiment {
    type: string
    sql: ${TABLE}.message_sentiment ;;
  }

  dimension: post_author {
    type: string
    sql: ${TABLE}.post_author ;;
  }

  dimension: post_body {
    type: string
    sql: ${TABLE}.post_body ;;
  }

  dimension: post_recipient {
    type: string
    sql: ${TABLE}.post_recipient ;;
  }

  dimension: post_title {
    type: string
    sql: ${TABLE}.post_title ;;
  }

  dimension: post_url {
    type: string
    sql: ${TABLE}.post_url ;;
  }

  dimension: sentimentmagnitude {
    type: number
    sql: ${TABLE}.sentimentmagnitude ;;
  }

  dimension: sentimentscore {
    type: number
    sql: ${TABLE}.sentimentscore ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [entityname, categoryname]
  }
}
