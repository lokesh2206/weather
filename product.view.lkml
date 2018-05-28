view: product {
  sql_table_name: dbo.Product ;;

  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PRODUCT_ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: parent_system_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Parent_System_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [product_id, parent_system.parent_system_id, audit_pdl_product_category_product.count, pdl_product_category_product.count, staging_pdl_product_category_product.count]
  }
}
