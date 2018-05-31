view: staging_pdl_product_category_manual_review {
  sql_table_name: dbo.Staging_PDL_Product_Category_ManualReview ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: change_log_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Change_Log_Id ;;
  }

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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.user_id, users.name, change_log.change_log_id]
  }
}
