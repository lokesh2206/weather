view: audit_rule_configuration_county {
  sql_table_name: dbo.Audit_Rule_Configuration_County ;;

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

  dimension: rule_configuration_county_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_County_Id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_id ;;
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
      rule_configuration_county.rule_configuration_county_id,
      rule_configuration.rule_configuration_id,
      jurisdiction.jurisdiction_id,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
