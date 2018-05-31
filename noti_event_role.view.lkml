view: noti_event_role {
  sql_table_name: dbo.Noti_Event_Role ;;

  dimension: event_id {
    type: number
    sql: ${TABLE}.Event_Id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Role_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [role.role_id, role.role_name]
  }
}
