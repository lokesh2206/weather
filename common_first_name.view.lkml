view: common_first_name {
  sql_table_name: dbo.Common_First_Name ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, users.user_id, users.name]
  }
}
