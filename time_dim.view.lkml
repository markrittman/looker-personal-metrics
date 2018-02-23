view: time_dim {
  sql_table_name: personal_metrics.time_dim ;;
  view_label: "0 - Time"

  dimension: time_part {
    type: string
    sql: ${TABLE}.time_part ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.time_period ;;
  }

  dimension_group: time_period {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      hour3,
      hour4,
      hour6,
      hour8,
      hour_of_day,
      minute5,
      minute10,
      minute15,
      minute30,
      time_of_day
    ]
    sql: ${TABLE}.time_period ;;
  }


}
