# The name of this view in Looker is "Explore Assistant Samples"
view: explore_assistant_samples {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `explore_assistant.explore_assistant_samples` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Explore ID" in Explore.

  dimension: explore_id {
    type: string
    sql: ${TABLE}.explore_id ;;
  }

  dimension: samples {
    type: string
    sql: ${TABLE}.samples ;;
  }
  measure: count {
    type: count
  }
}
