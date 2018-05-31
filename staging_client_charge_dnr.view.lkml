view: staging_client_charge_dnr {
  sql_table_name: dbo.Staging_Client_Charge_DNR ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Account_Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: change_log_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Change_Log_Id ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: client_charge_dnr_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Client_Charge_DNR_Id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      client_charge_dnr.client_charge_dnr_id,
      account.account_id,
      account.account_name,
      customer.customer_id,
      customer.customer_name,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
