connection: "rittman_bigquery"
include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

explore: date_dim {

  case_sensitive: no
  label: "Data Warehouse"
  join: fluentd_transactions {
    type: left_outer
    sql_on: ${date_dim.date_minute5} = ${fluentd_transactions.date_minute5} ;;
    relationship: many_to_many
  }
  join: smartthings_readings {
    type: left_outer
    sql_on: ${date_dim.date_minute5} = ${smartthings_readings.date_minute5} ;;
    relationship: one_to_many
  }
  join: device_event_end_and_timespan {
    type: left_outer
    sql_on: ${smartthings_readings.date_time} = ${device_event_end_and_timespan.date_time} ;;
    relationship: one_to_many
  }
  join: fluentd_uber_rides {
    type: left_outer
    sql_on: ${date_dim.date_minute5} = ${fluentd_uber_rides.date_minute5} ;;
    relationship: many_to_many
  }
  join: v_car_trips {
    type: left_outer
    sql_on: ${date_dim.date_minute5} = ${v_car_trips.date_time_minute5} ;;
    relationship: one_to_many
  }
  join: fluentd_communications_std {
    type: left_outer
    sql_on: ${date_dim.date_minute5} = ${fluentd_communications_std.date_minute5} ;;
    relationship: one_to_many
  }




  join: fluentd_google_analytics {
    type: left_outer
    sql_on: ${date_dim.date_minute5} = ${fluentd_google_analytics.date_minute5} ;;
    relationship: one_to_many
  }
  join: fluentd_worktime_metrics {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_worktime_metrics.date_date} ;;
    relationship: one_to_one
  }
  join: fluentd_mixpanel_podcast_plays {
    type: left_outer
    sql_on: ${date_dim.date_minute5} = ${fluentd_mixpanel_podcast_plays.date_minute5} ;;
    relationship: many_to_many
  }

  join: fluentd_activities {
    type: left_outer
    sql_on: ${date_dim.date_minute5} = ${fluentd_activities.date_time_minute5} ;;
    relationship: one_to_many
  }



  join: fluentd_weather {
    type: left_outer
    sql_on: ${date_dim.date_hour4} = ${fluentd_weather.date_hour4};;
    relationship: one_to_many

  }
  join: fluentd_daily_health {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_daily_health.date_date};;
    relationship: one_to_one
  }



  join: fluentd_strava {
    type: left_outer
    sql_on: ${date_dim.date_minute15} = ${fluentd_strava.date_time_minute15};;
    relationship: one_to_many
  }

 join: fluentd_geolocation {
   type: left_outer
  sql_on: ${date_dim.date_minute5} = ${fluentd_geolocation.date_minute5} ;;
  relationship: one_to_many
  }

  join: fluentd_asana_tasks {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_asana_tasks.date_time_date};;
    relationship: one_to_many
    }
  }
