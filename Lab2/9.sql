alter table security_check add constraint fk_security_passenger foreign key (passenger_id) references passengers(passenger_id);
alter table booking add constraint fk_booking_passenger foreign key (passenger_id) references passengers(passenger_id);
alter table baggage_check add constraint fk_baggagecheck_passenger foreign key (passenger_id) references passengers(passenger_id);

alter table baggage_check add constraint fk_baggagecheck_booking foreign key (booking_id) references booking(booking_id);
alter table baggage add constraint fk_baggage_booking foreign key (booking_id) references booking(booking_id);
alter table boarding_pass add constraint fk_boarding_booking foreign key (booking_id) references booking(booking_id);
alter table booking_flight add constraint fk_bookingflight_booking foreign key (booking_id) references booking(booking_id);

alter table booking_flight add constraint fk_bookingflight_flight foreign key (flight_id) references flights(flight_id);

alter table flights add constraint fk_flights_depart_airport foreign key (departing_airport_id) references airport(airport_id);
alter table flights add constraint fk_flights_arrive_airport foreign key (arriving_airport_id) references airport(airport_id);
alter table flights add constraint fk_flights_airline foreign key (airline_id) references airline(airline_id);