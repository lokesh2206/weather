view: pdl_product_category_monitoring_audit {
  sql_table_name: dbo.PDL_Product_Category_Monitoring_Audit ;;

  dimension_group: audit {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Audit_Time ;;
  }

  dimension: is_compatible {
    type: string
    sql: ${TABLE}.isCompatible ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_Id ;;
  }

  dimension: product_category_monitoring_audit_id {
    type: number
    sql: ${TABLE}.Product_Category_Monitoring_Audit_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
