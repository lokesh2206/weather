view: staging_pdl_product_category_reporting_param {
  sql_table_name: dbo.Staging_PDL_Product_Category_Reporting_Param ;;

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

  dimension: global_reporting_param_id {
    type: number
    sql: ${TABLE}.Global_Reporting_Param_Id ;;
  }

  dimension: mandatory {
    type: string
    sql: ${TABLE}.Mandatory ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: product_category_reporting_param_id {
    type: number
    sql: ${TABLE}.Product_Category_Reporting_Param_Id ;;
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
