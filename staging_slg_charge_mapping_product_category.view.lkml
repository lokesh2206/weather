view: staging_slg_charge_mapping_product_category {
  sql_table_name: dbo.Staging_SLG_Charge_Mapping_Product_Category ;;

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

  dimension: charge_mapping_id {
    type: number
    sql: ${TABLE}.Charge_Mapping_Id ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: slg_charge_mapping_product_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SLG_Charge_Mapping_Product_Category_Id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, slg_charge_mapping_product_category.slg_charge_mapping_product_category_id, users.user_id, users.name, change_log.change_log_id]
  }
}
