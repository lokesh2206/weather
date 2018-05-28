view: disposition_type {
  sql_table_name: dbo.Disposition_Type ;;

  dimension: disposition_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: disposition_type {
    type: string
    sql: ${TABLE}.Disposition_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      disposition_type_id,
      audit_pdl_data_source_disposition_type.count,
      audit_pdl_product_category_search_disposition_type.count,
      audit_rule_configuration.count,
      audit_rule_configuration_charge_level_disposition.count,
      audit_rule_configuration_charge_level_disposition_type_age_of_record.count,
      audit_rule_configuration_disposition_type.count,
      audit_rule_configuration_probation_disposition.count,
      audit_slg_disposition_mapping.count,
      bulk_upload_disposition_mapping.count,
      conservative_state.count,
      crim_case.count,
      dm_sample_search_param_disposition_type.count,
      pdl_data_source_disposition_type.count,
      pdl_product_category_search_disposition_type.count,
      rp_jurisdiction_disposition.count,
      rule_configuration.count,
      rule_configuration_charge_level_disposition.count,
      rule_configuration_charge_level_disposition_type_age_of_record.count,
      rule_configuration_disposition_type.count,
      rule_configuration_probation_disposition.count,
      slg_disposition_mapping.count,
      slg_disposition_santization_temp.count,
      staging_pdl_data_source_disposition_type.count,
      staging_pdl_product_category_search_disposition_type.count,
      staging_rule_configuration.count,
      staging_rule_configuration_charge_level_disposition.count,
      staging_rule_configuration_charge_level_disposition_type_age_of_record.count,
      staging_rule_configuration_disposition_type.count,
      staging_rule_configuration_probation_disposition.count,
      staging_slg_disposition_mapping.count,
      vw_sanitize_disposition_mapping.count,
      vw_state_rules.count
    ]
  }
}
