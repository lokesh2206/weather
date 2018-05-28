view: staging_pdl_product_category_jurisdiction_datasource {
  sql_table_name: dbo.Staging_PDL_Product_Category_Jurisdiction_Datasource ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension: change_log_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Change_Log_Id ;;
  }

  dimension: closing_timings {
    type: string
    sql: ${TABLE}.Closing_Timings ;;
  }

  dimension: court_name {
    type: string
    sql: ${TABLE}.Court_Name ;;
  }

  dimension: datasource_name {
    type: string
    sql: ${TABLE}.Datasource_Name ;;
  }

  dimension: fulfillment_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Fulfillment_Type_Id ;;
  }

  dimension: opening_timings {
    type: string
    sql: ${TABLE}.Opening_Timings ;;
  }

  dimension: other_info {
    type: string
    sql: ${TABLE}.Other_Info ;;
  }

  dimension: product_category_jurisdiction_datasource_id {
    type: number
    sql: ${TABLE}.Product_Category_Jurisdiction_Datasource_Id ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      datasource_name,
      court_name,
      fulfillment_type.fulfillment_type_id,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
