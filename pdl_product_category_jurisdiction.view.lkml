view: pdl_product_category_jurisdiction {
  sql_table_name: dbo.PDL_Product_Category_Jurisdiction ;;

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: product_category_jurisdiction_id {
    type: number
    sql: ${TABLE}.Product_Category_Jurisdiction_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction.jurisdiction_id]
  }
}
