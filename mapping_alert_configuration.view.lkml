view: mapping_alert_configuration {
  sql_table_name: dbo.Mapping_Alert_Configuration ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: days {
    type: number
    sql: ${TABLE}.Days ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
