connection: "supply-chain-twin-349311"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
week_start_day: sunday

explore: fact_bookings {
  label: "Bookings"
  join: hotels {
    relationship: one_to_many
    sql_on: ${fact_bookings.property_id} = ${hotels.property_id} ;;
  }

  join: date {
    relationship: one_to_many
    sql_on: ${fact_bookings.check_in_date} = ${date.date_date} ;;
  }

  join: rooms {
    relationship: one_to_many
    sql_on: ${fact_bookings.room_category} = ${rooms.room_id};;
  }
}

explore: fact_aggregated_bookings {
  label: "Aggregated Bookings"
  join: hotels {
    relationship: one_to_many
    sql_on: ${fact_aggregated_bookings.property_id} = ${hotels.property_id} ;;
  }
  join: date {
    relationship: one_to_many
    sql_on: ${fact_aggregated_bookings.check_in_date} = ${date.date_date} ;;
  }
  join: rooms {
    relationship: one_to_many
    sql_on: ${fact_aggregated_bookings.room_category}=${rooms.room_id} ;;
  }
}
