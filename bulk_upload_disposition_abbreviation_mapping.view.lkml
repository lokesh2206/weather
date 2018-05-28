view: bulk_upload_disposition_abbreviation_mapping {
  sql_table_name: dbo.BulkUpload_Disposition_Abbreviation_Mapping ;;

  dimension: bulk_upload_disposition_abbreviation_mapping_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BulkUpload_Disposition_Abbreviation_Mapping_Id ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.Abbreviation ;;
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

  dimension: error_description {
    type: string
    sql: ${TABLE}.Error_Description ;;
  }

  measure: count {
    type: count
    drill_fields: [bulk_upload_disposition_abbreviation_mapping_id]
  }
}
