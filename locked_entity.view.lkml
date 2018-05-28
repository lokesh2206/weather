view: locked_entity {
  sql_table_name: dbo.Locked_Entity ;;

  dimension: locked_entity_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Locked_Entity_Id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.Entity_Id ;;
  }

  dimension: entity_primary_key_col {
    type: string
    sql: ${TABLE}.Entity_PrimaryKey_Col ;;
  }

  dimension: entity_primary_key_val {
    type: number
    sql: ${TABLE}.Entity_PrimaryKey_Val ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.Task_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [locked_entity_id]
  }
}
