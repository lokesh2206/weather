view: pdl_product_category_data_source {
  sql_table_name: dbo.PDL_Product_Category_DataSource ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
