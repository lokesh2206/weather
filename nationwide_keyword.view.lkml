view: nationwide_keyword {
  sql_table_name: dbo.Nationwide_Keyword ;;

  dimension: nationwide_keyword_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Nationwide_Keyword_Id ;;
  }

  dimension: nationwide_keyword_value {
    type: string
    sql: ${TABLE}.Nationwide_Keyword_Value ;;
  }

  measure: count {
    type: count
    drill_fields: [nationwide_keyword_id]
  }
}
