﻿module Common

open System
open System.IO
open System.Xml
open System.Text
open Newtonsoft.Json
open Newtonsoft.Json.Linq

[<Literal>]
let ConnectionStringName="name=sync-today-mssql"

module Seq =
    let tryHead xs = xs |> Seq.tryPick Some

/// Object to Json 
let public json<'t> (myObj:'t) =   
        JsonConvert.SerializeObject(myObj)

/// Object from Json 
let public unjson<'t> (jsonString:string)  : 't =  
        let obj = JsonConvert.DeserializeObject(jsonString)
        if obj :? 't then 
            obj :?> 't
        else
            let jToken = obj :?> JToken
            jToken.ToObject<'t>()

let fixDateTime( a : DateTime ) : DateTime =
    a.AddTicks( -(a.Ticks % TimeSpan.TicksPerSecond) )

let fixDateSecs( a : DateTime ) : DateTime =
    fixDateTime( a.AddSeconds( float -a.Second ) )

let intersect x y = Set.intersect (Set.ofList x) (Set.ofArray y)

let optionString2String( optionString : String option ) =
    if optionString.IsNone then null else optionString.Value 

let devlog = log4net.LogManager.GetLogger("DevLog");
let ignlog = log4net.LogManager.GetLogger( "IgnoreLog" )

let string2optionString( s : string ) : string option =
    match s with
    | null -> None
    | some -> Some(some)
