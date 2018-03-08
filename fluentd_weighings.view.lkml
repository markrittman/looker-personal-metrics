view: fluentd_weighings {
  sql_table_name: personal_metrics.fluentd_weighings ;;
  view_label: "Weight Readings"

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
  primary_key: yes
  hidden: yes
  sql: ${TABLE}.date_time
}



  measure: fat_mass_kg {
    type: average
    sql: ${TABLE}.FatMassKg ;;
  }

  measure: fat_percent_kg {
    type: average
    sql: ${TABLE}.FatPercentKg ;;
  }

  measure: lean_mass_kg {
    type: average
    sql: ${TABLE}.LeanMassKg ;;
  }

  measure: weight_kg {
    type: average
    sql: ${TABLE}.weightKg ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
