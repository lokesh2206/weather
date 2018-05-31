view: fulfillment_type {
  sql_table_name: dbo.Fulfillment_Type ;;

  dimension: fulfillment_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Fulfillment_Type_Id ;;
  }

  dimension: fulfillment_type {
    type: string
    sql: ${TABLE}.Fulfillment_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      fulfillment_type_id,
      audit_pdl_data_source.count,
      audit_pdl_product_category_jurisdiction_datasource.count,
      pdl_data_source.count,
      pdl_product_category_jurisdiction_datasource.count,
      staging_pdl_data_source.count,
      staging_pdl_product_category_jurisdiction_datasource.count
    ]
  }
}
