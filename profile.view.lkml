view: profile {
  sql_table_name: dbo.Profile ;;

  dimension: profile_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Profile_id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Account_Id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: profile_name {
    type: string
    sql: ${TABLE}.Profile_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      profile_id,
      profile_name,
      account.account_id,
      account.account_name,
      customer.customer_id,
      customer.customer_name,
      audit_client_settings.count,
      audit_client_settings_cma.count,
      audit_rule_set_client_jurisdiction.count,
      client_settings.count,
      client_settings_cma.count,
      rule_set_client_jurisdiction.count,
      screening_result.count,
      staging_client_settings.count,
      staging_client_settings_cma.count,
      staging_rule_set_client_jurisdiction.count,
      validator_county.count
    ]
  }
}
