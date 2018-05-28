view: pdl_product_category_search_monitoring_param {
  sql_table_name: dbo.PDL_Product_Category_Search_Monitoring_Param ;;

  dimension: complaint {
    type: string
    sql: ${TABLE}.Complaint ;;
  }

  dimension: global_search_parameter_id {
    type: number
    sql: ${TABLE}.Global_Search_Parameter_ID ;;
  }

  dimension: product_category_search_monitoring_id {
    type: number
    sql: ${TABLE}.Product_Category_Search_Monitoring_Id ;;
  }

  dimension: product_category_search_monitoring_param_id {
    type: number
    sql: ${TABLE}.Product_Category_Search_Monitoring_Param_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
