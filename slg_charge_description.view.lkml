view: slg_charge_description {
  sql_table_name: dbo.SLG_Charge_Description ;;

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
