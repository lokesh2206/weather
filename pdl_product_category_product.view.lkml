view: pdl_product_category_product {
  sql_table_name: dbo.PDL_Product_Category_Product ;;

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_Id ;;
  }

  dimension: product_category_product_id {
    type: number
    sql: ${TABLE}.Product_Category_Product_id ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Product_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [product.product_id]
  }
}
