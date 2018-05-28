view: slg_disposition_abbreviation_missing_report {
  sql_table_name: dbo.SLG_Disposition_Abbreviation_Missing_Report ;;

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

  dimension: disposition_abbreviation {
    type: string
    sql: ${TABLE}.Disposition_Abbreviation ;;
  }

  dimension: disposition_abbreviation_missing_report_id {
    type: number
    sql: ${TABLE}.Disposition_Abbreviation_Missing_Report_Id ;;
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

  measure: count {
    type: count
    drill_fields: [jurisdiction.jurisdiction_id]
  }
}
