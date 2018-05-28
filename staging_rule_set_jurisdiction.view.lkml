view: staging_rule_set_jurisdiction {
  sql_table_name: dbo.Staging_RuleSet_Jurisdiction ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
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

  dimension: rule_set_jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RuleSet_Jurisdiction_id ;;
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
      rule_set_jurisdiction.rule_set_jurisdiction_id,
      rule_set.rule_set_id,
      rule_set.name,
      jurisdiction.jurisdiction_id,
      change_log.change_log_id,
      users.user_id,
      users.name
    ]
  }
}
