view: address_abbreviation {
  sql_table_name: dbo.Address_Abbreviation ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: abbreviation_id {
    type: number
    sql: ${TABLE}.Abbreviation_Id ;;
  }

  dimension: expansion {
    type: string
    sql: ${TABLE}.Expansion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
