#!/bin/sh
# Purpose: various symbols -S
ps=vectors.ps
# 1. вектор: стрелки толстые с прозрачным кружком в начале и острием в конце.
# kwargs: координаты XY, угол наклона, длина
gmt psxy -R0/50/0/50 -JX6i -Sv0.15i+bc+ea -Wthickest,red -Gyellow -P -Baf -K << EOF > $ps
2 21 5 2c
3 15 30 3c
EOF
# 2. вектор: стрелки тонкие с желтым кружком в начале и острием в конце.
# kwargs: координаты, угол наклона, длина
gmt psxy -R -J -Sv0.15i+bc+ea -Gyellow -W0.5p -O -K << EOF >> $ps
10 10 45 2i
20 30 0 1.5i
EOF
# 3. круг.
# kwargs: координаты и размер (радиус)
gmt psxy -R -J -Sc -W0.5p -O -K << EOF >> $ps
22 35 1.5i
EOF
# 4. ромб.
# kwargs: координаты и размер (длина стороны)
gmt psxy -R -J -Sd1c -W0.5p -Ggreen -O -K << EOF >> $ps
12 15
EOF
# 5. эллипс.
# kwargs: координаты XY, direction(угол поворота), major axe, minor axe
gmt psxy -R -J -Se -W0.5p,blue -O -K << EOF >> $ps
18 13 45 6 2
EOF
# 6. прямоугольник горизонтальный // horisontal bar.
# kwargs: -SB3cb1 3см шириной, b1 - начало, координаты XY,
gmt psxy -R -J -SB3cb1 -W0.5p,purple -O -K << EOF >> $ps
5 9
EOF
# 7. прямоугольник вертикальный // vertical bar.
# kwargs: -SB3cb1 3см шириной, b1 - начало, координаты XY,
gmt psxy -R -J -SB3cb1 -W0.5p,cyan -O -K << EOF >> $ps
20 25
EOF
# 8. звездочка // star.
# kwargs: координаты XY, диаметр
gmt psxy -R -J -Sa4 -W0.5p,magenta -O -K << EOF >> $ps
30 35
EOF
# 9. звездочка внутри // star
# kwargs: координаты XY, диаметр
gmt psxy -R -J -Sa3 -W0.5p,green -O -K << EOF >> $ps
30 35
EOF
# 10. треугольник. triangle
# kwargs: координаты XY, размер
gmt psxy -R -J -St3 -W0.5p,navy -O -K << EOF >> $ps
3 35
EOF
# 11. квадрат. square
# kwargs: координаты XY, размер
gmt psxy -R -J -Ss1.5 -W1p,pink -O -K << EOF >> $ps
10 45
EOF
# 12. кусок пирога (круговой диаграммы). pie wedge
# kwargs: координаты XY, размер
gmt psxy -R -J -Sw2 -W1p,pink -O -K -P << EOF >> $ps
40 40 42 40
40 40 48 48
EOF
# 12. кусок пирога (круговой диаграммы). pie wedge
# kwargs: координаты XY, размер
gmt psxy -R -J -Sw2 -W1p,pink -O -K -P << EOF >> $ps
30 10 40 10
30 10 15 10
EOF
# 13. крест (андреевский, диагональный). cross; size is length of crossing lines
# kwargs: координаты XY, размер
gmt psxy -R -J -Sx4 -W1p,darkblue -O -K -P << EOF >> $ps
30 30
EOF
# 14. линия вертикальная // vertical dash; size is length of dash
# kwargs: координаты XY, размер
gmt psxy -R -J -Sy3 -W2p,brown -O -K -P << EOF >> $ps
38 30
EOF
# 15. буквы
# kwargs: координаты XY, размер
gmt psxy -R -J -Sl12p+t"Polina's tests GMT"+fTimes-Roman,darkblue -O -K -P << EOF >> $ps
30 15
EOF
# 16. восьмиконечник // hexagon
# kwargs: координаты XY, размер
gmt psxy -R -J -Sh4 -W1p,darkgreen -O -K -P << EOF >> $ps
40 20
EOF
# 17. пятиконечник // pentagon
# kwargs: координаты XY, размер
gmt psxy -R -J -Sg3 -W1p,orange -O -K -P << EOF >> $ps
40 20
EOF
# 18. треугольник (выступает за карту -N). triangle
# kwargs: координаты XY, размер
gmt psxy -R -J -St3 -W0.5p,navy -N -O -K << EOF >> $ps
48 3
EOF
# 19. кривая. math angle arc, optionally with one or two arrow heads
# kwargs: угол, координаты XY начальной точки, координаты XY конечной точки
gmt psxy -R -J -Sm0.5+bc+ea -Gyellow -W1p,navy -O -K -P << EOF >> $ps
30 39 2 10 130
EOF
# 20. кривая. math angle arc, optionally with one or two arrow heads
# kwargs: угол, координаты XY начальной точки, координаты XY конечной точки
gmt psxy -R -J -Sm0.5+bc+ea -W1p,magenta -O -K -P << EOF >> $ps
15 20 2 0 30
EOF
# 20. кривая. math angle arc, optionally with one or two arrow heads
# kwargs: угол, координаты XY начальной точки, координаты XY конечной точки
gmt psxy -R -J -Sm2 -W1p,orange -O -K -P << EOF >> $ps
15 20 3 0 45
EOF
# 20. кривая. math angle arc, optionally with one or two arrow heads
# kwargs: угол, координаты XY начальной точки, координаты XY конечной точки
gmt psxy -R -J -Sm0.5+bc+ea -W1p,red -O -K -P << EOF >> $ps
15 20 4 0 60
EOF
