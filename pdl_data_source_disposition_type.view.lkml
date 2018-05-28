view: pdl_data_source_disposition_type {
  sql_table_name: dbo.PDL_DataSource_Disposition_Type ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, disposition_type.disposition_type_id]
  }
}
