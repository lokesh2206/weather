view: customer {
  sql_table_name: dbo.Customer ;;

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: customer_description {
    type: string
    sql: ${TABLE}.Customer_Description ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }

  dimension: parent_system_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Parent_System_id ;;
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
      customer_id,
      customer_name,
      parent_system.parent_system_id,
      pod.pod_id,
      pod.pod_name,
      account.count,
      audit_client_charge_dnr.count,
      audit_client_settings.count,
      audit_client_settings_cma.count,
      audit_rule_set_client_jurisdiction.count,
      client_charge_dnr.count,
      client_settings.count,
      client_settings_cma.count,
      profile.count,
      rule_set_client_jurisdiction.count,
      staging_client_charge_dnr.count,
      staging_client_settings.count,
      staging_client_settings_cma.count,
      staging_rule_set_client_jurisdiction.count,
      validator_county.count
    ]
  }
}
