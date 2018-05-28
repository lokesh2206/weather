view: keyword {
  sql_table_name: dbo.Keyword ;;

  dimension: keyword_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Keyword_Id ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_id ;;
  }

  dimension: keyword_value {
    type: string
    sql: ${TABLE}.Keyword_Value ;;
  }

  measure: count {
    type: count
    drill_fields: [keyword_id, jurisdiction.jurisdiction_id]
  }
}
