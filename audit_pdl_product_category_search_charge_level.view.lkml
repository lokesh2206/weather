view: audit_pdl_product_category_search_charge_level {
  sql_table_name: dbo.Audit_PDL_Product_Category_Search_Charge_Level ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_id ;;
  }

  dimension: product_category_search_param_id {
    type: number
    sql: ${TABLE}.Product_Category_Search_Param_Id ;;
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
    drill_fields: [id, charge_level.charge_level_id, users.user_id, users.name, change_log.change_log_id]
  }
}
