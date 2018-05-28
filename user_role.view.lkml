view: user_role {
  sql_table_name: dbo.User_Role ;;

  dimension: user_role_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.User_Role_Id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Role_Id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [user_role_id, users.user_id, users.name, role.role_id, role.role_name]
  }
}
