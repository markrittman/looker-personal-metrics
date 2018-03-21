view: fluentd_transactions {
  view_label: "4 - Finance and Accounting"
  sql_table_name: personal_metrics.fluentd_transactions ;;

  dimension: account {
    group_label: "All Transactions"
    type: string
    sql: ${TABLE}.account ;;
  }

  measure: total_amount {
    group_label: "All Transactions"
    value_format: "0.00"
    type: sum
    sql: ${TABLE}.amount ;;
    drill_fields: [description,date_date,date_month,date_week]
  }

  measure: avg_amount {
    group_label: "All Transactions"
    type: average
    value_format: "0.00"
    sql: ${TABLE}.amount ;;
    drill_fields: [description,date_date,date_month,date_week]
  }

  dimension: pk {
    type: string
    hidden: yes
    primary_key: yes
    sql: concat(cast(${TABLE}.date_time as string),${description});;
}

  dimension_group: date {
    group_label: "All Transactions"
    hidden: yes

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

  dimension: description {
    group_label: "All Transactions"
    type: string
    sql: ${TABLE}.description ;;
  }


}
