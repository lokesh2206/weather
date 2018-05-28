view: crim_case_missing_product_category_reporting_param {
  sql_table_name: dbo.Crim_Case_Missing_Product_Category_Reporting_Param ;;

  dimension: crim_case_missing_product_category_reporting_param_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Crim_Case_Missing_Product_Category_Reporting_Param_Id ;;
  }

  dimension: crim_case_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Crim_Case_id ;;
  }

  dimension: missing_product_category_reporting_param_id {
    type: number
    sql: ${TABLE}.Missing_Product_Category_Reporting_Param_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [crim_case_missing_product_category_reporting_param_id, crim_case.crim_case_id]
  }
}
