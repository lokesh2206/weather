view: rule_configuration_county {
  sql_table_name: dbo.Rule_Configuration_County ;;

  dimension: rule_configuration_county_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Configuration_County_Id ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_id ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_configuration_county_id, rule_configuration.rule_configuration_id, jurisdiction.jurisdiction_id, audit_rule_configuration_county.count, staging_rule_configuration_county.count]
  }
}
