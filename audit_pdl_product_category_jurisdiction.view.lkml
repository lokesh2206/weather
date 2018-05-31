view: audit_pdl_product_category_jurisdiction {
  sql_table_name: dbo.Audit_PDL_Product_Category_Jurisdiction ;;

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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, jurisdiction.jurisdiction_id, users.user_id, users.name, change_log.change_log_id]
  }
}
