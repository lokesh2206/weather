view: jurisdiction {
  sql_table_name: dbo.Jurisdiction ;;

  dimension: jurisdiction_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: jurisdiction_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_Type_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      jurisdiction_id,
      jurisdiction_type.jurisdiction_type_id,
      all_jurisdiction_id.count,
      audit_jurisdiction_manual_review.count,
      audit_pdl_data_source_jurisdiction.count,
      audit_pdl_product_category_jurisdiction.count,
      audit_rule_configuration_county.count,
      audit_rule_set_client_jurisdiction.count,
      audit_rule_set_jurisdiction.count,
      audit_slg_charge_mapping.count,
      audit_slg_disposition_mapping.count,
      country.count,
      county.count,
      crim_case.count,
      federal_district.count,
      global_juvenille_settings.count,
      jurisdiction_manual_review.count,
      keyword.count,
      local_district.count,
      pdl_data_source_jurisdiction.count,
      pdl_product_category_jurisdiction.count,
      rp_jurisdiction_result_mr.count,
      rp_jurisdiction_rule.count,
      rule_configuration_county.count,
      rule_set_client_jurisdiction.count,
      rule_set_jurisdiction.count,
      screening_result.count,
      slg_charge_abbreviation_missing_report.count,
      slg_charge_mapping.count,
      slg_disposition_abbreviation_missing_report.count,
      slg_disposition_mapping.count,
      slg_disposition_santization_temp.count,
      slg_sentence_abbreviation_missing_report.count,
      slg_sentence_mapping.count,
      staging_jurisdiction_manual_review.count,
      staging_pdl_data_source_jurisdiction.count,
      staging_pdl_product_category_jurisdiction.count,
      staging_rule_configuration_county.count,
      staging_rule_set_client_jurisdiction.count,
      staging_rule_set_jurisdiction.count,
      staging_slg_charge_mapping.count,
      staging_slg_disposition_mapping.count,
      state.count,
      validator_county.count,
      vw_charge_abbreviation_mapping.count,
      vw_charge_mapping.count,
      vw_disposition_abbreviation_mapping.count,
      vw_disposition_mapping.count,
      vw_flattened_jurisdiction.count,
      vw_sanitize_charge_mapping.count,
      vw_sanitize_disposition_mapping.count,
      vw_sanitize_sentence_mapping.count,
      vw_state_rules.count
    ]
  }
}
