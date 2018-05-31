view: bulk_upload_dnrcharge {
  sql_table_name: dbo.BulkUpload_DNRCharge ;;

  dimension: bulk_upload_dnrcharge_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BulkUpload_DNRCharge_Id ;;
  }

  dimension: bulk_upload_job_id {
    type: number
    sql: ${TABLE}.BulkUpload_JobId ;;
  }

  dimension: charge_description {
    type: string
    sql: ${TABLE}.Charge_Description ;;
  }

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: error_description {
    type: string
    sql: ${TABLE}.Error_Description ;;
  }

  measure: count {
    type: count
    drill_fields: [bulk_upload_dnrcharge_id]
  }
}
