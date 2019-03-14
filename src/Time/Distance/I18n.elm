module Time.Distance.I18n exposing (english, spanish)

import Time.Distance.Types exposing (DistanceId(..), Locale, Tense(..))


english : Locale
english { withAffix } tense distanceId =
    let
        toStr =
            String.fromInt

        maybeAffix str =
            case ( withAffix, tense ) of
                ( True, Past ) ->
                    str ++ " ago"

                ( True, Future ) ->
                    "in " ++ str

                ( False, _ ) ->
                    str
    in
    (case distanceId of
        LessThanXSeconds i ->
            if i == 1 then
                "less than 1 second"

            else
                "less than " ++ toStr i ++ " seconds"

        HalfAMinute ->
            "half a minute"

        LessThanXMinutes i ->
            if i == 1 then
                "less than a minute"

            else
                "less than " ++ toStr i ++ " minutes"

        XMinutes i ->
            if i == 1 then
                "1 minute"

            else
                toStr i ++ " minutes"

        AboutXHours i ->
            if i == 1 then
                "about 1 hour"

            else
                "about " ++ toStr i ++ " hours"

        XDays i ->
            if i == 1 then
                "1 day"

            else
                toStr i ++ " days"

        AboutXMonths i ->
            if i == 1 then
                "about 1 month"

            else
                "about " ++ toStr i ++ " months"

        XMonths i ->
            if i == 1 then
                "1 month"

            else
                toStr i ++ " months"

        AboutXYears i ->
            if i == 1 then
                "about 1 year"

            else
                "about " ++ toStr i ++ " years"

        OverXYears i ->
            if i == 1 then
                "over 1 year"

            else
                "over " ++ toStr i ++ " years"

        AlmostXYears i ->
            if i == 1 then
                "almost 1 year"

            else
                "almost " ++ toStr i ++ " years"
    )
        |> maybeAffix


spanish : Locale
spanish { withAffix } tense distanceId =
    let
        toStr =
            String.fromInt

        maybeAffix str =
            case ( withAffix, tense ) of
                ( True, Past ) ->
                    "hace " ++ str

                ( True, Future ) ->
                    "en " ++ str

                ( False, _ ) ->
                    str
    in
    (case distanceId of
        LessThanXSeconds i ->
            if i == 1 then
                "menos de 1 segundo"

            else
                "menos de " ++ toStr i ++ " segundos"

        HalfAMinute ->
            "medio minuto"

        LessThanXMinutes i ->
            if i == 1 then
                "menos de un minuto"

            else
                "menos de " ++ toStr i ++ " minutos"

        XMinutes i ->
            if i == 1 then
                "1 minuto"

            else
                toStr i ++ " minutos"

        AboutXHours i ->
            if i == 1 then
                "alrededor 1 hora"

            else
                "alrededor " ++ toStr i ++ " hours"

        XDays i ->
            if i == 1 then
                "1 día"

            else
                toStr i ++ " días"

        AboutXMonths i ->
            if i == 1 then
                "alrededor 1 mes"

            else
                "alrededor " ++ toStr i ++ " meses"

        XMonths i ->
            if i == 1 then
                "1 mes"

            else
                toStr i ++ " meses"

        AboutXYears i ->
            if i == 1 then
                "alrededor 1 año"

            else
                "alrededor " ++ toStr i ++ " años"

        OverXYears i ->
            if i == 1 then
                "más de un año"

            else
                "más de " ++ toStr i ++ " años"

        AlmostXYears i ->
            if i == 1 then
                "casi un año"

            else
                "casi " ++ toStr i ++ " años"
    )
        |> maybeAffix
