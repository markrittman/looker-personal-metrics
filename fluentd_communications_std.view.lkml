view: fluentd_communications_std {
  sql_table_name: personal_metrics.fluentd_communications_std ;;
  view_label: "Email, iMessage, Slack & Social Media"

  dimension: categoryname {
    label: "Categorization"
    type: string
    sql: ${TABLE}.categoryname ;;
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
    type: string
    hidden: yes
    primary_key: yes
    sql: concat(concat(concat(cast(${TABLE}.date_time as string),${TABLE}.post_author),${post_title}),${post_recipient}) ;;
  }

  dimension: entityname {
    label: "Entities"
    type: string
    sql: ${TABLE}.entityname ;;
  }

  dimension: message_sentiment {
    label: "Sentiment"
    type: string
    sql: ${TABLE}.message_sentiment ;;
  }

  dimension: post_author {
    label: "Message From"
    type: string
    drill_fields: [type, post_title]
    sql: ${TABLE}.post_author ;;
  }

  dimension: post_body {
    label: "Message Content"
    type: string
    sql: ${TABLE}.post_body ;;
  }

  dimension: post_recipient {
    label: "Message To"
    type: string
    drill_fields: [type, post_title]

    sql: ${TABLE}.post_recipient ;;
  }

  dimension: post_title {
    label: "Message Title"
    type: string
    sql: ${TABLE}.post_title ;;
  }

  dimension: post_url {
    label: "Message URL"
    type: string
    sql: ${TABLE}.post_url ;;
  }

  measure: sentimentmagnitude {
    label: "Sentiment Magnitude"
    type: number
    sql: ${TABLE}.sentimentmagnitude ;;
  }

  measure: sentimentscore {
    label: "Sentiment Score"
    type: average
    sql: ${TABLE}.sentimentscore ;;
  }

  dimension: type {
    label: "Message Type"
    type: string
    drill_fields: [post_author, post_title, post_recipient]
    sql: ${TABLE}.type ;;
  }

  measure: count {
    label: "Count of Messages"
    type: count
    drill_fields: [entityname, categoryname]
  }
}
