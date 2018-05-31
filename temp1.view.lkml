view: temp1 {
  sql_table_name: dbo.temp1 ;;

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

  measure: count {
    type: count
    drill_fields: [slg_charge_mapping_product_category.slg_charge_mapping_product_category_id]
  }
}
