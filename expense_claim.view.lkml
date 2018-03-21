view: expense_claim {
  sql_table_name: xero.expense_claim ;;

  dimension: expense_claim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.expense_claim_id ;;
  }

  dimension: amount_due {
    type: number
    sql: ${TABLE}.amount_due ;;
  }

  dimension: amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.amount_paid ;;
  }

  dimension_group: payment_due {
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
    sql: ${TABLE}.payment_due_date ;;
  }

  dimension_group: reporting {
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
    sql: ${TABLE}.reporting_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension_group: updated_date_utc {
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
    sql: ${TABLE}.updated_date_utc ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [expense_claim_id, payment.count]
  }
}
