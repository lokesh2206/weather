view: state {
  sql_table_name: dbo.State ;;

  dimension: country_code {
    type: string
    sql: ${TABLE}.Country_CODE ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
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
