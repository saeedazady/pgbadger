SELECT
    definition0_.id AS id1_44_0_,
    constantly2_.id AS id1_43_1_,
    groupaccou3_.id AS id1_70_2_,
    definition0_.created_by AS created_2_44_0_,
    definition0_.created_on AS created_3_44_0_,
    definition0_.deactivated AS deactiva4_44_0_,
    definition0_.disabled AS disabled5_44_0_,
    definition0_.is_deleted AS is_delet6_44_0_,
    definition0_.updated_by AS updated_7_44_0_,
    definition0_.updated_on AS updated_8_44_0_,
    definition0_.background_url AS backgrou9_44_0_,
    definition0_.brand AS brand10_44_0_,
    definition0_.contract_collateral_type AS contrac11_44_0_,
    definition0_.contract_group_id AS contrac12_44_0_,
    definition0_.contract_group_type AS contrac13_44_0_,
    definition0_.contract_info AS contrac14_44_0_,
    definition0_.contract_plan_type AS contrac15_44_0_,
    definition0_.cooperation_priority AS coopera16_44_0_,
    definition0_.cooperation_start_date AS coopera17_44_0_,
    definition0_.description AS descrip18_44_0_,
    definition0_.detailed_account_code AS detaile19_44_0_,
    definition0_.document_id AS documen20_44_0_,
    definition0_.end_date AS end_dat21_44_0_,
    definition0_.gradient_angle AS gradien22_44_0_,
    definition0_.gradient_end AS gradien23_44_0_,
    definition0_.gradient_start AS gradien24_44_0_,
    definition0_.group_account_id AS group_a25_44_0_,
    definition0_.iban AS iban26_44_0_,
    definition0_.icon AS icon27_44_0_,
    definition0_.init_date AS init_da28_44_0_,
    definition0_.keyword AS keyword29_44_0_,
    definition0_.legacy_number AS legacy_30_44_0_,
    definition0_.level AS level31_44_0_,
    definition0_.main_tag_id AS main_ta32_44_0_,
    definition0_.number AS number33_44_0_,
    definition0_.org_logo_url AS org_log34_44_0_,
    definition0_.payer_id AS payer_i35_44_0_,
    definition0_.plan_type AS plan_ty36_44_0_,
    definition0_.prefix_ref_number AS prefix_37_44_0_,
    definition0_.profile_id AS profile38_44_0_,
    definition0_.repayment_type AS repayme39_44_0_,
    definition0_.show_info AS show_in40_44_0_,
    definition0_.sort_order AS sort_or41_44_0_,
    definition0_.start_date AS start_d42_44_0_,
    definition0_.sub_title AS sub_tit43_44_0_,
    definition0_.text_color AS text_co44_44_0_,
    definition0_.title AS title45_44_0_,
    definition0_.type AS type46_44_0_,
    definition0_.type_logo_url AS type_lo47_44_0_,
    definition0_.urgent_score AS urgent_48_44_0_,
    definition0_.validated_national_code AS validat49_44_0_,
    constantly2_.created_by AS created_2_43_1_,
    constantly2_.created_on AS created_3_43_1_,
    constantly2_.deactivated AS deactiva4_43_1_,
    constantly2_.disabled AS disabled5_43_1_,
    constantly2_.is_deleted AS is_delet6_43_1_,
    constantly2_.updated_by AS updated_7_43_1_,
    constantly2_.updated_on AS updated_8_43_1_,
    constantly2_.credit_round_id AS credit_r9_43_1_,
    constantly2_.definition_id AS definit10_43_1_,
    constantly2_.document_id AS documen11_43_1_,
    constantly2_.pipeline_id AS pipelin12_43_1_,
    constantly2_.start_date AS start_d13_43_1_,
    constantly2_.definition_id AS definit10_43_0__,
    constantly2_.id AS id1_43_0__,
    groupaccou3_.created_by AS created_2_70_2_,
    groupaccou3_.created_on AS created_3_70_2_,
    groupaccou3_.deactivated AS deactiva4_70_2_,
    groupaccou3_.disabled AS disabled5_70_2_,
    groupaccou3_.is_deleted AS is_delet6_70_2_,
    groupaccou3_.updated_by AS updated_7_70_2_,
    groupaccou3_.updated_on AS updated_8_70_2_,
    groupaccou3_.account_resource AS account_9_70_2_,
    groupaccou3_.account_type AS account10_70_2_,
    groupaccou3_.group_code AS group_c11_70_2_,
    groupaccou3_.key AS key12_70_2_,
    groupaccou3_.title AS title13_70_2_
FROM contract_definition definition0_
LEFT OUTER JOIN contract_constantly constantly1_
    ON constantly1_.definition_id = definition0_.id
LEFT OUTER JOIN contract_constantly constantly2_
    ON definition0_.id = constantly2_.definition_id
    AND constantly2_.id = (
        SELECT MAX(ps.id)
        FROM contract_constantly ps
        WHERE constantly2_.definition_id = ps.definition_id
            AND ps.is_deleted = false
            AND ps.disabled = false
            AND ps.deactivated = false
    )
LEFT OUTER JOIN group_account groupaccou3_
    ON definition0_.group_account_id = groupaccou3_.id
WHERE definition0_.id = '1222'
    AND definition0_.is_deleted = false;
