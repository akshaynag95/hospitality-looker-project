view: rooms {
  sql_table_name: `supply-chain-twin-349311.hospitality_dataset.rooms` ;;
  drill_fields: [room_id]

  dimension: room_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.room_id ;;
  }
  dimension: room_class {
    type: string
    sql: ${TABLE}.room_class ;;
  }
  measure: count {
    type: count
    drill_fields: [room_id]
  }
}
