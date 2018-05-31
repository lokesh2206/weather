view: entity_parent {
  sql_table_name: dbo.Entity_Parent ;;

  dimension: entity_parent_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Entity_Parent_Id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.Entity_Id ;;
  }

  dimension: parent_entity_id {
    type: number
    sql: ${TABLE}.Parent_Entity_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [entity_parent_id]
  }
}
