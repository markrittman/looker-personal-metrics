view: fluentd_asana_tasks {
  sql_table_name: personal_metrics.fluentd_asana_tasks ;;
  view_label: "1 - Communications and Business"

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}.id ;;
  }





  dimension: assignee_name {
    group_label: "Task Details"
    type: string
    sql: ${TABLE}.assignee_name ;;
  }

  dimension: assignee_status {
    group_label: "Task Details"

    type: string
    sql: ${TABLE}.assignee_status ;;
  }

  dimension: completed {
    group_label: "Task Details"

    type: yesno
    sql: ${TABLE}.completed ;;
  }

  dimension_group: completed_date {
    group_label: "Task Details"

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
    sql: ${TABLE}.completed_at ;;
  }

  dimension_group: date_time {
    label: "Task Created Date"
    group_label: "Task Details"

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
    sql: ${TABLE}.created_at ;;
  }



  dimension: custom_task_category {
    group_label: "Task Details"

    type: string
    sql: ${TABLE}.custom_task_category ;;
  }

  dimension: custom_task_source {
    group_label: "Task Details"

    type: string
    sql: ${TABLE}.custom_task_source ;;
    drill_fields: [name,project_name]
  }

  dimension_group: due_at_date {
    group_label: "Task Details"

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
    sql: ${TABLE}.due_at ;;
  }

  dimension_group: due_on_date {
    group_label: "Task Details"

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
    sql: ${TABLE}.due_on ;;
  }

  dimension: hearted {
    group_label: "Task Details"

    type: yesno
    sql: ${TABLE}.hearted ;;
  }

  dimension_group: modified_date {
    group_label: "Task Details"

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
    sql: ${TABLE}.modified_at ;;
  }

  dimension: name {
    group_label: "Task Details"

    label: "Task Name"
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: notes {
    group_label: "Task Details"

    type: string
    sql: ${TABLE}.notes ;;
  }





  dimension: project_name {
    group_label: "Task Details"

    type: string
    sql: ${TABLE}.project_name ;;
    drill_fields: [name]
  }

  dimension: project_owner {
    group_label: "Task Details"

    type: string
    sql: ${TABLE}.project_owner ;;
  }



  dimension: workspace_name {
    group_label: "Task Details"

    type: string
    sql: ${TABLE}.workspace_name ;;
    drill_fields: [name,project_name]
  }

  measure: count {
    group_label: "Task Metrics"

    label: "Tasks Count"
    type: count
    drill_fields: [id, project_name, assignee_name, name, workspace_name]
  }
}
