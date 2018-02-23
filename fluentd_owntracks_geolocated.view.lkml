view: fluentd_owntracks_geolocated {
  sql_table_name: personal_metrics.fluentd_owntracks_geolocated ;;


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
      minute5,
      minute10,
      minute15,
      date,
      week,
      month,
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
