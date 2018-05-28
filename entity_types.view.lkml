view: entity_types {
  sql_table_name: dbo.Entity_Types ;;

  dimension: entity_group {
    type: string
    sql: ${TABLE}.Entity_Group ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.Entity_Id ;;
  }

  dimension: entity_name {
    type: string
    sql: ${TABLE}.Entity_Name ;;
  }

  dimension: entity_primary_key_col {
    type: string
    sql: ${TABLE}.Entity_PrimaryKey_Col ;;
  }

  dimension: params {
    type: string
    sql: ${TABLE}.Params ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  measure: count {
    type: count
    drill_fields: [entity_name]
  }
}
