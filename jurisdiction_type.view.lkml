view: jurisdiction_type {
  sql_table_name: dbo.Jurisdiction_Type ;;

  dimension: jurisdiction_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Jurisdiction_Type_Id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction_type_id, crim_case.count, jurisdiction.count, screening_result.count, vw_flattened_jurisdiction.count]
  }
}
