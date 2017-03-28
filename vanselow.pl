fourSquares(N,[S1,S2,S3,S4]):- between(0,N,S1),between(0,N,S2),between(0,N,S3),between(0,N,S4),
								S1=<S2,S3=<S4,S2=<S3,
								sum_list([S1,S2,S3,S4],N),
								isSquare(S1),isSquare(S2),isSquare(S3),isSquare(S4).
isSquare(V):- N is sqrt(V), float_fractional_part(N) =:= 0.