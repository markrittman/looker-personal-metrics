view: fluentd_worktime_metrics {
  view_label: "1 - Communications and Business"
  sql_table_name: personal_metrics.fluentd_worktime_metrics ;;

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.id ;;
  }



  measure: all_distracting_hours {
    group_label: "Logged Hours"
    label: "All Distracting Hours"
    type: average
    sql: ${TABLE}.all_distracting_hours ;;
  }

  measure: all_distracting_percentage {
    group_label: "Logged Hour Percentage"
    label: "All Distracting Hours"
    type: average
    sql: ${TABLE}.all_distracting_percentage ;;
  }



  measure: all_productive_hours {
    group_label: "Logged Hours"
    label: "All Productive Hours"
    type: sum
    sql: ${TABLE}.all_productive_hours ;;
  }

  measure: all_productive_percentage {
    label: "All Productive Hours"
    group_label: "Logged Hour Percentage"
    type: average
    sql: ${TABLE}.all_productive_percentage ;;
  }



  measure: business_hours {
    label: "Business Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.business_hours ;;
  }

  measure: business_percentage {
    group_label: "Logged Hour Percentage"
    label: "Business Percentage"

    type: average
    sql: ${TABLE}.business_percentage ;;
  }



  measure: communication_and_scheduling_hours {
    label: "Communicating and Scheduling Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.communication_and_scheduling_hours ;;
  }

  measure: communication_and_scheduling_percentage {
    group_label: "Logged Hour Percentage"
    label: "Communicating and Scheduling Percentage"

    type: average
    sql: ${TABLE}.communication_and_scheduling_percentage ;;
  }

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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }



  measure: design_and_composition_hours {
    label: "Design and Composition Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.design_and_composition_hours ;;
  }

  measure: design_and_composition_percentage {
    group_label: "Logged Hour Percentage"

    type: average
    sql: ${TABLE}.design_and_composition_percentage ;;
  }


  measure: distracting_hours {
    label: "Distracting Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.distracting_hours ;;
  }

  measure: distracting_percentage {
    group_label: "Logged Hour Percentage"
    label: "Distracting Percentage"

    type: average
    sql: ${TABLE}.distracting_percentage ;;
  }



  measure: entertainment_hours {
    label: "Entertainment Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.entertainment_hours ;;
  }

  measure: entertainment_percentage {
    group_label: "Logged Hour Percentage"
    label: "Entertainment Percentage"

    type: average
    sql: ${TABLE}.entertainment_percentage ;;
  }


  measure: neutral_hours {
    label: "Neutral Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.neutral_hours ;;
  }

  measure: neutral_percentage {
    label: "Neutral Percentage"
    group_label: "Logged Hour Percentage"

    type: average
    sql: ${TABLE}.neutral_percentage ;;
  }



  measure: news_hours {
    label: "News Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.news_hours ;;
  }

  measure: news_percentage {
    group_label: "Logged Hour Percentage"

    type: average
    sql: ${TABLE}.news_percentage ;;
  }



  measure: productive_hours {
    label: "Productive Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.productive_hours ;;
  }

  measure: productive_percentage {
    group_label: "Logged Hour Percentage"

    type: average
    sql: ${TABLE}.productive_percentage ;;
  }

  measure: productivity_pulse {
    label: "Productivity Pulse Score"

    type: average
    sql: ${TABLE}.productivity_pulse ;;
  }


  measure: reference_and_learning_hours {
    label: "Reference and Learning Hours"
    group_label: "Logged Hours"

    type: sum
    sql: ${TABLE}.reference_and_learning_hours ;;
  }

  measure: reference_and_learning_percentage {
    group_label: "Logged Hour Percentage"
    label: "Reference and Learning Percentage"

    type: average
    sql: ${TABLE}.reference_and_learning_percentage ;;
  }



  measure: shopping_hours {
    label: "Shopping Hours"
    group_label: "Logged Hours"
    type: sum
    sql: ${TABLE}.shopping_hours ;;
  }

  measure: shopping_percentage {
    group_label: "Logged Hour Percentage"
    label: "Shopping Percentage"
    type: average
    sql: ${TABLE}.shopping_percentage ;;
  }



  measure: social_networking_hours {
    label: "Social Networking Hours"
    group_label: "Logged Hours"
    type: sum
    sql: ${TABLE}.social_networking_hours ;;
  }

  measure: social_networking_percentage {
    group_label: "Logged Hour Percentage"
    label: "Social Networking Percentage"
    type: average
    sql: ${TABLE}.social_networking_percentage ;;
  }



  measure: software_development_hours {
    group_label: "Logged Hours"
    label: "Software Development Hours"
    type: sum
    sql: ${TABLE}.software_development_hours ;;
  }

  measure: software_development_percentage {
    group_label: "Logged Hour Percentage"
    label: "Software Development Percentage"
    type: average
    sql: ${TABLE}.software_development_percentage ;;
  }



  measure: total_hours {
    group_label: "Logged Hours"
    label: "Total Hours"
    type: sum
    sql: ${TABLE}.total_hours ;;
  }



  measure: uncategorized_hours {
    group_label: "Logged Hours"
    label: "Uncategorised Hours"
    type: sum
    sql: ${TABLE}.uncategorized_hours ;;
  }

  measure: uncategorized_percentage {
    group_label: "Logged Hour Percentage"
    label: "Uncategorised Percentage"
    type: average
    sql: ${TABLE}.uncategorized_percentage ;;
  }



  measure: utilities_hours {
    group_label: "Logged Hours"
    label: "Utilities Hours"
    type: sum
    sql: ${TABLE}.utilities_hours ;;
  }

  measure: utilities_percentage {
    group_label: "Logged Hour Percentage"
    label: "Utilities Percentage"
    type: average
    sql: ${TABLE}.utilities_percentage ;;
  }



  measure: very_distracting_hours {
    group_label: "Logged Hours"
    label: "Very Distracting Hours"

    type: sum
    sql: ${TABLE}.very_distracting_hours ;;
  }

  measure: very_distracting_percentage {
    group_label: "Logged Hour Percentage"
    label: "Very Distracting Percentage"

    type: average
    sql: ${TABLE}.very_distracting_percentage ;;
  }



  measure: very_productive_hours {
    group_label: "Logged Hours"
    label: "Very Productive Hours"
    type: sum
    sql: ${TABLE}.very_productive_hours ;;
  }

  measure: very_productive_percentage {
    group_label: "Logged Hour Percentage"
    label: "Very Productive Percentage"
    type: average
    sql: ${TABLE}.very_productive_percentage ;;
  }


}
