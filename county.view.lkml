view: county {
  sql_table_name: dbo.County ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_Id ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.State_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction.jurisdiction_id]
  }
}
