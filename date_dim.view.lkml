view: date_dim {
  sql_table_name: personal_metrics.date_time_dim ;;
  view_label: "0 - Date"

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
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.date_time ;;
  }


}
