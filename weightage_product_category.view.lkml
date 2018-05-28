view: weightage_product_category {
  sql_table_name: dbo.Weightage_Product_Category ;;

  dimension: weightage_product_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Weightage_Product_Category_ID ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: weightage_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Weightage_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [weightage_product_category_id, weightage.weightage_id, weightage.first_and_last_name, weightage.middle_name]
  }
}
