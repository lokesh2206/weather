view: users {
  sql_table_name: dbo.users ;;

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.User_Id ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Creation_date ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension_group: modification {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Modification_date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_id,
      name,
      audit_charge_category.count,
      audit_client_charge_dnr.count,
      audit_client_settings.count,
      audit_client_settings_cma.count,
      audit_global_settings.count,
      audit_jurisdiction_manual_review.count,
      audit_pdl_charge_level_category_mappings.count,
      audit_pdl_data_source.count,
      audit_pdl_data_source_charge_level.count,
      audit_pdl_data_source_disposition_type.count,
      audit_pdl_data_source_jurisdiction.count,
      audit_pdl_data_source_reporting_param.count,
      audit_pdl_product_category.count,
      audit_pdl_product_category_data_source.count,
      audit_pdl_product_category_jurisdiction.count,
      audit_pdl_product_category_jurisdiction_datasource.count,
      audit_pdl_product_category_manual_review.count,
      audit_pdl_product_category_product.count,
      audit_pdl_product_category_reporting_param.count,
      audit_pdl_product_category_search_charge_level.count,
      audit_pdl_product_category_search_disposition_type.count,
      audit_pdl_product_category_search_param.count,
      audit_rule_configuration.count,
      audit_rule_configuration_charge_category_desc.count,
      audit_rule_configuration_charge_desc.count,
      audit_rule_configuration_charge_level.count,
      audit_rule_configuration_charge_level_desc.count,
      audit_rule_configuration_charge_level_disposition.count,
      audit_rule_configuration_charge_level_disposition_type_age_of_record.count,
      audit_rule_configuration_county.count,
      audit_rule_configuration_disposition_desc.count,
      audit_rule_configuration_disposition_type.count,
      audit_rule_configuration_probation_disposition.count,
      audit_rule_set.count,
      audit_rule_set_client_jurisdiction.count,
      audit_rule_set_jurisdiction.count,
      audit_slg_charge_abbreviation.count,
      audit_slg_charge_description.count,
      audit_slg_charge_mapping.count,
      audit_slg_charge_mapping_product_category.count,
      audit_slg_disposition_abbreviation.count,
      audit_slg_disposition_description.count,
      audit_slg_disposition_mapping.count,
      bulk_upload_job_master.count,
      change_log.count,
      common_first_name.count,
      common_last_name.count,
      pdl_product_category.count,
      staging_charge_category.count,
      staging_client_charge_dnr.count,
      staging_client_settings.count,
      staging_client_settings_cma.count,
      staging_global_settings.count,
      staging_jurisdiction_manual_review.count,
      staging_pdl_charge_level_category_mappings.count,
      staging_pdl_data_source.count,
      staging_pdl_data_source_charge_level.count,
      staging_pdl_data_source_disposition_type.count,
      staging_pdl_data_source_jurisdiction.count,
      staging_pdl_data_source_reporting_param.count,
      staging_pdl_product_category.count,
      staging_pdl_product_category_data_source.count,
      staging_pdl_product_category_jurisdiction.count,
      staging_pdl_product_category_jurisdiction_datasource.count,
      staging_pdl_product_category_manual_review.count,
      staging_pdl_product_category_product.count,
      staging_pdl_product_category_reporting_param.count,
      staging_pdl_product_category_search_charge_level.count,
      staging_pdl_product_category_search_disposition_type.count,
      staging_pdl_product_category_search_param.count,
      staging_rule_configuration.count,
      staging_rule_configuration_charge_category_desc.count,
      staging_rule_configuration_charge_desc.count,
      staging_rule_configuration_charge_level.count,
      staging_rule_configuration_charge_level_desc.count,
      staging_rule_configuration_charge_level_disposition.count,
      staging_rule_configuration_charge_level_disposition_type_age_of_record.count,
      staging_rule_configuration_county.count,
      staging_rule_configuration_disposition_desc.count,
      staging_rule_configuration_disposition_type.count,
      staging_rule_configuration_probation_disposition.count,
      staging_rule_set.count,
      staging_rule_set_client_jurisdiction.count,
      staging_rule_set_jurisdiction.count,
      staging_slg_charge_abbreviation.count,
      staging_slg_charge_description.count,
      staging_slg_charge_mapping.count,
      staging_slg_charge_mapping_product_category.count,
      staging_slg_disposition_abbreviation.count,
      staging_slg_disposition_description.count,
      staging_slg_disposition_mapping.count,
      user_role.count
    ]
  }
}
