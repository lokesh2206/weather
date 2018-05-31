view: previleges {
  sql_table_name: dbo.Previleges ;;

  dimension: previleges_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Previleges_Id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: previlege_name {
    type: string
    sql: ${TABLE}.Previlege_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [previleges_id, previlege_name, role_previlege.count]
  }
}
