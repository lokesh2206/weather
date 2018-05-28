view: rule_configuration_charge_category_desc {
  sql_table_name: dbo.Rule_Configuration_Charge_Category_Desc ;;

  dimension: rule_configuration_charge_category_desc_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Configuration_Charge_Category_Desc_Id ;;
  }

  dimension: charge_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Category_Id ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_id ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_configuration_charge_category_desc_id, rule_configuration.rule_configuration_id, charge_category.charge_category_id, audit_rule_configuration_charge_category_desc.count, staging_rule_configuration_charge_category_desc.count]
  }
}
