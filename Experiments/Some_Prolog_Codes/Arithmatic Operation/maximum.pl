maximum(A,B,C):-
       A=B, B=C, C=A,
                  write('Both 3 numbers are equal');
       A>B, A>C, 
                  
                  write('Larger/Maximum Value is '), 
                  write(A);
       B>A, B>C, 
                  
                  write('Larger/Maximum Value is '), 
                  write(B);
       C>B, C>A, 
                  
                  write('Larger/Maximum Value is '), 
                  write(C).