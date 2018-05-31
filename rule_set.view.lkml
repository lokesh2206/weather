view: rule_set {
  sql_table_name: dbo.RuleSet ;;

  dimension: rule_set_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RuleSet_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rule_set_id,
      name,
      audit_rule_configuration.count,
      audit_rule_set.count,
      audit_rule_set_client_jurisdiction.count,
      audit_rule_set_jurisdiction.count,
      rule_configuration.count,
      rule_set_client_jurisdiction.count,
      rule_set_jurisdiction.count,
      staging_rule_configuration.count,
      staging_rule_set.count,
      staging_rule_set_client_jurisdiction.count,
      staging_rule_set_jurisdiction.count,
      vw_state_rules.count
    ]
  }
}
