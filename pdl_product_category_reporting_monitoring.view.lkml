view: pdl_product_category_reporting_monitoring {
  sql_table_name: dbo.PDL_Product_Category_Reporting_Monitoring ;;

  dimension: actual_percentile_charges_met_threshold {
    type: number
    sql: ${TABLE}.Actual_Percentile_Charges_Met_Threshold ;;
  }

  dimension: complaint {
    type: string
    sql: ${TABLE}.Complaint ;;
  }

  dimension_group: from {
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
    sql: ${TABLE}.From_Date ;;
  }

  dimension_group: monitoring {
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
    sql: ${TABLE}.Monitoring_Date ;;
  }

  dimension: product_category_jurisdiction_datasource_id {
    type: number
    sql: ${TABLE}.Product_Category_Jurisdiction_Datasource_Id ;;
  }

  dimension: product_category_jurisdiction_id {
    type: number
    sql: ${TABLE}.Product_Category_Jurisdiction_Id ;;
  }

  dimension: product_category_reporting_monitoring_id {
    type: number
    sql: ${TABLE}.Product_Category_Reporting_Monitoring_Id ;;
  }

  dimension: product_category_reporting_threshold_id {
    type: number
    sql: ${TABLE}.Product_Category_Reporting_Threshold_ID ;;
  }

  dimension_group: to {
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
    sql: ${TABLE}.To_Date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
