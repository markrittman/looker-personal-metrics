view: fluentd_uber_rides {
  label: "Uber Rides"
  sql_table_name: personal_metrics.fluentd_uber_rides ;;

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql:  CAST(${TABLE}.date_time AS TIMESTAMP) ;;
  }

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
    sql: CAST(${TABLE}.date_time AS TIMESTAMP) ;;
  }

  dimension: driver_name {
    group_label: "Vehicle Details"
    label: "Driver Name"
    type: string
    sql: ${TABLE}.DriverName ;;
  }





  dimension: dropoff_location {
    type: location
    sql_latitude: ${TABLE}.DropoffLat ;;
    sql_longitude: ${TABLE}.DropoffLong ;;
  }

  dimension: pickup_location {
    type: location
    sql_latitude: ${TABLE}.PickupLat ;;
    sql_longitude: ${TABLE}.PickupLong ;;
  }



  dimension: ride_type {
    group_label: "Ride Details"
    label: "Ride Type"
    type: string
    sql: ${TABLE}.RideType ;;
  }

  dimension: surge_multiplier {
    group_label: "Ride Details"
    label: "Driver Name"
    type: string
    sql: ${TABLE}.SurgeMultiplier ;;
  }

  dimension: vehicle_license_plate {
    group_label: "Vehicle Details"
    label: "Vehicle License Plate"
    type: string
    sql: ${TABLE}.VehicleLicensePlate ;;
  }

  dimension: vehicle_make_model {
    group_label: "Vehicle Details"
    label: "Vehicle Make & Model"
    type: string
    sql: ${TABLE}.VehicleMakeModel ;;
  }

  measure: count {
    group_label: "Ride Details"
    label: "Ride Count"
    type: count
  }
}
