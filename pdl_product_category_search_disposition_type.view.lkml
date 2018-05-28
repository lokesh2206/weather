view: pdl_product_category_search_disposition_type {
  sql_table_name: dbo.PDL_Product_Category_Search_Disposition_Type ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: product_category_search_param_id {
    type: number
    sql: ${TABLE}.Product_Category_Search_Param_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, disposition_type.disposition_type_id]
  }
}
