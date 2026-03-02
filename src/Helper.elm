module Helper exposing (..)

-- GRADE


type Grade
    = Approved
    | Failed


categoricalGrade : Int -> Grade
categoricalGrade grade =
    if grade >= 7 then
        Approved

    else
        Failed



-- AIRPLANE


type AirplaneSchedule
    = Cancelled
    | Delayed
    | OnTime
    | Boarding


airplaneScheduleAction : AirplaneSchedule -> String
airplaneScheduleAction schedule =
    case schedule of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airplaneAction : List AirplaneSchedule -> List String
airplaneAction schedules =
    List.map airplaneScheduleAction schedules
