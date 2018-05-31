view: pdl_data_source_monitoring_audit {
  sql_table_name: dbo.PDL_DataSource_Monitoring_Audit ;;

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: data_source_monitoring_audit_id {
    type: number
    sql: ${TABLE}.DataSource_Monitoring_Audit_Id ;;
  }

  dimension: existing_value {
    type: string
    sql: ${TABLE}.Existing_Value ;;
  }

  dimension: expected_value {
    type: string
    sql: ${TABLE}.Expected_Value ;;
  }

  dimension: is_compatible {
    type: string
    sql: ${TABLE}.isCompatible ;;
  }

  dimension: product_category_monitoring_audit_id {
    type: number
    sql: ${TABLE}.Product_Category_Monitoring_Audit_Id ;;
  }

  dimension: product_category_search_param_id {
    type: number
    sql: ${TABLE}.Product_Category_Search_Param_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
