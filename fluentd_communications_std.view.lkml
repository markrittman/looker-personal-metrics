view: fluentd_communications_std {
  sql_table_name: personal_metrics.fluentd_communications_std ;;
  view_label: "1 - Communications and Business"

  dimension: categoryname {
    group_label: "Messages"
    label: "Message Categorisation"
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
    group_label: "Messages"

    label: "Entities"
    type: string
    sql: ${TABLE}.entityname ;;
  }

  dimension: message_sentiment {
    group_label: "Messages"

    label: "Sentiment Analysis Label"
    type: string
    sql: ${TABLE}.message_sentiment ;;
  }

  dimension: post_author {
    group_label: "Messages"
    label: "Author"
    type: string
    drill_fields: [type, post_title]
    sql: ${TABLE}.post_author ;;
  }

  dimension: post_body {
    group_label: "Messages"

    label: "Message"
    type: string
    sql: ${TABLE}.post_body ;;
  }

  dimension: post_recipient {
    group_label: "Messages"

    label: "Recipient"
    type: string
    drill_fields: [type, post_title]

    sql: ${TABLE}.post_recipient ;;
  }

  dimension: post_title {
    group_label: "Messages"

    label: "Title"
    type: string
    sql: ${TABLE}.post_title ;;
  }

  dimension: post_url {
    group_label: "Messages"

    label: "URL"
    type: string
    sql: ${TABLE}.post_url ;;
  }



  dimension: type {
    group_label: "Messages"

    label: "Message Type"
    type: string
    drill_fields: [post_author, post_title, post_recipient]
    sql: ${TABLE}.type ;;
  }

  dimension: post_recipient_linkedin_bio {
    group_label: "People and Companies"
    label: "Recipient LinkedIn Bio"

    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: post_author_linkedin_bio {
    group_label: "People and Companies"
    label: "Author LinkedIn Bio"

    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: post_author_Associated_Company {
    group_label: "People and Companies"
    label: "Author Company"

    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: post_recipient_Associated_Company {
    group_label: "People and Companies"
    label: "Recipient Company"
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: post_author_Job_Title {
    group_label: "People and Companies"
    label: "Author Job Title"
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: post_recipient_Job_Title {
    group_label: "People and Companies"
    label: "Recipient Company"
    type: string
    sql: ${TABLE}.type ;;
  }





  measure: count {
    group_label: "Message Metrics"

    label: "Count of Messages"
    type: count
    drill_fields: [entityname, categoryname]
  }

  measure: sentimentmagnitude {
    group_label: "Message Metrics"

    label: "Sentiment Magnitude"
    value_format: "0.00"
    type: number
    sql: round(${TABLE}.sentimentmagnitude,2) ;;
  }

  measure: sentimentscore {
    group_label: "Message Metrics"

    label: "Sentiment Score"
    value_format: "0.00"
    type: average
    sql: round(${TABLE}.sentimentscore,2) ;;
  }

  measure: post_recipient_klout_score {
    group_label: "Message Metrics"
    label: "Message Recipient Klout Score"
    type: average
    sql: ${TABLE}.type ;;
  }
  measure: post_author_klout_score {
    group_label: "Message Metrics"
    label: "Message Author Klout Score"

    type: average
    sql: ${TABLE}.type ;;
  }

  measure: post_author_Follower_Count {
    group_label: "Message Metrics"
    label: "Post Author Follower Count"

    type: average
    sql: ${TABLE}.type ;;
  }

  measure: post_recipient_Follower_Count {
    group_label: "Message Metrics"
    label: "Post Recipient Follower Count"

    type: average
    sql: ${TABLE}.type ;;
  }
  measure: post_recipient_LinkedIn_Connections {
    group_label: "Message Metrics"
    label: "Post Recipient LinkedIn Connection Count"

    type: average
    sql: ${TABLE}.type ;;
  }

  measure: post_author_LinkedIn_Connections {
    group_label: "Message Metrics"
    label: "Post Author LinkedIn Connection Count"

    type: average
    sql: ${TABLE}.type ;;
  }



}
