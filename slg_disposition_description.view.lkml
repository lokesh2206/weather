view: slg_disposition_description {
  sql_table_name: dbo.SLG_Disposition_Description ;;

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
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
