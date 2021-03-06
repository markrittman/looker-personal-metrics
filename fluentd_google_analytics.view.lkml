view: fluentd_google_analytics {
  sql_table_name: personal_metrics.fluentd_google_analytics ;;
  view_label: "1 - Communications and Business"

  measure: avg_page_load_time {
    group_label: "Site Activity Metrics"
    type: average
    sql: ${TABLE}.avg_page_load_time ;;
  }

  measure: avg_session_duration {
    group_label: "Site Activity Metrics"

    type: average
    sql: ${TABLE}.avg_session_duration ;;
  }

  measure: bounce_count {
    group_label: "Site Activity Metrics"

    type: sum
    sql: ${TABLE}.bounce_count ;;
  }

  dimension: country {
    group_label: "Website Visitors"

    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
    drill_fields: [visitor_location]
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.date_time ;;
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

  measure: entrance_count {
    group_label: "Site Activity Metrics"

    type: sum
    sql: ${TABLE}.entrance_count ;;
  }

  measure: exit_count {
    group_label: "Site Activity Metrics"

    type: sum
    sql: ${TABLE}.exit_count ;;
  }

  dimension: full_referrer {
    group_label: "Website Visitors"

    type: string
    sql: ${TABLE}.full_referrer ;;
  }

  dimension: visitor_location {
    group_label: "Website Visitors"

    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }



  dimension: page_title {
    group_label: "Website Visitors"

    type: string
    sql: ${TABLE}.page_title ;;
    drill_fields: [country]
  }

  measure: pageview_count {
    group_label: "Site Activity Metrics"

    type: sum
    sql: ${TABLE}.pageview_count ;;
  }

  dimension: site {
    group_label: "Website Visitors"

    type: string
    sql: ${TABLE}.site ;;
    drill_fields: [page_title]
  }

  measure: visitor_count {
    group_label: "Site Activity Metrics"

    type: sum
    sql: ${TABLE}.visitor_count ;;
  }


}
