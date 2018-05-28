view: charge_level {
  sql_table_name: dbo.Charge_Level ;;

  dimension: charge_level_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Charge_Level_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
  }

  dimension: mapped_charge_level {
    type: string
    sql: ${TABLE}.Mapped_Charge_Level ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      charge_level_id,
      audit_pdl_charge_level_category_mappings.count,
      audit_pdl_data_source_charge_level.count,
      audit_pdl_product_category_search_charge_level.count,
      audit_rule_configuration_charge_level.count,
      audit_rule_configuration_charge_level_desc.count,
      audit_rule_configuration_charge_level_disposition.count,
      audit_rule_configuration_charge_level_disposition_type_age_of_record.count,
      audit_slg_charge_mapping.count,
      bulk_upload_charge_mapping.count,
      crim_case.count,
      dm_sample_search_param_charge_level.count,
      pdl_charge_level_category_mappings.count,
      pdl_data_source_charge_level.count,
      pdl_product_category_search_charge_level.count,
      rp_jurisdiction_charge_level.count,
      rule_configuration_charge_level.count,
      rule_configuration_charge_level_desc.count,
      rule_configuration_charge_level_disposition.count,
      rule_configuration_charge_level_disposition_type_age_of_record.count,
      slg_charge_mapping.count,
      slg_charge_sanitization_temp.count,
      staging_pdl_charge_level_category_mappings.count,
      staging_pdl_data_source_charge_level.count,
      staging_pdl_product_category_search_charge_level.count,
      staging_rule_configuration_charge_level.count,
      staging_rule_configuration_charge_level_desc.count,
      staging_rule_configuration_charge_level_disposition.count,
      staging_rule_configuration_charge_level_disposition_type_age_of_record.count,
      staging_slg_charge_mapping.count,
      vw_sanitize_charge_mapping.count
    ]
  }
}
