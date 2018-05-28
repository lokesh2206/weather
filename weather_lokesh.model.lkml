connection: "smartdata"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: weather_lokesh_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: weather_lokesh_default_datagroup

explore: account {
  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: address_abbreviation {}

explore: agent {
  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: alert_notification_levels {
  join: alerts_type {
    type: left_outer
    sql_on: ${alert_notification_levels.alerts_type_id} = ${alerts_type.alerts_type_id} ;;
    relationship: many_to_one
  }

  join: notifier {
    type: left_outer
    sql_on: ${alert_notification_levels.notifier_id} = ${notifier.notifier_id} ;;
    relationship: many_to_one
  }
}

explore: alert_notifications {
  join: alerts_type {
    type: left_outer
    sql_on: ${alert_notifications.alerts_type_id} = ${alerts_type.alerts_type_id} ;;
    relationship: many_to_one
  }
}

explore: alerts_type {}

explore: all_jurisdiction_id {
  join: jurisdiction {
    type: left_outer
    sql_on: ${all_jurisdiction_id.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_charge_category {
  join: charge_category {
    type: left_outer
    sql_on: ${audit_charge_category.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_charge_category.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_charge_category.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_client_charge_dnr {
  join: client_charge_dnr {
    type: left_outer
    sql_on: ${audit_client_charge_dnr.client_charge_dnr_id} = ${client_charge_dnr.client_charge_dnr_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${audit_client_charge_dnr.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${audit_client_charge_dnr.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_client_charge_dnr.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_client_charge_dnr.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: audit_client_settings {
  join: client_settings {
    type: left_outer
    sql_on: ${audit_client_settings.client_settings_id} = ${client_settings.client_settings_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${audit_client_settings.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${audit_client_settings.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${audit_client_settings.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${audit_client_settings.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_client_settings.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_client_settings.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: audit_client_settings_cma {
  join: client_settings_cma {
    type: left_outer
    sql_on: ${audit_client_settings_cma.client_settings_cma_id} = ${client_settings_cma.client_settings_cma_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${audit_client_settings_cma.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${audit_client_settings_cma.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${audit_client_settings_cma.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_client_settings_cma.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_client_settings_cma.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: audit_crim_case {}

explore: audit_crim_change {}

explore: audit_global_settings {
  join: global_settings {
    type: left_outer
    sql_on: ${audit_global_settings.global_settings_id} = ${global_settings.global_settings_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${audit_global_settings.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_global_settings.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_global_settings.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: audit_jurisdiction_manual_review {
  join: jurisdiction_manual_review {
    type: left_outer
    sql_on: ${audit_jurisdiction_manual_review.jurisdiction_manual_review_id} = ${jurisdiction_manual_review.jurisdiction_manual_review_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${audit_jurisdiction_manual_review.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_jurisdiction_manual_review.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_jurisdiction_manual_review.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_charge_level_category_mappings {
  join: charge_level {
    type: left_outer
    sql_on: ${audit_pdl_charge_level_category_mappings.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_charge_level_category_mappings.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_charge_level_category_mappings.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_data_source {
  join: fulfillment_type {
    type: left_outer
    sql_on: ${audit_pdl_data_source.fulfillment_type_id} = ${fulfillment_type.fulfillment_type_id} ;;
    relationship: many_to_one
  }

  join: datasource_status {
    type: left_outer
    sql_on: ${audit_pdl_data_source.datasource_status_id} = ${datasource_status.datasource_status_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_data_source.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_data_source.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_data_source_charge_level {
  join: charge_level {
    type: left_outer
    sql_on: ${audit_pdl_data_source_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_data_source_charge_level.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_data_source_charge_level.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_data_source_disposition_type {
  join: disposition_type {
    type: left_outer
    sql_on: ${audit_pdl_data_source_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_data_source_disposition_type.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_data_source_disposition_type.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_data_source_jurisdiction {
  join: jurisdiction {
    type: left_outer
    sql_on: ${audit_pdl_data_source_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_data_source_jurisdiction.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_data_source_jurisdiction.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_data_source_reporting_param {
  join: users {
    type: left_outer
    sql_on: ${audit_pdl_data_source_reporting_param.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_data_source_reporting_param.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category {
  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_data_source {
  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_data_source.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_data_source.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_jurisdiction {
  join: jurisdiction {
    type: left_outer
    sql_on: ${audit_pdl_product_category_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_jurisdiction.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_jurisdiction.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_jurisdiction_datasource {
  join: fulfillment_type {
    type: left_outer
    sql_on: ${audit_pdl_product_category_jurisdiction_datasource.fulfillment_type_id} = ${fulfillment_type.fulfillment_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_jurisdiction_datasource.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_jurisdiction_datasource.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_manual_review {
  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_manual_review.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_manual_review.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_product {
  join: product {
    type: left_outer
    sql_on: ${audit_pdl_product_category_product.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_product.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_product.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${product.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_reporting_param {
  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_reporting_param.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_reporting_param.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_search_charge_level {
  join: charge_level {
    type: left_outer
    sql_on: ${audit_pdl_product_category_search_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_search_charge_level.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_search_charge_level.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_search_disposition_type {
  join: disposition_type {
    type: left_outer
    sql_on: ${audit_pdl_product_category_search_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_search_disposition_type.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_search_disposition_type.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_pdl_product_category_search_param {
  join: users {
    type: left_outer
    sql_on: ${audit_pdl_product_category_search_param.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_pdl_product_category_search_param.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration {
  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${audit_rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${audit_rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${audit_rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_charge_category_desc {
  join: rule_configuration_charge_category_desc {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_category_desc.rule_configuration_charge_category_desc_id} = ${rule_configuration_charge_category_desc.rule_configuration_charge_category_desc_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_category_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_category {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_category_desc.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_category_desc.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_category_desc.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_charge_desc {
  join: rule_configuration_charge_desc {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_desc.rule_configuration_charge_desc_id} = ${rule_configuration_charge_desc.rule_configuration_charge_desc_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_desc.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_desc.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_charge_level {
  join: rule_configuration_charge_level {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level.rule_configuration_charge_level_id} = ${rule_configuration_charge_level.rule_configuration_charge_level_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_charge_level_desc {
  join: rule_configuration_charge_level_desc {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_desc.rule_configuration_charge_level_desc_id} = ${rule_configuration_charge_level_desc.rule_configuration_charge_level_desc_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_desc.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_desc.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_desc.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_charge_level_disposition {
  join: rule_configuration_charge_level_disposition {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition.rule_configuration_charge_level_disposition_id} = ${rule_configuration_charge_level_disposition.rule_configuration_charge_level_disposition_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_charge_level_disposition_type_age_of_record {
  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition_type_age_of_record.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition_type_age_of_record.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition_type_age_of_record.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition_type_age_of_record.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_charge_level_disposition_type_age_of_record.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_county {
  join: rule_configuration_county {
    type: left_outer
    sql_on: ${audit_rule_configuration_county.rule_configuration_county_id} = ${rule_configuration_county.rule_configuration_county_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_county.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${audit_rule_configuration_county.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_county.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_county.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_disposition_desc {
  join: rule_configuration_disposition_desc {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_desc.rule_configuration_disposition_desc_id} = ${rule_configuration_disposition_desc.rule_configuration_disposition_desc_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_desc.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_desc.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_disposition_type {
  join: rule_configuration_disposition_type {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_type.rule_configuration_disposition_type_id} = ${rule_configuration_disposition_type.rule_configuration_disposition_type_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_type.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_type.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_disposition_type.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_configuration_probation_disposition {
  join: rule_configuration_probation_disposition {
    type: left_outer
    sql_on: ${audit_rule_configuration_probation_disposition.rule_configuration_probation_disposition_id} = ${rule_configuration_probation_disposition.rule_configuration_probation_disposition_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${audit_rule_configuration_probation_disposition.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${audit_rule_configuration_probation_disposition.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: probation_status {
    type: left_outer
    sql_on: ${audit_rule_configuration_probation_disposition.probation_status_id} = ${probation_status.probation_status_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_configuration_probation_disposition.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_configuration_probation_disposition.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_set {
  join: rule_set {
    type: left_outer
    sql_on: ${audit_rule_set.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_set.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_set.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_set_client_jurisdiction {
  join: rule_set_client_jurisdiction {
    type: left_outer
    sql_on: ${audit_rule_set_client_jurisdiction.rule_set_client_jurisdiction_id} = ${rule_set_client_jurisdiction.rule_set_client_jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${audit_rule_set_client_jurisdiction.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${audit_rule_set_client_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${audit_rule_set_client_jurisdiction.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${audit_rule_set_client_jurisdiction.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${audit_rule_set_client_jurisdiction.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_set_client_jurisdiction.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_set_client_jurisdiction.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: audit_rule_set_jurisdiction {
  join: rule_set_jurisdiction {
    type: left_outer
    sql_on: ${audit_rule_set_jurisdiction.rule_set_jurisdiction_id} = ${rule_set_jurisdiction.rule_set_jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${audit_rule_set_jurisdiction.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${audit_rule_set_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_rule_set_jurisdiction.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_rule_set_jurisdiction.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_sentence {}

explore: audit_slg_charge_abbreviation {
  join: change_log {
    type: left_outer
    sql_on: ${audit_slg_charge_abbreviation.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_slg_charge_abbreviation.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: audit_slg_charge_description {
  join: change_log {
    type: left_outer
    sql_on: ${audit_slg_charge_description.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_slg_charge_description.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: audit_slg_charge_mapping {
  join: charge_category {
    type: left_outer
    sql_on: ${audit_slg_charge_mapping.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${audit_slg_charge_mapping.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${audit_slg_charge_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_slg_charge_mapping.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_slg_charge_mapping.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: audit_slg_charge_mapping_product_category {
  join: slg_charge_mapping_product_category {
    type: left_outer
    sql_on: ${audit_slg_charge_mapping_product_category.slg_charge_mapping_product_category_id} = ${slg_charge_mapping_product_category.slg_charge_mapping_product_category_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_slg_charge_mapping_product_category.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_slg_charge_mapping_product_category.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_slg_disposition_abbreviation {
  join: users {
    type: left_outer
    sql_on: ${audit_slg_disposition_abbreviation.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_slg_disposition_abbreviation.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_slg_disposition_description {
  join: users {
    type: left_outer
    sql_on: ${audit_slg_disposition_description.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_slg_disposition_description.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: audit_slg_disposition_mapping {
  join: jurisdiction {
    type: left_outer
    sql_on: ${audit_slg_disposition_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${audit_slg_disposition_mapping.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${audit_slg_disposition_mapping.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${audit_slg_disposition_mapping.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: blob {
  join: screening_result {
    type: left_outer
    sql_on: ${blob.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: bulk_upload_charge_abbreviation_mapping {}

explore: bulk_upload_charge_mapping {
  join: charge_category {
    type: left_outer
    sql_on: ${bulk_upload_charge_mapping.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${bulk_upload_charge_mapping.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }
}

explore: bulk_upload_disposition_abbreviation_mapping {}

explore: bulk_upload_disposition_mapping {
  join: disposition_type {
    type: left_outer
    sql_on: ${bulk_upload_disposition_mapping.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }
}

explore: bulk_upload_dnrcharge {}

explore: bulk_upload_job_master {
  join: users {
    type: left_outer
    sql_on: ${bulk_upload_job_master.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: change_log {
  join: users {
    type: left_outer
    sql_on: ${change_log.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: charge_category {}

explore: charge_level {}

explore: charge_rule_history {
  join: crim_charge {
    type: left_outer
    sql_on: ${charge_rule_history.crim_charge_id} = ${crim_charge.crim_charge_id} ;;
    relationship: many_to_one
  }

  join: crim_case {
    type: left_outer
    sql_on: ${crim_charge.crim_case_id} = ${crim_case.crim_case_id} ;;
    relationship: many_to_one
  }

  join: charge_category {
    type: left_outer
    sql_on: ${crim_charge.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${crim_case.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${crim_case.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${crim_case.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: client_charge_dnr {
  join: account {
    type: left_outer
    sql_on: ${client_charge_dnr.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${client_charge_dnr.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: client_settings {
  join: account {
    type: left_outer
    sql_on: ${client_settings.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${client_settings.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${client_settings.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${client_settings.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: client_settings_cma {
  join: account {
    type: left_outer
    sql_on: ${client_settings_cma.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${client_settings_cma.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${client_settings_cma.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: combined_script {}

explore: common_first_name {
  join: users {
    type: left_outer
    sql_on: ${common_first_name.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: common_last_name {
  join: users {
    type: left_outer
    sql_on: ${common_last_name.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: conservative_state {
  join: disposition_type {
    type: left_outer
    sql_on: ${conservative_state.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }
}

explore: country {
  join: jurisdiction {
    type: left_outer
    sql_on: ${country.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: county {
  join: jurisdiction {
    type: left_outer
    sql_on: ${county.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: crim_case {
  join: screening_result {
    type: left_outer
    sql_on: ${crim_case.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${crim_case.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${crim_case.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: crim_case_missing_product_category_reporting_param {
  join: crim_case {
    type: left_outer
    sql_on: ${crim_case_missing_product_category_reporting_param.crim_case_id} = ${crim_case.crim_case_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${crim_case.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${crim_case.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${crim_case.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: crim_charge {
  join: crim_case {
    type: left_outer
    sql_on: ${crim_charge.crim_case_id} = ${crim_case.crim_case_id} ;;
    relationship: many_to_one
  }

  join: charge_category {
    type: left_outer
    sql_on: ${crim_charge.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${crim_case.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${crim_case.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${crim_case.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: crim_charge_missing_product_category_reporting_param {
  join: crim_charge {
    type: left_outer
    sql_on: ${crim_charge_missing_product_category_reporting_param.crim_charge_id} = ${crim_charge.crim_charge_id} ;;
    relationship: many_to_one
  }

  join: crim_case {
    type: left_outer
    sql_on: ${crim_charge.crim_case_id} = ${crim_case.crim_case_id} ;;
    relationship: many_to_one
  }

  join: charge_category {
    type: left_outer
    sql_on: ${crim_charge.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${crim_case.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${crim_case.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${crim_case.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: customer {
  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${customer.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }
}

explore: datasource_status {}

explore: disposition_type {}

explore: dm_datasource_monitor {}

explore: dm_datasource_monitor_request {
  join: dm_sample_store {
    type: left_outer
    sql_on: ${dm_datasource_monitor_request.dm_sample_store_id} = ${dm_sample_store.dm_sample_store_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${dm_datasource_monitor_request.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: dm_datasource_monitor {
    type: left_outer
    sql_on: ${dm_datasource_monitor_request.dm_datasource_monitor_id} = ${dm_datasource_monitor.dm_datasource_monitor_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: dm_datasource_monitor_request_search_param {
  join: dm_datasource_monitor_request {
    type: left_outer
    sql_on: ${dm_datasource_monitor_request_search_param.dm_datasource_monitor_request_id} = ${dm_datasource_monitor_request.dm_datasource_monitor_request_id} ;;
    relationship: many_to_one
  }

  join: datasource_status {
    type: left_outer
    sql_on: ${dm_datasource_monitor_request_search_param.datasource_status_id} = ${datasource_status.datasource_status_id} ;;
    relationship: many_to_one
  }

  join: dm_sample_store {
    type: left_outer
    sql_on: ${dm_datasource_monitor_request.dm_sample_store_id} = ${dm_sample_store.dm_sample_store_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${dm_datasource_monitor_request.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: dm_datasource_monitor {
    type: left_outer
    sql_on: ${dm_datasource_monitor_request.dm_datasource_monitor_id} = ${dm_datasource_monitor.dm_datasource_monitor_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: dm_sample_search_param {
  join: dm_sample_store {
    type: left_outer
    sql_on: ${dm_sample_search_param.dm_sample_store_id} = ${dm_sample_store.dm_sample_store_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${dm_sample_store.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: dm_sample_search_param_charge_level {
  join: dm_sample_search_param {
    type: left_outer
    sql_on: ${dm_sample_search_param_charge_level.dm_sample_search_param_id} = ${dm_sample_search_param.dm_sample_search_param_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${dm_sample_search_param_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: dm_sample_store {
    type: left_outer
    sql_on: ${dm_sample_search_param.dm_sample_store_id} = ${dm_sample_store.dm_sample_store_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${dm_sample_store.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: dm_sample_search_param_disposition_type {
  join: dm_sample_search_param {
    type: left_outer
    sql_on: ${dm_sample_search_param_disposition_type.dm_sample_search_param_id} = ${dm_sample_search_param.dm_sample_search_param_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${dm_sample_search_param_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: dm_sample_store {
    type: left_outer
    sql_on: ${dm_sample_search_param.dm_sample_store_id} = ${dm_sample_store.dm_sample_store_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${dm_sample_store.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: dm_sample_store {
  join: screening_result {
    type: left_outer
    sql_on: ${dm_sample_store.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: entity_check {}

explore: entity_parent {}

explore: entity_types {}

explore: except_charge_category {}

explore: federal_district {
  join: jurisdiction {
    type: left_outer
    sql_on: ${federal_district.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: fulfillment_type {}

explore: global_juvenille_settings {
  join: jurisdiction {
    type: left_outer
    sql_on: ${global_juvenille_settings.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: global_settings {
  join: rule_type {
    type: left_outer
    sql_on: ${global_settings.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: jurisdiction {
  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: jurisdiction_manual_review {
  join: jurisdiction {
    type: left_outer
    sql_on: ${jurisdiction_manual_review.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: jurisdiction_type {}

explore: keyword {
  join: jurisdiction {
    type: left_outer
    sql_on: ${keyword.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: local_district {
  join: jurisdiction {
    type: left_outer
    sql_on: ${local_district.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: locked_entity {}

explore: log_history_notes {
  join: smart_data_status {
    type: left_outer
    sql_on: ${log_history_notes.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${log_history_notes.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: mapping_alert_configuration {}

explore: missing_reporting_param {
  join: screening_result {
    type: left_outer
    sql_on: ${missing_reporting_param.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: crim_case {
    type: left_outer
    sql_on: ${missing_reporting_param.crim_case_id} = ${crim_case.crim_case_id} ;;
    relationship: many_to_one
  }

  join: crim_charge {
    type: left_outer
    sql_on: ${missing_reporting_param.crim_charge_id} = ${crim_charge.crim_charge_id} ;;
    relationship: many_to_one
  }

  join: sentence {
    type: left_outer
    sql_on: ${missing_reporting_param.sentence_id} = ${sentence.sentence_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${crim_case.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${crim_case.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: charge_category {
    type: left_outer
    sql_on: ${crim_charge.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }
}

explore: monitoring_status {}

explore: nationwide_keyword {}

explore: noti_alert {}

explore: noti_event {}

explore: noti_event_history {}

explore: noti_event_role {
  join: role {
    type: left_outer
    sql_on: ${noti_event_role.role_id} = ${role.role_id} ;;
    relationship: many_to_one
  }
}

explore: noti_event_subscriber {}

explore: noti_event_type {}

explore: noti_notification {}

explore: noti_report {}

explore: noti_subscriber {}

explore: noti_subscriber_property {}

explore: notifier {}

explore: parent_system {}

explore: pdl_charge_level_categories {}

explore: pdl_charge_level_category_mappings {
  join: charge_level {
    type: left_outer
    sql_on: ${pdl_charge_level_category_mappings.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_data_source {
  join: fulfillment_type {
    type: left_outer
    sql_on: ${pdl_data_source.fulfillment_type_id} = ${fulfillment_type.fulfillment_type_id} ;;
    relationship: many_to_one
  }

  join: datasource_status {
    type: left_outer
    sql_on: ${pdl_data_source.datasource_status_id} = ${datasource_status.datasource_status_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_data_source_charge_level {
  join: charge_level {
    type: left_outer
    sql_on: ${pdl_data_source_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_data_source_disposition_type {
  join: disposition_type {
    type: left_outer
    sql_on: ${pdl_data_source_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_data_source_jurisdiction {
  join: jurisdiction {
    type: left_outer
    sql_on: ${pdl_data_source_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_data_source_monitoring_audit {}

explore: pdl_data_source_reporting_param {}

explore: pdl_global_reporting_param {}

explore: pdl_global_search_param {}

explore: pdl_product_category {
  join: users {
    type: left_outer
    sql_on: ${pdl_product_category.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_product_category_data_source {}

explore: pdl_product_category_jurisdiction {
  join: jurisdiction {
    type: left_outer
    sql_on: ${pdl_product_category_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_product_category_jurisdiction_datasource {
  join: fulfillment_type {
    type: left_outer
    sql_on: ${pdl_product_category_jurisdiction_datasource.fulfillment_type_id} = ${fulfillment_type.fulfillment_type_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_product_category_manual_review {}

explore: pdl_product_category_monitoring_audit {}

explore: pdl_product_category_product {
  join: product {
    type: left_outer
    sql_on: ${pdl_product_category_product.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${product.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_product_category_reporting_monitoring {}

explore: pdl_product_category_reporting_param {}

explore: pdl_product_category_reporting_threshold {}

explore: pdl_product_category_search_charge_level {
  join: charge_level {
    type: left_outer
    sql_on: ${pdl_product_category_search_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_product_category_search_disposition_type {
  join: disposition_type {
    type: left_outer
    sql_on: ${pdl_product_category_search_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }
}

explore: pdl_product_category_search_monitoring {}

explore: pdl_product_category_search_monitoring_param {}

explore: pdl_product_category_search_param {}

explore: pod {}

explore: previleges {}

explore: probation_status {}

explore: product {
  join: parent_system {
    type: left_outer
    sql_on: ${product.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: profile {
  join: account {
    type: left_outer
    sql_on: ${profile.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${profile.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: protocol {}

explore: qrtz_blob_triggers {}

explore: qrtz_calendars {}

explore: qrtz_cron_triggers {}

explore: qrtz_fired_triggers {}

explore: qrtz_job_details {}

explore: qrtz_locks {}

explore: qrtz_paused_trigger_grps {}

explore: qrtz_scheduler_state {}

explore: qrtz_simple_triggers {}

explore: qrtz_simprop_triggers {}

explore: qrtz_triggers {}

explore: quartz_history_log {}

explore: report_processing_notes {
  join: smart_data_component {
    type: left_outer
    sql_on: ${report_processing_notes.smart_data_component_id} = ${smart_data_component.smart_data_component_id} ;;
    relationship: many_to_one
  }
}

explore: report_scoring_audit {}

explore: report_scoring_audit_param {
  join: report_scoring_audit {
    type: left_outer
    sql_on: ${report_scoring_audit_param.report_scoring_audit_id} = ${report_scoring_audit.report_scoring_audit_id} ;;
    relationship: many_to_one
  }
}

explore: role {}

explore: role_previlege {
  join: role {
    type: left_outer
    sql_on: ${role_previlege.role_id} = ${role.role_id} ;;
    relationship: many_to_one
  }

  join: previleges {
    type: left_outer
    sql_on: ${role_previlege.previleges_id} = ${previleges.previleges_id} ;;
    relationship: many_to_one
  }
}

explore: rp_jurisdiction_charge_level {
  join: charge_level {
    type: left_outer
    sql_on: ${rp_jurisdiction_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }
}

explore: rp_jurisdiction_disposition {
  join: disposition_type {
    type: left_outer
    sql_on: ${rp_jurisdiction_disposition.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }
}

explore: rp_jurisdiction_result_mr {
  join: jurisdiction {
    type: left_outer
    sql_on: ${rp_jurisdiction_result_mr.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${rp_jurisdiction_result_mr.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: rp_jurisdiction_rule {
  join: jurisdiction {
    type: left_outer
    sql_on: ${rp_jurisdiction_rule.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rp_jurisdiction_rule.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration {
  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_charge_category_desc {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_charge_category_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_category {
    type: left_outer
    sql_on: ${rule_configuration_charge_category_desc.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_charge_desc {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_charge_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_charge_level {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_charge_level.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${rule_configuration_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_charge_level_desc {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_charge_level_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${rule_configuration_charge_level_desc.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_charge_level_disposition {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_charge_level_disposition.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration_charge_level_disposition.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${rule_configuration_charge_level_disposition.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_charge_level_disposition_type_age_of_record {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_charge_level_disposition_type_age_of_record.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration_charge_level_disposition_type_age_of_record.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${rule_configuration_charge_level_disposition_type_age_of_record.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_county {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_county.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${rule_configuration_county.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_disposition_desc {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_disposition_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_disposition_type {
  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_disposition_type.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_configuration_probation_disposition {
  join: rule_configuration {
    type: left_outer
    sql_on: ${rule_configuration_probation_disposition.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration_probation_disposition.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: probation_status {
    type: left_outer
    sql_on: ${rule_configuration_probation_disposition.probation_status_id} = ${probation_status.probation_status_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_master {
  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_master_config_status {
  join: rule_master {
    type: left_outer
    sql_on: ${rule_master_config_status.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_set {}

explore: rule_set_client_jurisdiction {
  join: rule_set {
    type: left_outer
    sql_on: ${rule_set_client_jurisdiction.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${rule_set_client_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${rule_set_client_jurisdiction.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${rule_set_client_jurisdiction.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${rule_set_client_jurisdiction.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: rule_set_jurisdiction {
  join: rule_set {
    type: left_outer
    sql_on: ${rule_set_jurisdiction.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${rule_set_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: rule_type {}

explore: screening_result {
  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${screening_result.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: sentence {
  join: crim_charge {
    type: left_outer
    sql_on: ${sentence.crim_charge_id} = ${crim_charge.crim_charge_id} ;;
    relationship: many_to_one
  }

  join: crim_case {
    type: left_outer
    sql_on: ${crim_charge.crim_case_id} = ${crim_case.crim_case_id} ;;
    relationship: many_to_one
  }

  join: charge_category {
    type: left_outer
    sql_on: ${crim_charge.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: screening_result {
    type: left_outer
    sql_on: ${crim_case.screening_result_id} = ${screening_result.screening_result_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${crim_case.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${crim_case.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${crim_case.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${screening_result.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${screening_result.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${screening_result.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: smart_data_status {
    type: left_outer
    sql_on: ${screening_result.smart_data_status_id} = ${smart_data_status.smart_data_status_id} ;;
    relationship: many_to_one
  }

  join: agent {
    type: left_outer
    sql_on: ${screening_result.agent_id} = ${agent.agent_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${account.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: protocol {
    type: left_outer
    sql_on: ${agent.protocol_id} = ${protocol.protocol_id} ;;
    relationship: many_to_one
  }
}

explore: sentence_type {}

explore: slg_charge_abbreviation {}

explore: slg_charge_abbreviation_missing_report {
  join: jurisdiction {
    type: left_outer
    sql_on: ${slg_charge_abbreviation_missing_report.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: slg_charge_description {}

explore: slg_charge_mapping {
  join: charge_category {
    type: left_outer
    sql_on: ${slg_charge_mapping.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${slg_charge_mapping.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${slg_charge_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: slg_charge_mapping_product_category {}

explore: slg_charge_mapping_product_category_ui {
  join: slg_charge_mapping_product_category {
    type: left_outer
    sql_on: ${slg_charge_mapping_product_category_ui.slg_charge_mapping_product_category_id} = ${slg_charge_mapping_product_category.slg_charge_mapping_product_category_id} ;;
    relationship: many_to_one
  }
}

explore: slg_charge_sanitization_temp {
  join: charge_category {
    type: left_outer
    sql_on: ${slg_charge_sanitization_temp.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${slg_charge_sanitization_temp.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }
}

explore: slg_disposition_abbreviation {}

explore: slg_disposition_abbreviation_missing_report {
  join: jurisdiction {
    type: left_outer
    sql_on: ${slg_disposition_abbreviation_missing_report.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: slg_disposition_description {}

explore: slg_disposition_mapping {
  join: jurisdiction {
    type: left_outer
    sql_on: ${slg_disposition_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${slg_disposition_mapping.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: slg_disposition_santization_temp {
  join: jurisdiction {
    type: left_outer
    sql_on: ${slg_disposition_santization_temp.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${slg_disposition_santization_temp.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: slg_sentence_abbreviation {}

explore: slg_sentence_abbreviation_missing_report {
  join: jurisdiction {
    type: left_outer
    sql_on: ${slg_sentence_abbreviation_missing_report.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: slg_sentence_mapping {
  join: sentence_type {
    type: left_outer
    sql_on: ${slg_sentence_mapping.sentence_type_id} = ${sentence_type.sentence_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${slg_sentence_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: smart_data_component {}

explore: smart_data_status {}

explore: smart_data_ui_error_log {}

explore: staging_charge_category {
  join: charge_category {
    type: left_outer
    sql_on: ${staging_charge_category.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_charge_category.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_charge_category.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_client_charge_dnr {
  join: client_charge_dnr {
    type: left_outer
    sql_on: ${staging_client_charge_dnr.client_charge_dnr_id} = ${client_charge_dnr.client_charge_dnr_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${staging_client_charge_dnr.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${staging_client_charge_dnr.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_client_charge_dnr.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_client_charge_dnr.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: staging_client_settings {
  join: client_settings {
    type: left_outer
    sql_on: ${staging_client_settings.client_settings_id} = ${client_settings.client_settings_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${staging_client_settings.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${staging_client_settings.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${staging_client_settings.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${staging_client_settings.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_client_settings.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_client_settings.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: staging_client_settings_cma {
  join: client_settings_cma {
    type: left_outer
    sql_on: ${staging_client_settings_cma.client_settings_cma_id} = ${client_settings_cma.client_settings_cma_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${staging_client_settings_cma.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${staging_client_settings_cma.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${staging_client_settings_cma.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_client_settings_cma.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_client_settings_cma.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: staging_global_settings {
  join: global_settings {
    type: left_outer
    sql_on: ${staging_global_settings.global_settings_id} = ${global_settings.global_settings_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${staging_global_settings.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_global_settings.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_global_settings.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_jurisdiction_manual_review {
  join: jurisdiction_manual_review {
    type: left_outer
    sql_on: ${staging_jurisdiction_manual_review.jurisdiction_manual_review_id} = ${jurisdiction_manual_review.jurisdiction_manual_review_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${staging_jurisdiction_manual_review.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_jurisdiction_manual_review.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_jurisdiction_manual_review.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_charge_level_category_mappings {
  join: charge_level {
    type: left_outer
    sql_on: ${staging_pdl_charge_level_category_mappings.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_charge_level_category_mappings.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_charge_level_category_mappings.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_data_source {
  join: fulfillment_type {
    type: left_outer
    sql_on: ${staging_pdl_data_source.fulfillment_type_id} = ${fulfillment_type.fulfillment_type_id} ;;
    relationship: many_to_one
  }

  join: datasource_status {
    type: left_outer
    sql_on: ${staging_pdl_data_source.datasource_status_id} = ${datasource_status.datasource_status_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_data_source.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_data_source.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_data_source_charge_level {
  join: charge_level {
    type: left_outer
    sql_on: ${staging_pdl_data_source_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_data_source_charge_level.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_data_source_charge_level.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_data_source_disposition_type {
  join: disposition_type {
    type: left_outer
    sql_on: ${staging_pdl_data_source_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_data_source_disposition_type.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_data_source_disposition_type.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_data_source_jurisdiction {
  join: jurisdiction {
    type: left_outer
    sql_on: ${staging_pdl_data_source_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_data_source_jurisdiction.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_data_source_jurisdiction.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_data_source_reporting_param {
  join: users {
    type: left_outer
    sql_on: ${staging_pdl_data_source_reporting_param.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_data_source_reporting_param.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category {
  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_data_source {
  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_data_source.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_data_source.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_jurisdiction {
  join: jurisdiction {
    type: left_outer
    sql_on: ${staging_pdl_product_category_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_jurisdiction.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_jurisdiction.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_jurisdiction_datasource {
  join: fulfillment_type {
    type: left_outer
    sql_on: ${staging_pdl_product_category_jurisdiction_datasource.fulfillment_type_id} = ${fulfillment_type.fulfillment_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_jurisdiction_datasource.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_jurisdiction_datasource.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_manual_review {
  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_manual_review.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_manual_review.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_product {
  join: product {
    type: left_outer
    sql_on: ${staging_pdl_product_category_product.product_id} = ${product.product_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_product.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_product.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${product.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_reporting_param {
  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_reporting_param.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_reporting_param.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_search_charge_level {
  join: charge_level {
    type: left_outer
    sql_on: ${staging_pdl_product_category_search_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_search_charge_level.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_search_charge_level.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_search_disposition_type {
  join: disposition_type {
    type: left_outer
    sql_on: ${staging_pdl_product_category_search_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_search_disposition_type.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_search_disposition_type.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_pdl_product_category_search_param {
  join: users {
    type: left_outer
    sql_on: ${staging_pdl_product_category_search_param.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_pdl_product_category_search_param.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration {
  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${staging_rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${staging_rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${staging_rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_charge_category_desc {
  join: rule_configuration_charge_category_desc {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_category_desc.rule_configuration_charge_category_desc_id} = ${rule_configuration_charge_category_desc.rule_configuration_charge_category_desc_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_category_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_category {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_category_desc.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_category_desc.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_category_desc.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_charge_desc {
  join: rule_configuration_charge_desc {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_desc.rule_configuration_charge_desc_id} = ${rule_configuration_charge_desc.rule_configuration_charge_desc_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_desc.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_desc.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_charge_level {
  join: rule_configuration_charge_level {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level.rule_configuration_charge_level_id} = ${rule_configuration_charge_level.rule_configuration_charge_level_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_charge_level_desc {
  join: rule_configuration_charge_level_desc {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_desc.rule_configuration_charge_level_desc_id} = ${rule_configuration_charge_level_desc.rule_configuration_charge_level_desc_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_desc.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_desc.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_desc.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_charge_level_disposition {
  join: rule_configuration_charge_level_disposition {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition.rule_configuration_charge_level_disposition_id} = ${rule_configuration_charge_level_disposition.rule_configuration_charge_level_disposition_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_charge_level_disposition_type_age_of_record {
  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition_type_age_of_record.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition_type_age_of_record.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition_type_age_of_record.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition_type_age_of_record.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_charge_level_disposition_type_age_of_record.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_county {
  join: rule_configuration_county {
    type: left_outer
    sql_on: ${staging_rule_configuration_county.rule_configuration_county_id} = ${rule_configuration_county.rule_configuration_county_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_county.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${staging_rule_configuration_county.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_county.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_county.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_disposition_desc {
  join: rule_configuration_disposition_desc {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_desc.rule_configuration_disposition_desc_id} = ${rule_configuration_disposition_desc.rule_configuration_disposition_desc_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_desc.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_desc.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_desc.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${rule_configuration.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_disposition_type {
  join: rule_configuration_disposition_type {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_type.rule_configuration_disposition_type_id} = ${rule_configuration_disposition_type.rule_configuration_disposition_type_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_type.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_type.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_type.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_disposition_type.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_configuration_probation_disposition {
  join: rule_configuration_probation_disposition {
    type: left_outer
    sql_on: ${staging_rule_configuration_probation_disposition.rule_configuration_probation_disposition_id} = ${rule_configuration_probation_disposition.rule_configuration_probation_disposition_id} ;;
    relationship: many_to_one
  }

  join: rule_configuration {
    type: left_outer
    sql_on: ${staging_rule_configuration_probation_disposition.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${staging_rule_configuration_probation_disposition.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: probation_status {
    type: left_outer
    sql_on: ${staging_rule_configuration_probation_disposition.probation_status_id} = ${probation_status.probation_status_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_configuration_probation_disposition.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_configuration_probation_disposition.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${rule_configuration.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${rule_configuration.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_set {
  join: rule_set {
    type: left_outer
    sql_on: ${staging_rule_set.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_set.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_set.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_set_client_jurisdiction {
  join: rule_set_client_jurisdiction {
    type: left_outer
    sql_on: ${staging_rule_set_client_jurisdiction.rule_set_client_jurisdiction_id} = ${rule_set_client_jurisdiction.rule_set_client_jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${staging_rule_set_client_jurisdiction.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${staging_rule_set_client_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: account {
    type: left_outer
    sql_on: ${staging_rule_set_client_jurisdiction.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${staging_rule_set_client_jurisdiction.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${staging_rule_set_client_jurisdiction.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_set_client_jurisdiction.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_set_client_jurisdiction.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }
}

explore: staging_rule_set_jurisdiction {
  join: rule_set_jurisdiction {
    type: left_outer
    sql_on: ${staging_rule_set_jurisdiction.rule_set_jurisdiction_id} = ${rule_set_jurisdiction.rule_set_jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${staging_rule_set_jurisdiction.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${staging_rule_set_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_rule_set_jurisdiction.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_rule_set_jurisdiction.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_slg_charge_abbreviation {
  join: change_log {
    type: left_outer
    sql_on: ${staging_slg_charge_abbreviation.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_slg_charge_abbreviation.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: staging_slg_charge_description {
  join: change_log {
    type: left_outer
    sql_on: ${staging_slg_charge_description.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_slg_charge_description.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: staging_slg_charge_mapping {
  join: charge_category {
    type: left_outer
    sql_on: ${staging_slg_charge_mapping.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${staging_slg_charge_mapping.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${staging_slg_charge_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_slg_charge_mapping.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_slg_charge_mapping.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: staging_slg_charge_mapping_product_category {
  join: slg_charge_mapping_product_category {
    type: left_outer
    sql_on: ${staging_slg_charge_mapping_product_category.slg_charge_mapping_product_category_id} = ${slg_charge_mapping_product_category.slg_charge_mapping_product_category_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_slg_charge_mapping_product_category.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_slg_charge_mapping_product_category.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_slg_disposition_abbreviation {
  join: users {
    type: left_outer
    sql_on: ${staging_slg_disposition_abbreviation.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_slg_disposition_abbreviation.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_slg_disposition_description {
  join: users {
    type: left_outer
    sql_on: ${staging_slg_disposition_description.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_slg_disposition_description.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }
}

explore: staging_slg_disposition_mapping {
  join: jurisdiction {
    type: left_outer
    sql_on: ${staging_slg_disposition_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${staging_slg_disposition_mapping.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${staging_slg_disposition_mapping.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: change_log {
    type: left_outer
    sql_on: ${staging_slg_disposition_mapping.change_log_id} = ${change_log.change_log_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: state {
  join: jurisdiction {
    type: left_outer
    sql_on: ${state.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: statutes_charge_category {
  join: charge_category {
    type: left_outer
    sql_on: ${statutes_charge_category.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }
}

explore: sysdiagrams {}

explore: temp1 {
  join: slg_charge_mapping_product_category {
    type: left_outer
    sql_on: ${temp1.slg_charge_mapping_product_category_id} = ${slg_charge_mapping_product_category.slg_charge_mapping_product_category_id} ;;
    relationship: many_to_one
  }
}

explore: user_role {
  join: users {
    type: left_outer
    sql_on: ${user_role.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }

  join: role {
    type: left_outer
    sql_on: ${user_role.role_id} = ${role.role_id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: validator_county {
  join: account {
    type: left_outer
    sql_on: ${validator_county.account_id} = ${account.account_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${validator_county.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: profile {
    type: left_outer
    sql_on: ${validator_county.profile_id} = ${profile.profile_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${validator_county.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: pod {
    type: left_outer
    sql_on: ${account.pod_id} = ${pod.pod_id} ;;
    relationship: many_to_one
  }

  join: parent_system {
    type: left_outer
    sql_on: ${customer.parent_system_id} = ${parent_system.parent_system_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: validator_exclusive_district {}

explore: validator_exclusive_state {}

explore: validator_mapped_county {}

explore: vw_charge_abbreviation_mapping {
  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_charge_abbreviation_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_charge_mapping {
  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_charge_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_disposition_abbreviation_mapping {
  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_disposition_abbreviation_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_disposition_mapping {
  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_disposition_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_flattened_jurisdiction {
  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_flattened_jurisdiction.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${vw_flattened_jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_sanitize_charge_mapping {
  join: charge_category {
    type: left_outer
    sql_on: ${vw_sanitize_charge_mapping.charge_category_id} = ${charge_category.charge_category_id} ;;
    relationship: many_to_one
  }

  join: charge_level {
    type: left_outer
    sql_on: ${vw_sanitize_charge_mapping.charge_level_id} = ${charge_level.charge_level_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_sanitize_charge_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_sanitize_disposition_mapping {
  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_sanitize_disposition_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${vw_sanitize_disposition_mapping.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_sanitize_sentence_mapping {
  join: sentence_type {
    type: left_outer
    sql_on: ${vw_sanitize_sentence_mapping.sentence_type_id} = ${sentence_type.sentence_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_sanitize_sentence_mapping.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: vw_state_rules {
  join: rule_configuration {
    type: left_outer
    sql_on: ${vw_state_rules.rule_configuration_id} = ${rule_configuration.rule_configuration_id} ;;
    relationship: many_to_one
  }

  join: rule_set {
    type: left_outer
    sql_on: ${vw_state_rules.rule_set_id} = ${rule_set.rule_set_id} ;;
    relationship: many_to_one
  }

  join: rule_master {
    type: left_outer
    sql_on: ${vw_state_rules.rule_master_id} = ${rule_master.rule_master_id} ;;
    relationship: many_to_one
  }

  join: disposition_type {
    type: left_outer
    sql_on: ${vw_state_rules.disposition_type_id} = ${disposition_type.disposition_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction {
    type: left_outer
    sql_on: ${vw_state_rules.jurisdiction_id} = ${jurisdiction.jurisdiction_id} ;;
    relationship: many_to_one
  }

  join: rule_type {
    type: left_outer
    sql_on: ${rule_master.rule_type_id} = ${rule_type.rule_type_id} ;;
    relationship: many_to_one
  }

  join: jurisdiction_type {
    type: left_outer
    sql_on: ${jurisdiction.jurisdiction_type_id} = ${jurisdiction_type.jurisdiction_type_id} ;;
    relationship: many_to_one
  }
}

explore: weightage {}

explore: weightage_product_category {
  join: weightage {
    type: left_outer
    sql_on: ${weightage_product_category.weightage_id} = ${weightage.weightage_id} ;;
    relationship: many_to_one
  }
}
