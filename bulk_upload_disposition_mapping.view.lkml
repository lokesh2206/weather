view: bulk_upload_disposition_mapping {
  sql_table_name: dbo.BulkUpload_Disposition_Mapping ;;

  dimension: bulk_upload_disposition_mapping_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BulkUpload_Disposition_Mapping_Id ;;
  }

  dimension: bulk_upload_job_id {
    type: number
    sql: ${TABLE}.BulkUpload_JobId ;;
  }

  dimension: disposition_description {
    type: string
    sql: ${TABLE}.Disposition_Description ;;
  }

  dimension: disposition_description_id {
    type: number
    sql: ${TABLE}.Disposition_Description_Id ;;
  }

  dimension: disposition_type {
    type: string
    sql: ${TABLE}.Disposition_Type ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_Id ;;
  }

  dimension: error_description {
    type: string
    sql: ${TABLE}.Error_Description ;;
  }

  dimension: juris_id {
    type: number
    sql: ${TABLE}.Juris_Id ;;
  }

  dimension: jurisdiction {
    type: string
    sql: ${TABLE}.Jurisdiction ;;
  }

  measure: count {
    type: count
    drill_fields: [bulk_upload_disposition_mapping_id, disposition_type.disposition_type_id]
  }
}
