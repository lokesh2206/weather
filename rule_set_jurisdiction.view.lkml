view: rule_set_jurisdiction {
  sql_table_name: dbo.RuleSet_Jurisdiction ;;

  dimension: rule_set_jurisdiction_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RuleSet_Jurisdiction_id ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_id ;;
  }

  dimension: rule_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RuleSet_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rule_set_jurisdiction_id,
      rule_set.rule_set_id,
      rule_set.name,
      jurisdiction.jurisdiction_id,
      audit_rule_set_jurisdiction.count,
      staging_rule_set_jurisdiction.count
    ]
  }
}
