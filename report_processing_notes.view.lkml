view: report_processing_notes {
  sql_table_name: dbo.Report_Processing_Notes ;;

  dimension: report_processing_notes_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Report_Processing_Notes_Id ;;
  }

  dimension_group: creation {
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
    sql: ${TABLE}.Creation_date ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.Note ;;
  }

  dimension: smart_data_component_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.SmartData_Component_id ;;
  }

  measure: count {
    type: count
    drill_fields: [report_processing_notes_id, smart_data_component.smart_data_component_id]
  }
}
