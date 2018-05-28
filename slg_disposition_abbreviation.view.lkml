view: slg_disposition_abbreviation {
  sql_table_name: dbo.SLG_Disposition_Abbreviation ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: disposition_abbreviation_id {
    type: number
    sql: ${TABLE}.Disposition_Abbreviation_Id ;;
  }

  dimension: disposition_description_id {
    type: number
    sql: ${TABLE}.Disposition_Description_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
