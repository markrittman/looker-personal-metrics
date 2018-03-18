view: fluentd_communications_std {
  sql_table_name: personal_metrics.fluentd_communications_std ;;
  view_label: "1 - Communications and Business"

  dimension: categoryname {
    group_label: "Communications"
    label: "Categorization"
    type: string
    sql: ${TABLE}.categoryname ;;
  }

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
    type: string
    hidden: yes
    primary_key: yes
    sql: concat(cast(${TABLE}.date_time as string),${TABLE}.post_body);;

}

  dimension: entityname {
    group_label: "Communications"

    label: "Entities"
    type: string
    sql: ${TABLE}.entityname ;;
  }

  dimension: message_sentiment {
    group_label: "Communications"

    label: "Sentiment"
    type: string
    sql: ${TABLE}.message_sentiment ;;
  }

  dimension: post_author {
    group_label: "Communications"

    label: "Message From"
    type: string
    drill_fields: [type, post_title]
    sql: ${TABLE}.post_author ;;
  }

  dimension: post_body {
    group_label: "Communications"

    label: "Message Content"
    type: string
    sql: ${TABLE}.post_body ;;
  }

  dimension: post_recipient {
    group_label: "Communications"

    label: "Message To"
    type: string
    drill_fields: [type, post_title]

    sql: ${TABLE}.post_recipient ;;
  }

  dimension: post_title {
    group_label: "Communications"

    label: "Message Title"
    type: string
    sql: ${TABLE}.post_title ;;
  }

  dimension: post_url {
    group_label: "Communications"

    label: "Message URL"
    type: string
    sql: ${TABLE}.post_url ;;
  }

  measure: sentimentmagnitude {
    group_label: "Communications Metrics"

    label: "Sentiment Magnitude"
    type: number
    sql: round(${TABLE}.sentimentmagnitude,2) ;;
  }

  measure: sentimentscore {
    group_label: "Communications Metrics"

    label: "Sentiment Score"
    value_format: "0.00"
    type: average
    sql: round(${TABLE}.sentimentscore,2) ;;
  }

  dimension: type {
    group_label: "Communications"

    label: "Message Type"
    type: string
    drill_fields: [post_author, post_title, post_recipient]
    sql: ${TABLE}.type ;;
  }

  measure: count {
    group_label: "Communications Metrics"

    label: "Count of Messages"
    type: count
    drill_fields: [entityname, categoryname]
  }
}
