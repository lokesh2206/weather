view: pod {
  sql_table_name: dbo.Pod ;;

  dimension: pod_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Pod_Id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: pod_name {
    type: string
    sql: ${TABLE}.Pod_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [pod_id, pod_name, account.count, customer.count]
  }
}
