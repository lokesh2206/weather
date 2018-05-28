view: role_previlege {
  sql_table_name: dbo.Role_Previlege ;;

  dimension: role_previlege_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Role_Previlege_Id ;;
  }

  dimension: previleges_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Previleges_Id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Role_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [role_previlege_id, role.role_id, role.role_name, previleges.previleges_id, previleges.previlege_name]
  }
}
