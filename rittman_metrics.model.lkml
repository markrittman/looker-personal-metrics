connection: "rittman_bigquery"
include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: date_dim {

  case_sensitive: no
  label: "Rittman Metrics"
  join: fluentd_monzo {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_monzo.created_date} ;;
    relationship: many_to_many
  }
  join: fluentd_uber_rides {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_uber_rides.date_date} ;;
    relationship: many_to_many
  }
  join: fluentd_worktime_metrics {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_worktime_metrics.date_date} ;;
    relationship: many_to_many
  }join: fluentd_weather {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_weather.date_date};;
    relationship: one_to_many

  }
  join: fluentd_daily_health_stats {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_daily_health_stats.date_date};;
    relationship: one_to_one
  }
  join: fluentd_strava {
    type: left_outer
    sql_on: ${date_dim.date_date} = ${fluentd_strava.start_date_local_date};;
    relationship: one_to_many
  }
  }
