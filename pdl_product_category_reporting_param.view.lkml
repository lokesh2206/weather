view: pdl_product_category_reporting_param {
  sql_table_name: dbo.PDL_Product_Category_Reporting_Param ;;

  dimension: global_reporting_param_id {
    type: number
    sql: ${TABLE}.Global_Reporting_Param_Id ;;
  }

  dimension: mandatory {
    type: string
    sql: ${TABLE}.Mandatory ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: product_category_reporting_param_id {
    type: number
    sql: ${TABLE}.Product_Category_Reporting_Param_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
