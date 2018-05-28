view: slg_charge_abbreviation {
  sql_table_name: dbo.SLG_Charge_Abbreviation ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: charge_abbreviation_id {
    type: number
    sql: ${TABLE}.Charge_Abbreviation_Id ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
