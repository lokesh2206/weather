view: pdl_product_category_search_param {
  sql_table_name: dbo.PDL_Product_Category_Search_Param ;;

  dimension: data_frequency {
    type: number
    sql: ${TABLE}.Data_Frequency ;;
  }

  dimension: global_search_parameter_id {
    type: number
    sql: ${TABLE}.Global_Search_Parameter_ID ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: product_category_search_param_id {
    type: number
    sql: ${TABLE}.Product_Category_Search_Param_Id ;;
  }

  dimension: scope_of_search {
    type: number
    sql: ${TABLE}.Scope_Of_Search ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
