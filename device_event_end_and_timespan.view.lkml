view: device_event_end_and_timespan {
  view_label: "6 - Smart Devices"
  derived_table: {
  sql: SELECT
  date_time as date_time,
  device as device,
  LEAD(date_time, 1) OVER (PARTITION BY device, metric ORDER BY date_time) as end_date_time,
  timestamp_DIFF(LEAD(date_time, 1) OVER (PARTITION BY device, metric ORDER BY date_time),date_time,second) as value_duration_seconds
from `aerial-vehicle-148023.personal_metrics.smartthings_readings`
order by 2,1;;
}

  dimension: date_time {
    type: date_time
    hidden: yes
    sql: ${TABLE}.date_time ;;
  }


  dimension_group: end_date_time {
    group_label: "End Date"
    label: "End"
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
    sql: ${TABLE}.end_date_time ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: concat(cast(${TABLE}.start_date_time as string), ${TABLE}.device) ;;
  }

  measure: value_duration_seconds {
    type: average
    sql: ${TABLE}.value_duration_seconds ;;
  }
}
