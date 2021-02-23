program animation_script
    implicit none
    integer, parameter :: imax = 100,xmax = 10
    integer :: counter, counter_end = 24,dx
    character(len=*), parameter :: base='./data/temp.j=middle.'
    character(len=4)            :: serial_num
    
    dx   = xmax/imax
   
    print *, "#"
    print *, "# gnuplot script generated by movie_script.f90"
    print *, "#"
    print *, " "
    print *, "set xlabel 'x'              # x-axis"
    print *, "set ylabel 'temperature'    # y-axis"   
    print *, "set xrange[0:", xmax, "]     # j-grid min & max"
    print *, "set yrange[0.0:10.0]         # temperature min & max"
    print *, "set grid"
    print *, "set xlabel font 'Arial,20' "
    print *, "set ylabel font 'Arial,20' "
    print *, "set tics font 'Arial,20'"
   
    do counter = 0 , counter_end
       write(serial_num,'(i4.4)') counter
       print *, "plot '"//base//serial_num//"' w lp"
       
       if ( counter==0) then 
          print *, "pause 2"
       else
          print *, "pause 1"
       end if
    end do
    print *, "pause -1"
end program animation_script