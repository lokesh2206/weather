view: pdl_product_category_reporting_threshold {
  sql_table_name: dbo.PDL_Product_Category_Reporting_Threshold ;;

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

  dimension: no_of_charges_met_threshold {
    type: number
    sql: ${TABLE}.No_Of_Charges_Met_Threshold ;;
  }

  dimension: percentile_charges_met_threshold {
    type: number
    sql: ${TABLE}.Percentile_Charges_Met_Threshold ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: product_category_reporting_threshold_id {
    type: number
    sql: ${TABLE}.Product_Category_Reporting_Threshold_ID ;;
  }

  dimension_group: time_stamp {
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
    sql: ${TABLE}.TimeStamp ;;
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
