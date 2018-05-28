view: change_log {
  sql_table_name: dbo.Change_Log ;;

  dimension: change_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Change_Log_Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: approver_status {
    type: string
    sql: ${TABLE}.Approver_Status ;;
  }

  dimension: approver_user_id {
    type: number
    sql: ${TABLE}.Approver_User_Id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.Created_Date ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.Entity_Id ;;
  }

  dimension: entity_primary_key_id {
    type: number
    sql: ${TABLE}.Entity_PrimaryKey_Id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.Modified_Date ;;
  }

  dimension: task_action {
    type: string
    sql: ${TABLE}.task_action ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.Task_Id ;;
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
      change_log_id,
      users.user_id,
      users.name,
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
      staging_slg_disposition_mapping.count
    ]
  }
}
