view: charge_category {
  sql_table_name: dbo.Charge_Category ;;

  dimension: charge_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Charge_Category_id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      charge_category_id,
      audit_charge_category.count,
      audit_rule_configuration_charge_category_desc.count,
      audit_slg_charge_mapping.count,
      bulk_upload_charge_mapping.count,
      crim_charge.count,
      rule_configuration_charge_category_desc.count,
      slg_charge_mapping.count,
      slg_charge_sanitization_temp.count,
      staging_charge_category.count,
      staging_rule_configuration_charge_category_desc.count,
      staging_slg_charge_mapping.count,
      statutes_charge_category.count,
      vw_sanitize_charge_mapping.count
    ]
  }
}
