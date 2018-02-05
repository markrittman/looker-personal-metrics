view: fluentd_monzo {
  view_label: "Monzo Current Account"
  sql_table_name: personal_metrics.fluentd_monzo ;;

  dimension: id {
    primary_key: yes
    type: string
    hidden: yes
    sql: ${TABLE}.id ;;
  }




  measure: avg_amount {
    label: "Avg Transaction Amount"

    type: average
    value_format_name: "gbp"
    sql: ${TABLE}.amount/100*-1 ;;
  }

  measure: total_amount {
    label: "Total Transaction Amount"
    value_format_name: "gbp"
    type: sum
    sql: ${TABLE}.amount/100*-1 ;;
  }

  dimension: category {
    group_label: "Transaction Details"
    label: "Spend Category"
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension_group: created {
    group_label: "Transaction Details"
    label: "Transaction Date"
    type: time
    hidden: yes
    timeframes: [
      date
    ]
    sql: ${TABLE}.created ;;
  }

  dimension_group: time {
    group_label: "Transaction Time"
    label: "Transaction Time"
    type: time
    timeframes: [
      time_of_day,
      hour,
      hour3,
      hour4,
      hour6,
      minute15,
      minute30
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: decline_reason {
    group_label: "Transaction Details"
    label: "Transaction Decline Reason"
    type: string
    sql: ${TABLE}.decline_reason ;;
  }

  dimension: description {
    group_label: "Transaction Details"
    label: "Transaction Description"
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: include_in_spending {
    group_label: "Transaction Details"
    label: "Include in Spending?"
    type: yesno
    sql: ${TABLE}.include_in_spending ;;
  }

  dimension: is_load {
    group_label: "Transaction Details"
    label: "Is Load?"
    type: yesno
    sql: ${TABLE}.is_load ;;
  }

  dimension: labels {
    group_label: "Transaction Details"
    label: "Labels"
    type: string
    sql: ${TABLE}.labels ;;
  }

  measure: tot_local_amount {
    label: "Total Amount Local Currency"
    type: sum
    sql: ${TABLE}.local_amount/100 ;;
  }

  measure: avg_local_amount {
    label: "Total Amount Local Currency"
    type: average
    sql: ${TABLE}.local_amount/100 ;;
  }

  dimension: local_currency {
    group_label: "Transaction Details"
    label: "Local Currency Code"
    type: string
    sql: ${TABLE}.local_currency ;;
  }



  dimension: merchant_address_approximate {
    group_label: "Merchant"
    type: yesno
    sql: ${TABLE}.merchant_address_approximate ;;
  }

  dimension: merchant_address_city {
    group_label: "Merchant"
    label: "Merchant Address City"
    type: string
    sql: ${TABLE}.merchant_address_city ;;
  }

  dimension: merchant_address_country {
    group_label: "Merchant"
    label: "Merchant Address Country"
    type: string
    sql: ${TABLE}.merchant_address_country ;;
  }

  dimension: merchant_address_formatted {
    group_label: "Merchant"
    label: "Merchant Address Formatted"
    type: string
    sql: ${TABLE}.merchant_address_formatted ;;
  }

  dimension: merchant_address_location {
    group_label: "Merchant"
    label: "Merchant Address Location"
    type: location
    sql_latitude: ${TABLE}.merchant_address_latitude ;;
    sql_longitude: ${TABLE}.merchant_address_longitude  ;;
  }

dimension: area_code {
    map_layer_name: uk_postcode_areas
    group_label: "Merchant"
    label: "Merchant Postcode Area"
    sql: CASE WHEN SUBSTR(${TABLE}.merchant_address_postcode, 2, 1) IN ('0','1','2','3','4','5','6','7','8','9')
         THEN UPPER(SUBSTR(${TABLE}.merchant_address_postcode, 1,1))
         ELSE UPPER(SUBSTR(${TABLE}.merchant_address_postcode, 1,2)) END ;;
        }


  dimension: merchant_address_region {
    group_label: "Merchant"
    label: "Merchant Postcode Region"
    type: string
    sql: ${TABLE}.merchant_address_region ;;
  }

  dimension: merchant_address_short_formatted {
    group_label: "Merchant"
    label: "Merchant Address Short Formatted"
    type: string
    sql: ${TABLE}.merchant_address_short_formatted ;;
  }

  dimension: merchant_atm {
    group_label: "Merchant"
    label: "Merchant ATM"
    type: yesno
    sql: ${TABLE}.merchant_atm ;;
  }

  dimension: merchant_category {
    group_label: "Merchant"
    label: "Merchant Category"
    drill_fields: [merchant_address_country, merchant_address_region, merchant_address_country,merchant_name]
    type: string
    sql: ${TABLE}.merchant_category ;;
  }





  dimension: merchant_metadata_foursquare_category {
    group_label: "Merchant"
    label: "Merchant Foursquare Category"
    type: string
    sql: ${TABLE}.merchant_metadata_foursquare_category ;;
  }


  dimension: merchant_metadata_foursquare_website {
    group_label: "Merchant"
    label: "Merchant Foursquare Website URL"
    type: string
    sql: ${TABLE}.merchant_metadata_foursquare_website ;;
  }

  dimension: merchant_metadata_google_places_name {
    group_label: "Merchant"
    label: "Merchant Google Places Name"
    type: string
    sql: ${TABLE}.merchant_metadata_google_places_name ;;
  }

  dimension: merchant_metadata_suggested_name {
    group_label: "Merchant"
    label: "Merchant Suggested Name"
    type: string
    sql: ${TABLE}.merchant_metadata_suggested_name ;;
  }

  dimension: merchant_metadata_suggested_tags {
    group_label: "Merchant"
    label: "Merchant Tags"
    type: string
    sql: ${TABLE}.merchant_metadata_suggested_tags ;;
  }

  dimension: merchant_metadata_twitter_id {
    group_label: "Merchant"
    label: "Merchant Twitter ID"
    type: string
    sql: ${TABLE}.merchant_metadata_twitter_id ;;
  }

  dimension: merchant_metadata_website {
    group_label: "Merchant"
    label: "Merchant Website URL"
    type: string
    sql: ${TABLE}.merchant_metadata_website ;;
  }

  dimension: merchant_name {
    group_label: "Merchant"
    label: "Merchant Name"
    type: string
    sql: ${TABLE}.merchant_name ;;
  }



  dimension: metadata_is_topup {
    group_label: "Transaction Details"
    label: "Is Topup?"
    type: yesno
    sql: ${TABLE}.metadata_is_topup ;;
  }

  dimension: metadata_notes {
    group_label: "Transaction Details"
    label: "Metadata Notes"
    type: string
    sql: ${TABLE}.metadata_notes ;;
  }




  dimension: notes {
    group_label: "Transaction Details"
    label: "Notes"
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: originator {
    group_label: "Transaction Details"
    label: "Originator"
    type: yesno
    sql: ${TABLE}.originator ;;
  }






  measure: count {
    label: "Transaction Count"
    type: count
    drill_fields: [id, merchant_metadata_suggested_name, merchant_name, merchant_metadata_google_places_name]
  }
}
