view: date_dim {
  sql_table_name: personal_metrics.date_dim ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
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
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.date_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
