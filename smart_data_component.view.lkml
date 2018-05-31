view: smart_data_component {
  sql_table_name: dbo.SmartData_Component ;;

  dimension: smart_data_component_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SmartData_Component_id ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}.Component ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  measure: count {
    type: count
    drill_fields: [smart_data_component_id, report_processing_notes.count]
  }
}
