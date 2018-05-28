view: notifier {
  sql_table_name: dbo.Notifier ;;

  dimension: notifier_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Notifier_Id ;;
  }

  dimension: notifier_email {
    type: string
    sql: ${TABLE}.Notifier_Email ;;
  }

  dimension: notifier_name {
    type: string
    sql: ${TABLE}.Notifier_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [notifier_id, notifier_name, alert_notification_levels.count]
  }
}
