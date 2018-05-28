view: client_charge_dnr {
  sql_table_name: dbo.Client_Charge_DNR ;;

  dimension: client_charge_dnr_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Client_Charge_DNR_Id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Account_Id ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      client_charge_dnr_id,
      account.account_id,
      account.account_name,
      customer.customer_id,
      customer.customer_name,
      audit_client_charge_dnr.count,
      staging_client_charge_dnr.count
    ]
  }
}
