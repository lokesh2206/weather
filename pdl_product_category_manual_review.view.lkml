view: pdl_product_category_manual_review {
  sql_table_name: dbo.PDL_Product_Category_ManualReview ;;

  dimension: manual_review {
    type: string
    sql: ${TABLE}.Manual_Review ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_Id ;;
  }

  dimension: product_category_manual_review_id {
    type: number
    sql: ${TABLE}.Product_Category_ManualReview_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
