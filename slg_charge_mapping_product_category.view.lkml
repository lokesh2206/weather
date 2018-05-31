view: slg_charge_mapping_product_category {
  sql_table_name: dbo.SLG_Charge_Mapping_Product_Category ;;

  dimension: slg_charge_mapping_product_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SLG_Charge_Mapping_Product_Category_Id ;;
  }

  dimension: charge_mapping_id {
    type: number
    sql: ${TABLE}.Charge_Mapping_Id ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  measure: count {
    type: count
    drill_fields: [slg_charge_mapping_product_category_id, audit_slg_charge_mapping_product_category.count, slg_charge_mapping_product_category_ui.count, staging_slg_charge_mapping_product_category.count, temp1.count]
  }
}
