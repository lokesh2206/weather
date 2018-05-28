view: rp_jurisdiction_rule {
  sql_table_name: dbo.RP_Jurisdiction_Rule ;;

  dimension: rp_jurisdiction_rule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.RP_Jurisdiction_Rule_Id ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_Id ;;
  }

  dimension: lower_threshold {
    type: number
    sql: ${TABLE}.Lower_Threshold ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: rule_master_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Master_Id ;;
  }

  dimension: upper_threshold {
    type: number
    sql: ${TABLE}.Upper_Threshold ;;
  }

  measure: count {
    type: count
    drill_fields: [rp_jurisdiction_rule_id, jurisdiction.jurisdiction_id, rule_master.rule_master_id, rule_master.rule_name]
  }
}
