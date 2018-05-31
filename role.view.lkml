view: role {
  sql_table_name: dbo.Role ;;

  dimension: role_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Role_Id ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Created_At ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.Role_Name ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Updated_At ;;
  }

  measure: count {
    type: count
    drill_fields: [role_id, role_name, noti_event_role.count, role_previlege.count, user_role.count]
  }
}
