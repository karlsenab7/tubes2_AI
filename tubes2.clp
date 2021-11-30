
; Mengidentifikasi "mean_concave_points"
(defrule mean_concave_points
    =>
        (printout t crlf "mean concave points ? ")

        (bind ?x (read))

        (
            if (> ?x 0.05)
                then (
                    assert (worstPerimeter yes)
                    )
        )
            
        (
            if (<= ?x 0.05)
                then(assert (worstRadius yes))
        )
)

; Mengidentifikasi "worst_perimeter"
(defrule worst_perimeter (worstPerimeter yes)
    =>
        (printout t crlf "worst perimeter ? ")

        (bind ?x (read))

        (
            if (> ?x 114.5)
                then (
                    assert (isCancer no)
                    )
        )
            
        (
            if (<= ?x 114.45)
                then(assert (worstTexture2 yes))
        )
)

; Mengidentifikasi "worst_texture_2"
(defrule worst_texture_2 (worstTexture2 yes)
    =>
        (printout t crlf "worst texture ? ")

        (bind ?x (read))

        (
            if (> ?x 25.65)
                then (
                    assert (perimeterError yes)
                    )
        )
            
        (
            if (<= ?x 25.65)
                then(assert (worstConcavePoints yes))
        )
)

; Mengidentifikasi "worst_concave_points"
(defrule worst_concave_points (worstConcavePoints yes)
    =>
        (printout t crlf "worst concave points ? ")

        (bind ?x (read))

        (
            if (> ?x 0.17)
                then (
                    assert (isCancer no)
                    )
        )
            
        (
            if (<= ?x 0.17)
                then(assert (isCancer yes))
        )
)

; Mengidentifikasi "perimeter_error"
(defrule perimeter_error (perimeterError yes)
    =>
        (printout t crlf "perimeter error ? ")

        (bind ?x (read))

        (
            if (> ?x 1.56)
                then (
                    assert (isCancer no)
                    )
        )
            
        (
            if (<= ?x 1.56)
                then(assert (meanRadius4 yes))
        )
)

; Mengidentifikasi "mean_radius_4"
(defrule mean_radius_4 (meanRadius4 yes)
    =>
        (printout t crlf "mean radius ? ")

        (bind ?x (read))

        (
            if (> ?x 13.34)
                then (
                    assert (isCancer yes)
                    )
        )
            
        (
            if (<= ?x 13.34)
                then(assert (isCancer no))
        )
)

; Mengidentifikasi "Worst Radius"
(
    defrule worst_radius (worstRadius yes)
    =>
        (printout t crlf "worst radius ? ")
        (bind ?x (read))
        (
            if (> ?x 16.83) then 
            (
                assert (meanTexture2 yes)
            )
        )
        (
            if (<= ?x 16.83) then
            (
                assert (radiusError yes)
            )
        )
)

; Mengidentifikasi "Mean Texture"
(
    defrule mean_texture_2 (meanTexture2 yes)
    =>
        (printout t crlf "mean texture ? ")
        (bind ?x (read))
        (
            if (> ?x 16.19) then 
            (
                assert (concavePointsError yes)
            )
        )
        (
            if (<= ?x 16.19) then
            (
                assert (isCancer yes)
            )
        )
)

; Mengidentifikasi "Concave Points Error"
(
    defrule concave_points_error (concavePointsError yes)
    =>
        (printout t crlf "concave points error ? ")
        (bind ?x (read))
        (
            if (> ?x 0.01) then 
            (
                assert (isCancer yes)
            )
        )
        (
            if (<= ?x 0.01) then
            (
                assert (isCancer no)
            )
        )
)

; Mengidentifikasi "Mean Smoothness"
(
    defrule mean_smoothness (meanSmoothness yes)
    =>
        (printout t crlf "mean smoothness ? ")
        (bind ?x (read))
        (
            if (> ?x 0.09) then 
            (
                assert (isCancer no)
            )
        )
        (
            if (<= ?x 0.09) then
            (
                assert (isCancer yes)
            )
        )
)

; Mengidentifikasi "radius_error"
(
    defrule radius_error (radiusError yes)
    =>
        (printout t crlf "radius error ? ")

        (bind ?x (read))

        (
            if (> ?x 0.63)
                then (
                    assert (meanSmoothness yes)
                    )
        )
            
        (
            if (<= ?x 0.63)
                then(
                    assert (worstTexture3 yes)
                    )
        )
)

; Mengidentifikasi "worst_texture"
(
    defrule worst_texture_3 (worstTexture3 yes)
    =>
        (printout t crlf "worst texture ? ")

        (bind ?x (read))

        (
            if (> ?x 30.15)
                then (
                    assert (worstArea yes)
                    )
        )
            
        (
            if (<= ?x 30.15)
                then(
                    assert (isCancer yes)
                    )
        )
)

; Mengidentifikasi "worst_area"
(
    defrule worst_area (worstArea yes)
    =>
        (printout t crlf "worst area ? ")

        (bind ?x (read))

        (
            if (> ?x 641.60)
                then (
                    assert (meanRadius5 yes)
                    )
        )
            
        (
            if (<= ?x 641.60)
                then(
                    assert (isCancer yes)
                    )
        )
)

; Mengidentifikasi "mean_radius5"
(
    defrule mean_radius_5 (meanRadius5 yes)
    =>
        (printout t crlf "mean radius ? ")

        (bind ?x (read))

        (
            if (> ?x 13.45)
                then (
                    assert (isCancer yes)
                    )
        )
            
        (
            if (<= ?x 13.45)
                then(
                    assert (meanTexture6 yes)
                    )
        )
)

; Mengidentifikasi "mean_texture6"
(
    defrule mean_texture_6 (meanTexture6 yes)
    =>
        (printout t crlf "mean texture ? ")

        (bind ?x (read))

        (
            if (> ?x 28.79)
                then (
                    assert (isCancer yes)
                    )
        )
            
        (
            if (<= ?x 28.79)
                then(
                    assert (isCancer no)
                    )
        )
)

; Jika Terprediksi Cancer
(
    defrule predictionYes
    (isCancer yes)
    =>
    (printout t crlf "Hasil Prediksi = Terprediksi Kanker Payudara" crlf)
)

; Jika Tidak Terprediksi Cancer
(
    defrule predictionNo
    (isCancer no)
    =>
    (printout t crlf "Hasil Prediksi = Tidak Terprediksi Kanker Payudara" crlf)
)