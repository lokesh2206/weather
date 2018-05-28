view: slg_disposition_santization_temp {
  sql_table_name: dbo.SLG_Disposition_Santization_Temp ;;

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
  }

  dimension: disposition_description_id {
    type: number
    sql: ${TABLE}.Disposition_Description_Id ;;
  }

  dimension: disposition_mapping_id {
    type: number
    sql: ${TABLE}.Disposition_Mapping_id ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction.jurisdiction_id, disposition_type.disposition_type_id]
  }
}
