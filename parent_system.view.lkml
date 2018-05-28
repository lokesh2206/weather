view: parent_system {
  sql_table_name: dbo.Parent_System ;;

  dimension: parent_system_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Parent_System_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: is_sample_system {
    type: string
    sql: ${TABLE}.Is_Sample_system ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  measure: count {
    type: count
    drill_fields: [parent_system_id, customer.count, product.count, screening_result.count]
  }
}
