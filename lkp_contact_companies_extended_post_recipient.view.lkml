view: lkp_contact_companies_extended_post_recipient {
  sql_table_name: personal_metrics.lkp_contact_companies_extended ;;

  dimension: annual_revenue {
    type: string
    sql: ${TABLE}.Annual_Revenue ;;
  }

  dimension: associated_company {
    type: string
    sql: ${TABLE}.Associated_Company ;;
  }


  dimension: average_pageviews {
    type: number
    sql: ${TABLE}.Average_Pageviews ;;
  }





  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: close_date {
    type: string
    sql: ${TABLE}.Close_Date ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.Company_Name ;;
  }

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Contact_ID ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Create_Date ;;
  }

  dimension: currently_in_sequence {
    type: string
    sql: ${TABLE}.Currently_in_Sequence ;;
  }

  dimension: days_to_close {
    type: string
    sql: ${TABLE}.Days_To_Close ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: email_address_quarantined {
    type: string
    sql: ${TABLE}.Email_Address_Quarantined ;;
  }

  dimension: event_revenue {
    type: number
    sql: ${TABLE}.Event_Revenue ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}.Fax_Number ;;
  }

  dimension: first_conversion {
    type: string
    sql: ${TABLE}.First_Conversion ;;
  }

  dimension: first_conversion_date {
    type: string
    sql: ${TABLE}.First_Conversion_Date ;;
  }

  dimension: first_deal_created_date {
    type: string
    sql: ${TABLE}.First_Deal_Created_Date ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.First_Name ;;
  }

  dimension: first_page_seen {
    type: string
    sql: ${TABLE}.First_Page_Seen ;;
  }

  dimension: first_referring_site {
    type: string
    sql: ${TABLE}.First_Referring_Site ;;
  }

  dimension: first_touch_converting_campaign {
    type: string
    sql: ${TABLE}.First_Touch_Converting_Campaign ;;
  }

  dimension: follower_count {
    type: number
    sql: ${TABLE}.Follower_Count ;;
  }

  dimension: hub_spot_owner {
    type: string
    sql: ${TABLE}.HubSpot_Owner ;;
  }

  dimension: hub_spot_score {
    type: string
    sql: ${TABLE}.HubSpot_Score ;;
  }

  dimension: hub_spot_team {
    type: string
    sql: ${TABLE}.HubSpot_Team ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.IP_Address ;;
  }

  dimension: ip_city {
    type: string
    sql: ${TABLE}.IP_City ;;
  }

  dimension: ip_country {
    type: string
    sql: ${TABLE}.IP_Country ;;
  }

  dimension: ip_country_code {
    type: string
    sql: ${TABLE}.IP_Country_Code ;;
  }

  dimension: ip_state_code_region_code {
    type: string
    sql: ${TABLE}.IP_State_Code_Region_Code ;;
  }

  dimension: ip_state_region {
    type: string
    sql: ${TABLE}.IP_State_Region ;;
  }

  dimension: ip_timezone {
    type: string
    sql: ${TABLE}.IP_Timezone ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.Job_Title ;;
  }

  dimension: klout_score {
    type: number
    sql: ${TABLE}.Klout_Score ;;
  }






  dimension: last_name {
    type: string
    sql: ${TABLE}.Last_Name ;;
  }

  dimension: last_page_seen {
    type: string
    sql: ${TABLE}.Last_Page_Seen ;;
  }


  dimension: lead_status {
    type: string
    sql: ${TABLE}.Lead_Status ;;
  }

  dimension: lifecycle_stage {
    type: string
    sql: ${TABLE}.Lifecycle_Stage ;;
  }

  dimension: linked_in_bio {
    type: string
    sql: ${TABLE}.LinkedIn_Bio ;;
  }

  dimension: linked_in_connections {
    type: number
    sql: ${TABLE}.LinkedIn_Connections ;;
  }



  dimension: mobile_phone_number {
    type: string
    sql: ${TABLE}.Mobile_Phone_Number ;;
  }

  dimension: next_activity_date {
    type: string
    sql: ${TABLE}.Next_Activity_Date ;;
  }

  dimension: number_of_employees {
    type: string
    sql: ${TABLE}.Number_of_Employees ;;
  }



  dimension: number_of_pageviews {
    type: number
    sql: ${TABLE}.Number_of_Pageviews ;;
  }



  dimension: number_of_visits {
    type: number
    sql: ${TABLE}.Number_of_Visits ;;
  }

  dimension: opted_out_of_all_email {
    type: string
    sql: ${TABLE}.Opted_out_of_all_email ;;
  }





  dimension: phone_number {
    type: string
    sql: ${TABLE}.Phone_Number ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.Postal_Code ;;
  }

  dimension: recent_conversion {
    type: string
    sql: ${TABLE}.Recent_Conversion ;;
  }

  dimension: recent_conversion_date {
    type: string
    sql: ${TABLE}.Recent_Conversion_Date ;;
  }

  dimension: recent_deal_amount {
    type: string
    sql: ${TABLE}.Recent_Deal_Amount ;;
  }





  dimension: state_region {
    type: string
    sql: ${TABLE}.State_Region ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.Street_Address ;;
  }





  dimension: total_revenue {
    type: string
    sql: ${TABLE}.Total_Revenue ;;
  }

  dimension: twitter_bio {
    type: string
    sql: ${TABLE}.Twitter_Bio ;;
  }

  dimension: twitter_profile_photo {
    type: string
    sql: ${TABLE}.Twitter_Profile_Photo ;;
  }

  dimension: twitter_username {
    type: string
    sql: ${TABLE}.Twitter_Username ;;
  }

  dimension: website_url {
    type: string
    sql: ${TABLE}.Website_URL ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      twitter_username,
      company_name,
      first_name,
      last_name,
      contact.skype_user_name,
      contact.contact_id,
      contact.first_name,
      contact.batch_payments_bank_account_name,
      contact.last_name,
      contact.name
    ]
  }
}
