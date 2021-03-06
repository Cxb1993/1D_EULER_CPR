MODULE MODULE_DFDU
    USE MODULE_PRECISION
    
    CONTAINS
    
    SUBROUTINE COMPUTE_A11(SIZE, GAMMA,  RHO, RHOU, RHOE, P, U, T, A11)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(1:SIZE), INTENT(IN)  :: RHO, RHOU, RHOE, P, U, T
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A11
    REAL(WP), INTENT(IN)    :: GAMMA
    INTEGER(IP) :: I
    
    DO I = 1, SIZE
        A11(I) = 0._WP
    END DO
    RETURN
    END SUBROUTINE COMPUTE_A11
    
    
    SUBROUTINE COMPUTE_A12(SIZE, GAMMA, RHO, RHOU, RHOE, P, U, T, A12)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(:), INTENT(IN)  :: RHO, RHOU, RHOE, P, U, T
    REAL(WP), INTENT(IN)    :: GAMMA
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A12
    INTEGER(IP) :: I
    
    DO I = 1, SIZE
        A12(I) = 1._WP;
    END DO
    RETURN
    END SUBROUTINE COMPUTE_A12
    
    SUBROUTINE COMPUTE_A13(SIZE, GAMMA, RHO, RHOU, RHOE, P, U, T, A13)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(1:SIZE), INTENT(IN)  :: RHO, RHOU, RHOE, P, U, T
    REAL(WP), INTENT(IN)    :: GAMMA
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A13
    INTEGER(IP) :: I
    
    DO I = 1, SIZE
        A13(I) = 0._WP
    END DO
    
    END SUBROUTINE COMPUTE_A13
    
    SUBROUTINE COMPUTE_A21(SIZE, GAMMA, RHO, RHOU, RHOE, P, U, T, A21)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(1:SIZE), INTENT(IN)  ::  RHO, RHOU, RHOE, P, U, T   
    REAL(WP), INTENT(IN)    :: GAMMA
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A21
    INTEGER(IP) :: I
    
    DO I = 1, SIZE        
        A21(I) = 0.5_WP*(GAMMA - 3._WP)*U(I)*U(I)
    END DO
    
    END SUBROUTINE COMPUTE_A21
    
    SUBROUTINE COMPUTE_A22(SIZE, GAMMA, RHO, RHOU, RHOE, P, U, T, A22)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(1:SIZE), INTENT(IN)  :: RHO, RHOU, RHOE, P, U, T    
    REAL(WP), INTENT(IN)    :: GAMMA
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A22
    INTEGER(IP) :: I
    
    DO I = 1, SIZE
        A22(I) = (3._WP- GAMMA) *U(I)
    END DO
    
    END SUBROUTINE COMPUTE_A22
    
    SUBROUTINE COMPUTE_A23(SIZE, GAMMA, RHO, RHOU, RHOE, P, U, T, A23)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(1:SIZE), INTENT(IN)  ::  RHO, RHOU, RHOE, P, U, T   
    REAL(WP), INTENT(IN)    :: GAMMA
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A23
    INTEGER(IP) :: I
    DO I = 1, SIZE
        A23(I) = GAMMA - 1._WP
    END DO
    
    END SUBROUTINE COMPUTE_A23  
    
    SUBROUTINE COMPUTE_A31(SIZE, GAMMA, RHO, RHOU, RHOE, P, U, T, A31)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(1:SIZE), INTENT(IN)  :: RHO, RHOU, RHOE, P, U, T 
    REAL(WP), INTENT(IN)    :: GAMMA
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A31
    INTEGER(IP) :: I
    
    DO I = 1, SIZE
        A31(I) = (GAMMA - 1._WP)*U(I)*U(I)*U(I) - GAMMA*U(I)*RHOE(I)/RHO(I)
    END DO
    
    END SUBROUTINE COMPUTE_A31
    
    SUBROUTINE COMPUTE_A32(SIZE, GAMMA, RHO, RHOU, RHOE, P, U, T, A32)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(1:SIZE), INTENT(IN)  :: RHO, RHOU, RHOE, P, U, T  
    REAL(WP), INTENT(IN)    :: GAMMA
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A32
    INTEGER(IP) :: I
    DO I = 1, SIZE
        A32(I) = GAMMA*RHOE(I)/RHO(I) - 1.5_WP*(GAMMA - 1._WP)*U(I)*U(I)
    END DO
    
    END SUBROUTINE COMPUTE_A32 
    
    SUBROUTINE COMPUTE_A33(SIZE, GAMMA, RHO, RHOU, RHOE, P, U, T, A33)
    IMPLICIT NONE
    INTEGER(IP), INTENT(IN) :: SIZE
    REAL(WP), DIMENSION(1:SIZE), INTENT(IN)  :: RHO, RHOU, RHOE, P, U, T  
    REAL(WP), INTENT(IN)    :: GAMMA
    REAL(WP), DIMENSION(1:SIZE), INTENT(OUT)    :: A33
    INTEGER(IP) :: I
    
    DO I = 1, SIZE
        A33(I) = GAMMA * U(I)
    END DO
    
    
    END SUBROUTINE COMPUTE_A33    
END MODULE MODULE_DFDU    