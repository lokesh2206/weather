view: audit_pdl_product_category_product {
  sql_table_name: dbo.Audit_PDL_Product_Category_Product ;;

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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, product.product_id, users.user_id, users.name, change_log.change_log_id]
  }
}
