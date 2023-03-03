SELECT
       LMT_CL_CD
      ,(SELECT CD_VAL_NM FROM TB_CM_CD WHERE CM_CD = 'LMT_CL_CD' AND CD_VAL = LMT_CL_CD) LMT_CL_CD_CM
      ,STD_AMT
      ,AVL_STA_DT
      ,AVL_END_DT
      ,LS_ORT_EMP_NO
      ,TO_CHAR(LS_ORT_DTL_DTM, 'YYYYMMDD') AS LS_ORT_DTL_DTM
FROM ( SELECT *
        FROM TB_LMT_STD_MGMT
        WHERE LMT_CL_CD = '1010'
        ORDER BY LS_ORT_DTL_DTM DESC)
        WHERE ROWNUM <= 1
UNION ALL
SELECT
       LMT_CL_CD
      ,(SELECT CD_VAL_NM FROM TB_CM_CD WHERE CM_CD = 'LMT_CL_CD' AND CD_VAL = LMT_CL_CD) LMT_CL_CD_CM
      ,STD_AMT
      ,AVL_STA_DT
      ,AVL_END_DT
      ,LS_ORT_EMP_NO
      ,TO_CHAR(LS_ORT_DTL_DTM, 'YYYYMMDD') AS LS_ORT_DTL_DTM
FROM ( SELECT *
        FROM TB_LMT_STD_MGMT
        WHERE LMT_CL_CD = '1020'
        ORDER BY LS_ORT_DTL_DTM DESC)
        WHERE ROWNUM <= 1
UNION ALL
SELECT
       LMT_CL_CD
      ,(SELECT CD_VAL_NM FROM TB_CM_CD WHERE CM_CD = 'LMT_CL_CD' AND CD_VAL = LMT_CL_CD) LMT_CL_CD_CM
      ,STD_AMT
      ,AVL_STA_DT
      ,AVL_END_DT
      ,LS_ORT_EMP_NO
      ,TO_CHAR(LS_ORT_DTL_DTM, 'YYYYMMDD') AS LS_ORT_DTL_DTM
FROM ( SELECT *
        FROM TB_LMT_STD_MGMT
        WHERE LMT_CL_CD = '1030'
        ORDER BY LS_ORT_DTL_DTM DESC)
        WHERE ROWNUM <= 1
