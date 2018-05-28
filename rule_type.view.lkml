view: rule_type {
  sql_table_name: dbo.Rule_Type ;;

  dimension: rule_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Type_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rule_type_id,
      audit_client_settings.count,
      audit_global_settings.count,
      client_settings.count,
      global_settings.count,
      rule_master.count,
      staging_client_settings.count,
      staging_global_settings.count
    ]
  }
}
