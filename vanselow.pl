fourSquares(N,[S1,S2,S3,S4]):- between(0,N,S1),between(0,N,S2),between(0,N,S3),between(0,N,S4),
                                S1S is S1*S1,S2S is S2*S2,S3S is S3*S3,S4S is S4*S4,
								S1=<S2,S3=<S4,S2=<S3,
								sum_list([S1S,S2S,S3S,S4S],N),
								isSquare(S1S),isSquare(S2S),isSquare(S3S),isSquare(S4S).
isSquare(V):- N is sqrt(V), float_fractional_part(N) =:= 0.

