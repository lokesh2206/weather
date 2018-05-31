view: pdl_product_category_search_monitoring {
  sql_table_name: dbo.PDL_Product_Category_Search_Monitoring ;;

  dimension: complaint {
    type: string
    sql: ${TABLE}.Complaint ;;
  }

  dimension: deviation_acceptable {
    type: string
    sql: ${TABLE}.Deviation_Acceptable ;;
  }

  dimension: deviation_comment {
    type: string
    sql: ${TABLE}.Deviation_Comment ;;
  }

  dimension: product_category_jurisdiction_datasource_id {
    type: number
    sql: ${TABLE}.Product_Category_Jurisdiction_Datasource_Id ;;
  }

  dimension: product_category_search_monitoring_id {
    type: number
    sql: ${TABLE}.Product_Category_Search_Monitoring_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
