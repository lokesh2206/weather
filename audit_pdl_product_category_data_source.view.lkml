view: audit_pdl_product_category_data_source {
  sql_table_name: dbo.Audit_PDL_Product_Category_DataSource ;;

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

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: staging_id {
    type: number
    sql: ${TABLE}.Staging_Id ;;
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
