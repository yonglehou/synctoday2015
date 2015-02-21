﻿module AdapterAppointmentRepository

open System
open AdapterAppointmentsSQL
open sync.today.Models

let AdapterAppointments( appointmentId : int ) =
    adapterAppointments( appointmentId )

let InsertOrUpdate( adapterAppointment : AdapterAppointmentDTO ) =
    insertOrUpdate( adapterAppointment, true )

let Get( id : Guid ) =
    adapterAppointmentDTOByInternalId( id )
