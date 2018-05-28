view: entity_check {
  sql_table_name: dbo.Entity_Check ;;

  dimension: entity_check_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Entity_Check_Id ;;
  }

  dimension: columns {
    type: string
    sql: ${TABLE}.Columns ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.Entity_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [entity_check_id]
  }
}
