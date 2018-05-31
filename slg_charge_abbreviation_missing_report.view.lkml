view: slg_charge_abbreviation_missing_report {
  sql_table_name: dbo.SLG_Charge_Abbreviation_Missing_Report ;;

  dimension: charge_abbreviation {
    type: string
    sql: ${TABLE}.Charge_Abbreviation ;;
  }

  dimension: charge_abbreviation_missing_report_id {
    type: number
    sql: ${TABLE}.Charge_Abbreviation_Missing_Report_Id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreatedAt ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ModifiedAt ;;
  }

  dimension: occurrence_count {
    type: number
    sql: ${TABLE}.Occurrence_Count ;;
  }

  dimension: product_category_id {
    type: number
    sql: ${TABLE}.Product_Category_id ;;
  }

  dimension: statute_code {
    type: string
    sql: ${TABLE}.Statute_Code ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction.jurisdiction_id]
  }
}
