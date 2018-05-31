view: staging_rule_configuration_disposition_desc {
  sql_table_name: dbo.Staging_Rule_Configuration_Disposition_Desc ;;

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

  dimension: disposition_description_id {
    type: number
    sql: ${TABLE}.Disposition_Description_id ;;
  }

  dimension: rule_configuration_disposition_desc_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_Disposition_Desc_Id ;;
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
      rule_configuration_disposition_desc.rule_configuration_disposition_desc_id,
      rule_configuration.rule_configuration_id,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
