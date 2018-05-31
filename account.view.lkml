view: account {
  sql_table_name: dbo.Account ;;

  dimension: account_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Account_Id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.Account_Name ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: pod_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Pod_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      account_id,
      account_name,
      customer.customer_id,
      customer.customer_name,
      pod.pod_id,
      pod.pod_name,
      audit_client_charge_dnr.count,
      audit_client_settings.count,
      audit_client_settings_cma.count,
      audit_rule_set_client_jurisdiction.count,
      client_charge_dnr.count,
      client_settings.count,
      client_settings_cma.count,
      profile.count,
      rule_set_client_jurisdiction.count,
      screening_result.count,
      staging_client_charge_dnr.count,
      staging_client_settings.count,
      staging_client_settings_cma.count,
      staging_rule_set_client_jurisdiction.count,
      validator_county.count
    ]
  }
}
