view: fluentd_owntracks_geolocated {
  sql_table_name: personal_metrics.fluentd_owntracks_geolocated ;;
  view_label: "Owntracks Geo-Tracking"

  dimension: alt {
    label: "Altitude"
    type: number
    sql: ${TABLE}.alt ;;
  }

  measure: batt {
    label: "Battery Charge %"
    type: average
    sql: ${TABLE}.batt ;;
  }

  dimension: cog {
    label: "Direction Traveling"
    type: number
    sql: ${TABLE}.cog ;;
  }



  dimension: country {
    label: "Location Country"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: county {
    label: "Location County"
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: formatted_address {
    label: "Location Address"
    type: string
    sql: ${TABLE}.formatted_address ;;
  }

  dimension: location_latlong {
    label: "Location Map Co-ordinates"
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lon ;;
  }

  dimension: locality {
    label: "Location Locality Name"
    type: string
    sql: ${TABLE}.locality ;;
  }



  dimension: state {
    label: "Location State"
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.tst ;;
    }


  dimension_group: date_time {
    label: "Date and Time"
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
    sql: ${TABLE}.tst ;;
  }



  measure: vel {
    label: "Velocity Ms"
    type: average
    sql: ${TABLE}.vel ;;
  }


}
