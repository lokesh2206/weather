view: conservative_state {
  sql_table_name: dbo.Conservative_State ;;

  dimension: conservative_state_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Conservative_State_Id ;;
  }

  dimension: conservative_state_jurisdiction {
    type: number
    sql: ${TABLE}.Conservative_State_Jurisdiction ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: state_jurisdiction {
    type: number
    sql: ${TABLE}.State_Jurisdiction ;;
  }

  dimension: state_residence {
    type: number
    sql: ${TABLE}.State_Residence ;;
  }

  measure: count {
    type: count
    drill_fields: [conservative_state_id, disposition_type.disposition_type_id]
  }
}
