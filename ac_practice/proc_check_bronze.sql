-- Amahoro MIS Core: table usage check
-- Read-only. Returns, for each of the 294 Core tables: row count, first and last created date,
-- last update, and soft-deleted rows (tables with deleted_at only).
-- Purpose: confirm which tables and features are in use, and size the extracts.
-- Run off-peak, ideally on a replica or backup copy: COUNT(*) scans each table.
-- Generated from Amahoro-Core-Schema.md (13 Nov 2026).

SELECT 'Fellowship recruitment' AS domain, 'external_assessment_link_groups' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `external_assessment_link_groups`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'external_assessment_links' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `external_assessment_links`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'external_assessment_rubrics' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `external_assessment_rubrics`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_application_form_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_application_form_metas`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_application_form_section_fields' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_application_form_section_fields`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_application_form_sections' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_application_form_sections`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_application_forms' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellowship_application_forms`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_application_internal_assessments' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_application_internal_assessments`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_application_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellowship_application_metas`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_application_tokens' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_application_tokens`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_applications' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellowship_applications`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_assessment_marks' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_assessment_marks`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_assessment_stage_summaries' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_assessment_stage_summaries`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_assessments' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_assessments`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_nomination_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellowship_nomination_metas`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_nominations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellowship_nominations`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'fellowship_verifications' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_verifications`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'internal_assessment_rubrics' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `internal_assessment_rubrics`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'peer_assessment_rubrics' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `peer_assessment_rubrics`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'pipeline_external_assessors' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `pipeline_external_assessors`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'pipelines' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `pipelines`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'rubrics' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `rubrics`
UNION ALL
SELECT 'Fellowship recruitment' AS domain, 'stages' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `stages`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'checkin_preferences' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `checkin_preferences`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_attributes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellow_attributes`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_engagements' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_engagements`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_manyattas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_manyattas`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_mentor_checkins' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_mentor_checkins`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_mentor_pairs' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellow_mentor_pairs`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_mentor_reviews' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellow_mentor_reviews`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_metas`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_surveys' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellow_surveys`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_terminations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_terminations`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_venture_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_venture_metas`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellow_ventures' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_ventures`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellows' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellows`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellowship_checkins' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_checkins`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellowship_cohorts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellowship_cohorts`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellowship_curriculums' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_curriculums`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellowship_newsletters' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_newsletters`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellowship_resources' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_resources`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellowship_session_attendances' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_session_attendances`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'fellowship_sessions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellowship_sessions`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'manyattas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `manyattas`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'mentor_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `mentor_metas`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'mentors' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `mentors`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'newsletter_categories' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `newsletter_categories`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'peer_review_rubrics' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `peer_review_rubrics`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'peer_reviews' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `peer_reviews`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'resource_categories' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `resource_categories`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'venture_tags' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `venture_tags`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'wall_comments' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `wall_comments`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'wall_meta' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `wall_meta`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'wall_posts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `wall_posts`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'wall_posts_meta' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `wall_posts_meta`
UNION ALL
SELECT 'Fellowship delivery' AS domain, 'walls' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `walls`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_budget_categories' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_budget_categories`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_budgets' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_budgets`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_comments' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `funding_application_comments`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_documents' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_documents`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_expected_reports' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_expected_reports`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_files' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `funding_application_files`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_impact_categories' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_impact_categories`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_impact_metrics' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_impact_metrics`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_impact_types' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_impact_types`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_impacts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_impacts`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_metas`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_milestones' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_milestones`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_financial_document_actions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_financial_document_actions`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_financial_documents' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_financial_documents`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_financials' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_financials`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_impact_actions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_impact_actions`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_impacts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_impacts`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_media' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_media`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_milestone_actions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_milestone_actions`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_milestones' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_milestones`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_narrative_actions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_narrative_actions`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_report_narratives' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_report_narratives`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_reports' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_reports`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_application_tranches' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_application_tranches`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_applications' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_applications`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_call_fellows' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_call_fellows`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_calls' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_calls`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_documentation_tranche_milestones' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_documentation_tranche_milestones`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_documentation_tranches' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_documentation_tranches`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_documentations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_documentations`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_report_narrative_types' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_report_narrative_types`
UNION ALL
SELECT 'Fellowship Fund' AS domain, 'funding_rounds' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `funding_rounds`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'companies' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `companies`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'company_employers' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `company_employers`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'company_meta' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `company_meta`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'company_viability_evaluation_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `company_viability_evaluation_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'company_viability_evaluations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `company_viability_evaluations`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'contact_meta' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `contact_meta`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'contacts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `contacts`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_blocker_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_blocker_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_blockers' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_blockers`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_engagement_logs' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `deal_engagement_logs`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_engagement_milestone_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_engagement_milestone_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_engagement_milestones' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_engagement_milestones`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_engagement_schedule_targets' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `deal_engagement_schedule_targets`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_engagement_schedules' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_engagement_schedules`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_engagements' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_engagements`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_mou_pipeline_stages' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_mou_pipeline_stages`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_mou_pipelines' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_mou_pipelines`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_mou_records' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `deal_mou_records`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_pipeline_stages' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_pipeline_stages`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_pipelines' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deal_pipelines`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deal_stage_trackings' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `deal_stage_trackings`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'deals' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `deals`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'employer_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `employer_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'employer_verification_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `employer_verification_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'employer_verifications' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `employer_verifications`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'employers' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `employers`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'engagement_types' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `engagement_types`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_document_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `investment_document_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_documents' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `investment_documents`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_impacts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `investment_impacts`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_in_kind_document_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `investment_in_kind_document_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_in_kind_documents' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `investment_in_kind_documents`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_in_kind_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `investment_in_kind_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_in_kind_receipt_records' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `investment_in_kind_receipt_records`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_in_kinds' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `investment_in_kinds`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `investment_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investment_receipt_records' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `investment_receipt_records`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'investments' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `investments`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'meeting_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `meeting_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'meeting_ratings' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `meeting_ratings`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'meetings' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `meetings`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'placement_filling_support_disaggregations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `placement_filling_support_disaggregations`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'placement_filling_supports' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `placement_filling_supports`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'placement_fillings' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `placement_fillings`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'placement_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `placement_metas`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'placement_notification_blasts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `placement_notification_blasts`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'placement_sources' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `placement_sources`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'placement_view_counts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `placement_view_counts`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'placements' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `placements`
UNION ALL
SELECT 'PSP (companies, deals, placements)' AS domain, 'psp_meeting_ratings' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `psp_meeting_ratings`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'collaboration_areas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `collaboration_areas`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'partner_document_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `partner_document_metas`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'partner_documents' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `partner_documents`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'partner_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `partner_metas`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'partner_onboarding_links' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `partner_onboarding_links`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'partners' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `partners`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'partnerships_in_practice_recipient_statuses' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `partnerships_in_practice_recipient_statuses`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'partnerships_in_practice_recipients' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `partnerships_in_practice_recipients`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'partnerships_in_practices' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `partnerships_in_practices`
UNION ALL
SELECT 'CSU (partners)' AS domain, 'student_funding_partners' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `student_funding_partners`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'backgrounds' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `backgrounds`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'job_listing_attributes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `job_listing_attributes`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'job_listing_sources' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `job_listing_sources`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'job_listings' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `job_listings`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'opt_ins' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `opt_ins`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'professions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `professions`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `talent`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_backgrounds' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_backgrounds`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_external_backgrounds' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_external_backgrounds`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_external_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_external_metas`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_link_groups' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_link_groups`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_link_recipients' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_link_recipients`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_links' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_links`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_meta' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `talent_meta`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_placement_blasts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_placement_blasts`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_placement_nomination_interview_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `talent_placement_nomination_interview_metas`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_placement_nomination_interviews' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `talent_placement_nomination_interviews`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_placement_nominations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `talent_placement_nominations`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_placement_otps' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_placement_otps`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_placement_stages' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `talent_placement_stages`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_self_management_links' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `talent_self_management_links`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_sources' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `talent_sources`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'talent_views' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `talent_views`
UNION ALL
SELECT 'Skills Hub (talent, jobs)' AS domain, 'user_opt_ins' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `user_opt_ins`
UNION ALL
SELECT 'Events' AS domain, 'adhoc_events' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `adhoc_events`
UNION ALL
SELECT 'Events' AS domain, 'contact_event_email_logs' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `contact_event_email_logs`
UNION ALL
SELECT 'Events' AS domain, 'contact_event_invitations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `contact_event_invitations`
UNION ALL
SELECT 'Events' AS domain, 'contact_events' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `contact_events`
UNION ALL
SELECT 'Events' AS domain, 'event_access_codes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_access_codes`
UNION ALL
SELECT 'Events' AS domain, 'event_activities' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `event_activities`
UNION ALL
SELECT 'Events' AS domain, 'event_contact_import_batches' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_contact_import_batches`
UNION ALL
SELECT 'Events' AS domain, 'event_downloads' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_downloads`
UNION ALL
SELECT 'Events' AS domain, 'event_invitation_templates' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_invitation_templates`
UNION ALL
SELECT 'Events' AS domain, 'event_meta' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `event_meta`
UNION ALL
SELECT 'Events' AS domain, 'event_page_views' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_page_views`
UNION ALL
SELECT 'Events' AS domain, 'event_preference_questions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_preference_questions`
UNION ALL
SELECT 'Events' AS domain, 'event_qna_questions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_qna_questions`
UNION ALL
SELECT 'Events' AS domain, 'event_qna_votes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_qna_votes`
UNION ALL
SELECT 'Events' AS domain, 'event_qnas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `event_qnas`
UNION ALL
SELECT 'Events' AS domain, 'event_reflection_responses' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_reflection_responses`
UNION ALL
SELECT 'Events' AS domain, 'event_reflection_walls' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `event_reflection_walls`
UNION ALL
SELECT 'Events' AS domain, 'event_registration_desks' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_registration_desks`
UNION ALL
SELECT 'Events' AS domain, 'event_session_attendances' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_session_attendances`
UNION ALL
SELECT 'Events' AS domain, 'event_sessions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_sessions`
UNION ALL
SELECT 'Events' AS domain, 'event_types' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `event_types`
UNION ALL
SELECT 'Events' AS domain, 'event_word_wall_submissions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `event_word_wall_submissions`
UNION ALL
SELECT 'Events' AS domain, 'event_word_walls' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `event_word_walls`
UNION ALL
SELECT 'Events' AS domain, 'events' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `events`
UNION ALL
SELECT 'Events' AS domain, 'exhibitions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `exhibitions`
UNION ALL
SELECT 'Events' AS domain, 'side_events' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `side_events`
UNION ALL
SELECT 'Events' AS domain, 'speakers' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `speakers`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_block_options' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_block_options`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_blocks' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_blocks`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_media' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_media`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_outcome_combinations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_outcome_combinations`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_outcome_rule_options' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_outcome_rule_options`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_outcome_rules' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_outcome_rules`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_outcomes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_outcomes`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_run_participant_responses' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_run_participant_responses`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_run_participants' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_run_participants`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experience_runs' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `experience_runs`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'experiences' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `experiences`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'survey_form_fields' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `survey_form_fields`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'survey_form_questions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `survey_form_questions`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'survey_form_sections' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `survey_form_sections`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'survey_form_submission_data' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `survey_form_submission_data`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'survey_link_groups' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `survey_link_groups`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'survey_link_recipients' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `survey_link_recipients`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'survey_links' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `survey_links`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'surveys' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `surveys`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'upload_request_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `upload_request_metas`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'upload_request_submissions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `upload_request_submissions`
UNION ALL
SELECT 'Surveys & data collection' AS domain, 'upload_requests' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `upload_requests`
UNION ALL
SELECT 'Communications & content' AS domain, 'communications' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `communications`
UNION ALL
SELECT 'Communications & content' AS domain, 'emojis' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `emojis`
UNION ALL
SELECT 'Communications & content' AS domain, 'messages' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `messages`
UNION ALL
SELECT 'Communications & content' AS domain, 'notifications' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `notifications`
UNION ALL
SELECT 'Communications & content' AS domain, 'periodical_edition_sents' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `periodical_edition_sents`
UNION ALL
SELECT 'Communications & content' AS domain, 'periodical_editions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `periodical_editions`
UNION ALL
SELECT 'Communications & content' AS domain, 'periodical_subscribers' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `periodical_subscribers`
UNION ALL
SELECT 'Communications & content' AS domain, 'report_categories' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `report_categories`
UNION ALL
SELECT 'Communications & content' AS domain, 'report_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `report_metas`
UNION ALL
SELECT 'Communications & content' AS domain, 'reports' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `reports`
UNION ALL
SELECT 'Communications & content' AS domain, 'video_categories' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `video_categories`
UNION ALL
SELECT 'Communications & content' AS domain, 'video_target_users' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `video_target_users`
UNION ALL
SELECT 'Communications & content' AS domain, 'video_views' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `video_views`
UNION ALL
SELECT 'Communications & content' AS domain, 'videos' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `videos`
UNION ALL
SELECT 'Communications & content' AS domain, 'whatsapp_messages' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `whatsapp_messages`
UNION ALL
SELECT 'Communications & content' AS domain, 'whatsapp_templates' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `whatsapp_templates`
UNION ALL
SELECT 'Communications & content' AS domain, 'whatsapp_threads' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `whatsapp_threads`
UNION ALL
SELECT 'Reference data' AS domain, 'city' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `city`
UNION ALL
SELECT 'Reference data' AS domain, 'countries' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `countries`
UNION ALL
SELECT 'Reference data' AS domain, 'county' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `county`
UNION ALL
SELECT 'Reference data' AS domain, 'currencies' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `currencies`
UNION ALL
SELECT 'Reference data' AS domain, 'daily_forex_trackings' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `daily_forex_trackings`
UNION ALL
SELECT 'Reference data' AS domain, 'daily_forexes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `daily_forexes`
UNION ALL
SELECT 'Reference data' AS domain, 'designations' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `designations`
UNION ALL
SELECT 'Reference data' AS domain, 'financial_years' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `financial_years`
UNION ALL
SELECT 'Reference data' AS domain, 'generals' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `generals`
UNION ALL
SELECT 'Reference data' AS domain, 'hierarchies' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `hierarchies`
UNION ALL
SELECT 'Reference data' AS domain, 'impact_categories' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `impact_categories`
UNION ALL
SELECT 'Reference data' AS domain, 'industries' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `industries`
UNION ALL
SELECT 'Reference data' AS domain, 'sectors' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `sectors`
UNION ALL
SELECT 'Reference data' AS domain, 'sub_county' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `sub_county`
UNION ALL
SELECT 'Reference data' AS domain, 'suburbs' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `suburbs`
UNION ALL
SELECT 'Reference data' AS domain, 'timezones' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `timezones`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'activity_log' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `activity_log`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'dynamic_form_section_fields' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `dynamic_form_section_fields`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'dynamic_form_sections' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `dynamic_form_sections`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'dynamic_forms' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `dynamic_forms`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'entities' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `entities`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'entity_access_link_records' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `entity_access_link_records`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'entity_access_links' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `entity_access_links`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'entity_attribute_groups' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `entity_attribute_groups`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'entity_attributes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `entity_attributes`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'entity_filter_templates' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `entity_filter_templates`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'entity_note_tags' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `entity_note_tags`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'entity_notes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `entity_notes`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'fake_data' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fake_data`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'fake_data_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fake_data_metas`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'imports' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `imports`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'modules' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `modules`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'password_setup_tokens' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `password_setup_tokens`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'permissions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `permissions`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'roles' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `roles`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'select_tables' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `select_tables`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'sub_systems' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `sub_systems`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'system_notifications' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `system_notifications`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'terms_of_services' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `terms_of_services`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'user_category_pivots' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `user_category_pivots`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'user_terms_of_services' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `user_terms_of_services`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'user_types' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `user_types`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'users' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `users`
UNION ALL
SELECT 'Platform & metadata' AS domain, 'verification_codes' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `verification_codes`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'amahoro_source_accounts' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `amahoro_source_accounts`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'fellow_bank_metas' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_bank_metas`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'fellow_banks' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_banks`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'fellow_fund_managers' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `fellow_fund_managers`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'fellow_ledger_supports' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_ledger_supports`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'fellow_ledgers' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `fellow_ledgers`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'monthly_stipend_fellows' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `monthly_stipend_fellows`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'monthly_stipend_schedules' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `monthly_stipend_schedules`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'round_offs' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, NULL AS soft_deleted_rows FROM `round_offs`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'salary_calculators' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `salary_calculators`
UNION ALL
SELECT 'Finance-linked (in Core)' AS domain, 'subscriptions' AS table_name, COUNT(*) AS row_count, MIN(`created_at`) AS first_created, MAX(`created_at`) AS last_created, MAX(`updated_at`) AS last_updated, SUM(`deleted_at` IS NOT NULL) AS soft_deleted_rows FROM `subscriptions`
ORDER BY row_count DESC;