view: rule_configuration_disposition_desc {
  sql_table_name: dbo.Rule_Configuration_Disposition_Desc ;;

  dimension: rule_configuration_disposition_desc_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Configuration_Disposition_Desc_Id ;;
  }

  dimension: disposition_description_id {
    type: number
    sql: ${TABLE}.Disposition_Description_id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_id ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_configuration_disposition_desc_id, rule_configuration.rule_configuration_id, audit_rule_configuration_disposition_desc.count, staging_rule_configuration_disposition_desc.count]
  }
}
