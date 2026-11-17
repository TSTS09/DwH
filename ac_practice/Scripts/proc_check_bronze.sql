-- Amahoro MIS: baseline extraction, column-explicit SELECTs
-- 222 tables, 2478 columns. Withheld columns are not selected.
-- Run all statements against the same frozen sandbox snapshot. Read-only.

-- external_assessment_links (Fellowship recruitment, tier 0); withheld: access_code
SELECT `link_id`, `uuid`, `stage_id`, `rubric_id`, `assessor`, `send_date`, `expires_on`, `status`, `created_at`, `updated_at` FROM `external_assessment_links`;

-- fellowship_application_internal_assessments (Fellowship recruitment, tier 0)
SELECT `id`, `fellowship_application_id`, `internal_assessment_rubric_id`, `scoring_elements`, `final_score`, `reviewer_id`, `created_at`, `updated_at` FROM `fellowship_application_internal_assessments`;

-- fellowship_verifications (Fellowship recruitment, tier 0); withheld: code
SELECT `id`, `email`, `expires_at`, `verified`, `created_at`, `updated_at` FROM `fellowship_verifications`;

-- internal_assessment_rubrics (Fellowship recruitment, tier 0)
SELECT `id`, `cohort_id`, `scoring_elements`, `total_marks`, `created_at`, `updated_at` FROM `internal_assessment_rubrics`;

-- peer_assessment_rubrics (Fellowship recruitment, tier 0)
SELECT `id`, `fellow_id`, `rubric_id`, `reviewer_id`, `scoring_elements`, `total_marks`, `created_at`, `updated_at` FROM `peer_assessment_rubrics`;

-- fellow_attributes (Fellowship delivery, tier 0)
SELECT `id`, `fellowship_attribute_name`, `fellowship_attribute_description`, `fellowship_attribute_type`, `fellowship_attribute_validation_rules`, `created_at`, `updated_at` FROM `fellow_attributes`;

-- fellowship_curriculums (Fellowship delivery, tier 0)
SELECT `id`, `curriculum_name`, `start_date`, `end_date`, `curriculum_description`, `cohort_id`, `created_at`, `updated_at` FROM `fellowship_curriculums`;

-- manyattas (Fellowship delivery, tier 0)
SELECT `id`, `manyatta_name`, `manyatta_description`, `cohort_id`, `created_at`, `updated_at`, `deleted_at` FROM `manyattas`;

-- resource_categories (Fellowship delivery, tier 0)
SELECT `resource_category_id`, `resource_category_name`, `resource_category_description`, `created_at`, `updated_at` FROM `resource_categories`;

-- venture_tags (Fellowship delivery, tier 0)
SELECT `id`, `name`, `description`, `status`, `created_at`, `updated_at` FROM `venture_tags`;

-- funding_application_budget_categories (Fellowship Fund, tier 0)
SELECT `id`, `funding_calls`, `index`, `name`, `description`, `file_config`, `status`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_budget_categories`;

-- funding_application_comments (Fellowship Fund, tier 0)
SELECT `id`, `comment`, `funding_application_id`, `poster_id`, `is_private`, `created_at`, `updated_at` FROM `funding_application_comments`;

-- funding_application_files (Fellowship Fund, tier 0)
SELECT `id`, `funding_application_id`, `file_name`, `file_type`, `file_size`, `upload_category`, `file_description`, `file_path`, `comments`, `uploader_id`, `created_at`, `updated_at` FROM `funding_application_files`;

-- funding_application_impact_categories (Fellowship Fund, tier 0)
SELECT `id`, `name`, `description`, `status`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_impact_categories`;

-- funding_application_impact_metrics (Fellowship Fund, tier 0)
SELECT `id`, `name`, `suffix`, `prefix`, `status`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_impact_metrics`;

-- funding_report_narrative_types (Fellowship Fund, tier 0)
SELECT `id`, `title`, `description`, `field_type`, `status`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `funding_report_narrative_types`;

-- deal_engagement_logs (PSP (companies, deals, placements), tier 0)
SELECT `id`, `deal_engagement_id`, `changes`, `action`, `updated_by`, `created_at`, `updated_at` FROM `deal_engagement_logs`;

-- investment_impacts (PSP (companies, deals, placements), tier 0)
SELECT `id`, `created_at`, `updated_at` FROM `investment_impacts`;

-- placement_sources (PSP (companies, deals, placements), tier 0); withheld: auth_params
SELECT `id`, `name`, `description`, `website`, `type`, `url`, `image`, `source_id_key`, `key_mappings`, `extras`, `is_active`, `created_at`, `updated_at`, `deleted_at` FROM `placement_sources`;

-- psp_meeting_ratings (PSP (companies, deals, placements), tier 0)
SELECT `id`, `name`, `status`, `created_at`, `updated_at` FROM `psp_meeting_ratings`;

-- collaboration_areas (CSU (partners), tier 0)
SELECT `collaboration_area_id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `collaboration_areas`;

-- partnerships_in_practice_recipients (CSU (partners), tier 0)
SELECT `id`, `name`, `phone_number`, `email`, `type`, `is_active`, `created_at`, `updated_at`, `deleted_at` FROM `partnerships_in_practice_recipients`;

-- partnerships_in_practices (CSU (partners), tier 0)
SELECT `id`, `edition`, `theme`, `whatsapp_summary`, `paragraph_1`, `paragraph_2`, `paragraph_3`, `file`, `image`, `status`, `send_time`, `is_sent`, `created_at`, `updated_at`, `deleted_at` FROM `partnerships_in_practices`;

-- student_funding_partners (CSU (partners), tier 0)
SELECT `id`, `name`, `description`, `extras`, `is_active`, `created_at`, `updated_at`, `deleted_at` FROM `student_funding_partners`;

-- backgrounds (Skills Hub (talent, jobs), tier 0)
SELECT `id`, `name`, `status`, `extras`, `created_at`, `updated_at` FROM `backgrounds`;

-- job_listing_sources (Skills Hub (talent, jobs), tier 0)
SELECT `job_listing_source_id`, `job_listing_source_name`, `job_listing_source_description`, `job_listing_source_type`, `lookup_id`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `job_listing_sources`;

-- job_listings (Skills Hub (talent, jobs), tier 0)
SELECT `job_listing_id`, `job_listing_title`, `job_listing_description`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `job_listings`;

-- professions (Skills Hub (talent, jobs), tier 0)
SELECT `id`, `name`, `is_active`, `status`, `extras`, `created_at`, `updated_at` FROM `professions`;

-- talent_sources (Skills Hub (talent, jobs), tier 0)
SELECT `id`, `source_name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `talent_sources`;

-- event_activities (Events, tier 0)
SELECT `event_activity_id`, `event_name`, `event_description`, `event_organizer`, `status`, `event_location`, `start_date`, `end_date`, `event_targets`, `event_tags`, `event_type`, `calendar_id`, `module_id`, `created_at`, `updated_at`, `deleted_at` FROM `event_activities`;

-- event_types (Events, tier 0)
SELECT `event_type_id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `event_types`;

-- city (Reference data, tier 0)
SELECT `id`, `state_id`, `country_id`, `name`, `latitude`, `longitude`, `created_at`, `updated_at` FROM `city`;

-- countries (Reference data, tier 0)
SELECT `country_id`, `name`, `iso_code`, `status`, `latitude`, `longitude`, `area_code`, `created_at`, `updated_at`, `deleted_at` FROM `countries`;

-- currencies (Reference data, tier 0)
SELECT `currency_id`, `currency_name`, `currency_prefix`, `currency_symbol`, `iso_code`, `default_currency`, `exchange_rate`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `currencies`;

-- daily_forexes (Reference data, tier 0)
SELECT `id`, `base_currency`, `date`, `rates`, `overrides`, `created_at`, `updated_at` FROM `daily_forexes`;

-- designations (Reference data, tier 0)
SELECT `id`, `name`, `status`, `extras`, `created_at`, `updated_at` FROM `designations`;

-- financial_years (Reference data, tier 0)
SELECT `id`, `name`, `start_date`, `end_date`, `is_current`, `created_at`, `updated_at`, `deleted_at`, `is_editable` FROM `financial_years`;

-- hierarchies (Reference data, tier 0)
SELECT `id`, `hierarchy_id`, `type`, `name`, `created_at`, `updated_at` FROM `hierarchies`;

-- impact_categories (Reference data, tier 0)
SELECT `id`, `label`, `value`, `created_at`, `updated_at` FROM `impact_categories`;

-- sectors (Reference data, tier 0)
SELECT `id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `sectors`;

-- timezones (Reference data, tier 0)
SELECT `id`, `name`, `offset`, `is_default`, `created_at`, `updated_at` FROM `timezones`;

-- activity_log (Platform & metadata, tier 0)
SELECT `id`, `log_name`, `description`, `subject_type`, `subject_id`, `event`, `attribute_changes`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at` FROM `activity_log`;

-- sub_systems (Platform & metadata, tier 0)
SELECT `id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at` FROM `sub_systems`;

-- user_types (Platform & metadata, tier 0)
SELECT `id`, `name`, `slug`, `description`, `is_active`, `show_ui`, `fields`, `created_at`, `updated_at`, `deleted_at` FROM `user_types`;

-- users (Platform & metadata, tier 0); withheld: password, remember_token, firebase_token, google_key, apple_key
SELECT `id`, `uuid`, `associated_accounts`, `name`, `email`, `phone_number`, `email_verified_at`, `status`, `extras`, `ai_voice_preference`, `ai_allow_speech`, `user_type`, `actor_id`, `pip_synchronized`, `created_at`, `updated_at`, `deleted_at`, `allowed_offices`, `currently_scoped_offices`, `user_category`, `hr_role`, `finance_role`, `change_password`, `is_audit_only` FROM `users`;

-- fellow_surveys (Fellowship delivery, tier 1)
SELECT `id`, `survey_name`, `survey_description`, `start_date`, `end_date`, `status`, `created_by`, `created_at`, `updated_at` FROM `fellow_surveys`;

-- fellow_ventures (Fellowship delivery, tier 1); withheld: combined_columns_protected
SELECT `id`, `fellow_id`, `updated_by`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `ai_data_access` FROM `fellow_ventures`;

-- fellowship_cohorts (Fellowship delivery, tier 1)
SELECT `id`, `cohort_name`, `cohort_year`, `monthly_stipend_amount`, `initial_grant_in_kind`, `default_currency_id`, `start_date`, `stipend_start_date`, `stipend_end_date`, `end_date`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `fellowship_cohorts`;

-- fellowship_resources (Fellowship delivery, tier 1)
SELECT `fellowship_resource_id`, `resource_category_id`, `fellowship_resource_name`, `fellowship_resource_description`, `fellowship_resource_url`, `accessible_to`, `cohorts`, `size`, `created_at`, `updated_at` FROM `fellowship_resources`;

-- mentors (Fellowship delivery, tier 1); withheld: combined_columns_protected
SELECT `id`, `is_user`, `updated_by`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `ai_data_access` FROM `mentors`;

-- funding_application_impact_types (Fellowship Fund, tier 1)
SELECT `id`, `category_id`, `metric_id`, `grouping_id`, `bounded_total`, `is_default`, `parent_id`, `description`, `type`, `placement_filling_column`, `placement_attribute_name_option`, `status`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_impact_types`;

-- funding_calls (Fellowship Fund, tier 1)
SELECT `id`, `currency_id`, `created_by`, `updated_by`, `name`, `code`, `description`, `grant_limit`, `loan_grant_limit`, `loan_refundable_limit`, `start_date`, `end_date`, `is_active`, `created_at`, `updated_at`, `deleted_at` FROM `funding_calls`;

-- companies (PSP (companies, deals, placements), tier 1); withheld: combined_columns_protected
SELECT `id`, `extras`, `status`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `is_active`, `updated_by`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `companies`;

-- deal_mou_pipelines (PSP (companies, deals, placements), tier 1)
SELECT `id`, `name`, `is_active`, `created_by`, `updated_by`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `deal_mou_pipelines`;

-- deal_pipelines (PSP (companies, deals, placements), tier 1)
SELECT `id`, `name`, `is_active`, `created_by`, `updated_by`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `deal_pipelines`;

-- engagement_types (PSP (companies, deals, placements), tier 1)
SELECT `id`, `name`, `title`, `description`, `created_by`, `updated_by`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `engagement_types`;

-- investment_documents (PSP (companies, deals, placements), tier 1); withheld: combined_columns_protected
SELECT `id`, `created_by`, `updated_by`, `status`, `extras`, `is_active`, `combined_columns`, `raw_fields`, `allowed_to_update`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `investment_documents`;

-- investment_in_kind_documents (PSP (companies, deals, placements), tier 1); withheld: combined_columns_protected
SELECT `id`, `created_by`, `updated_by`, `status`, `extras`, `is_active`, `combined_columns`, `raw_fields`, `allowed_to_update`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `investment_in_kind_documents`;

-- partner_documents (CSU (partners), tier 1)
SELECT `id`, `created_by`, `updated_by`, `status`, `extras`, `is_active`, `created_at`, `updated_at`, `deleted_at` FROM `partner_documents`;

-- partnerships_in_practice_recipient_statuses (CSU (partners), tier 1)
SELECT `id`, `partnerships_in_practice_id`, `partnerships_in_practice_recipient_id`, `created_at`, `updated_at`, `deleted_at` FROM `partnerships_in_practice_recipient_statuses`;

-- job_listing_attributes (Skills Hub (talent, jobs), tier 1)
SELECT `job_listing_attribute_id`, `job_listing_id`, `job_listing_attribute_name`, `job_listing_attribute_description`, `job_listing_attribute_type`, `validation_rules`, `created_at`, `updated_at`, `deleted_at` FROM `job_listing_attributes`;

-- opt_ins (Skills Hub (talent, jobs), tier 1)
SELECT `id`, `user_type_id`, `created_by`, `updated_by`, `title`, `description`, `status`, `extras`, `version`, `created_at`, `updated_at`, `deleted_at` FROM `opt_ins`;

-- talent_placement_stages (Skills Hub (talent, jobs), tier 1)
SELECT `id`, `index`, `name`, `description`, `is_active`, `should_notify`, `notification_message`, `notification_channel`, `created_by`, `updated_by`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `talent_placement_stages`;

-- adhoc_events (Events, tier 1)
SELECT `id`, `event_name`, `event_description`, `event_organizer`, `status`, `event_location`, `event_type`, `start_date`, `end_date`, `event_targets`, `event_tags`, `updated_by`, `deleted_at`, `created_at`, `updated_at` FROM `adhoc_events`;

-- events (Events, tier 1); withheld: combined_columns_protected
SELECT `id`, `uuid`, `extras`, `custom_css`, `status`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `is_active`, `is_accessible_to_app`, `updated_by`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access`, `is_travel_adhoc` FROM `events`;

-- surveys (Surveys & data collection, tier 1)
SELECT `survey_id`, `title`, `target`, `cohort_id`, `survey_description`, `status`, `events`, `allow_multiple_responses`, `allow_anonymous_responses`, `consent`, `submission_deadline`, `created_at`, `updated_at`, `created_by` FROM `surveys`;

-- upload_requests (Surveys & data collection, tier 1); withheld: combined_columns_protected
SELECT `id`, `created_by`, `updated_by`, `combined_columns`, `raw_fields`, `allowed_to_update`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `upload_requests`;

-- report_categories (Communications & content, tier 1)
SELECT `id`, `name`, `updated_by`, `created_by`, `created_at`, `updated_at` FROM `report_categories`;

-- reports (Communications & content, tier 1); withheld: combined_columns_protected
SELECT `id`, `extras`, `status`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `is_active`, `updated_by`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `reports`;

-- county (Reference data, tier 1)
SELECT `id`, `country_id`, `name`, `latitude`, `longitude`, `created_at`, `updated_at` FROM `county`;

-- daily_forex_trackings (Reference data, tier 1)
SELECT `id`, `daily_forex_id`, `base_currency`, `date`, `rates`, `created_at`, `updated_at` FROM `daily_forex_trackings`;

-- industries (Reference data, tier 1)
SELECT `id`, `sector_id`, `name`, `status`, `extras`, `created_at`, `updated_at` FROM `industries`;

-- suburbs (Reference data, tier 1)
SELECT `id`, `name`, `city_id`, `code`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at` FROM `suburbs`;

-- dynamic_forms (Platform & metadata, tier 1)
SELECT `id`, `uuid`, `entity_id`, `sub_system_id`, `user_type_id`, `name`, `tagline`, `slug`, `title`, `form_type`, `is_active`, `status`, `extras`, `created_at`, `updated_at` FROM `dynamic_forms`;

-- entities (Platform & metadata, tier 1)
SELECT `id`, `module_id`, `sub_system_id`, `name`, `base_table_name`, `base_table_pkey`, `meta_table_name`, `meta_table_pkey`, `meta_table_fkey`, `note_status`, `is_active`, `is_deletable`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `entities`;

-- modules (Platform & metadata, tier 1)
SELECT `module_id`, `sub_system_id`, `module_name`, `module_description`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `modules`;

-- monthly_stipend_schedules (Finance-linked (in Core), tier 1)
SELECT `id`, `created_by`, `finance_reviewer_id`, `stipend_month`, `status`, `notes`, `document`, `created_at`, `updated_at`, `deleted_at` FROM `monthly_stipend_schedules`;

-- external_assessment_rubrics (Fellowship recruitment, tier 2)
SELECT `id`, `cohort_id`, `scoring_elements`, `total_marks`, `created_at`, `updated_at` FROM `external_assessment_rubrics`;

-- fellowship_application_forms (Fellowship recruitment, tier 2)
SELECT `id`, `cohort_id`, `updated_by`, `form_name`, `banner_title`, `banner_image_url`, `uuid`, `send_date`, `expires_on`, `reminder_date`, `status`, `extras`, `sign_off_title`, `sign_off_message`, `created_at`, `updated_at`, `deleted_at` FROM `fellowship_application_forms`;

-- pipelines (Fellowship recruitment, tier 2)
SELECT `pipeline_id`, `pipeline_name`, `pipeline_description`, `cohort_id`, `funding_round_id`, `funding_call_id`, `pipeline_type`, `module_id`, `maxno_evaluations`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `pipelines`;

-- fellowship_checkins (Fellowship delivery, tier 2)
SELECT `id`, `checkin_name`, `checkin_date`, `curriculum_id`, `cohort_id`, `created_at`, `updated_at`, `created_by`, `updated_by` FROM `fellowship_checkins`;

-- fellowship_sessions (Fellowship delivery, tier 2); withheld: meeting_link
SELECT `id`, `session_name`, `session_overview`, `session_date`, `curriculum_id`, `cohort_id`, `created_at`, `updated_at`, `created_by`, `updated_by` FROM `fellowship_sessions`;

-- peer_review_rubrics (Fellowship delivery, tier 2)
SELECT `id`, `peer_review_rubric_name`, `scoring_elements`, `total_marks`, `cohort_id`, `created_at`, `updated_at`, `deleted_at` FROM `peer_review_rubrics`;

-- funding_rounds (Fellowship Fund, tier 2)
SELECT `funding_round_id`, `cohort_id`, `funding_round_name`, `funding_round_description`, `funding_round_start_date`, `funding_round_close_date`, `funding_round_limit`, `funding_grant_limit`, `funding_loan_limit`, `funding_round_limit_currency_id`, `funding_round_status`, `created_by`, `created_at`, `updated_at`, `deleted_at` FROM `funding_rounds`;

-- company_viability_evaluations (PSP (companies, deals, placements), tier 2); withheld: combined_columns_protected
SELECT `id`, `company_id`, `created_by`, `updated_by`, `combined_columns`, `raw_fields`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `company_viability_evaluations`;

-- contacts (PSP (companies, deals, placements), tier 2); withheld: combined_columns_protected, api_key, firebase_token
SELECT `id`, `company_id`, `created_by`, `updated_by`, `status`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `extras`, `pip_synchronized`, `subscription_synchronized`, `is_phone_no_valid`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `contacts`;

-- deal_mou_pipeline_stages (PSP (companies, deals, placements), tier 2)
SELECT `id`, `deal_mou_pipeline_id`, `index`, `name`, `description`, `is_active`, `should_notify`, `notification_message`, `notification_channel`, `created_by`, `updated_by`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `deal_mou_pipeline_stages`;

-- deal_pipeline_stages (PSP (companies, deals, placements), tier 2)
SELECT `id`, `deal_pipeline_id`, `index`, `name`, `description`, `should_notify`, `notification_message`, `notification_channel`, `is_active`, `created_by`, `updated_by`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `deal_pipeline_stages`;

-- event_preference_questions (Events, tier 2)
SELECT `id`, `event_id`, `group_id`, `prompt`, `type`, `audience`, `choices`, `allow_other`, `locked`, `hidden`, `archived`, `position`, `first_answered_at`, `created_at`, `updated_at`, `is_required`, `descriptor`, `display_style` FROM `event_preference_questions`;

-- event_qnas (Events, tier 2)
SELECT `id`, `uuid`, `event_id`, `title`, `description`, `status`, `allow_anonymous`, `max_question_length`, `votes_per_user`, `show_vote_count`, `created_at`, `updated_at`, `deleted_at`, `refresh_interval_seconds` FROM `event_qnas`;

-- event_sessions (Events, tier 2)
SELECT `id`, `uuid`, `event_id`, `name`, `start_time`, `end_time`, `status`, `extras`, `created_at`, `updated_at` FROM `event_sessions`;

-- exhibitions (Events, tier 2)
SELECT `id`, `uuid`, `event_id`, `name`, `image`, `exhibition_date`, `description`, `status`, `created_at`, `updated_at` FROM `exhibitions`;

-- side_events (Events, tier 2)
SELECT `id`, `uuid`, `event_id`, `name`, `image`, `event_date`, `description`, `status`, `created_at`, `updated_at` FROM `side_events`;

-- speakers (Events, tier 2)
SELECT `id`, `uuid`, `event_id`, `name`, `avatar`, `title`, `bio`, `status`, `created_at`, `updated_at` FROM `speakers`;

-- survey_form_fields (Surveys & data collection, tier 2)
SELECT `id`, `survey_id`, `field_label`, `field_type`, `field_options`, `is_required`, `order`, `created_at`, `updated_at` FROM `survey_form_fields`;

-- survey_form_sections (Surveys & data collection, tier 2)
SELECT `id`, `title`, `survey_id`, `section_index`, `created_at`, `updated_at` FROM `survey_form_sections`;

-- survey_links (Surveys & data collection, tier 2); withheld: access_code, link_id_code
SELECT `link_id`, `uuid`, `survey_link_type`, `qr_code_path`, `creator_type`, `creator_id`, `recepient_email`, `survey_id`, `title`, `description`, `expires_on`, `send_date`, `status`, `allow_anonymous_responses`, `max_responses_per_link`, `created_at`, `updated_at` FROM `survey_links`;

-- generals (Reference data, tier 2)
SELECT `id`, `type`, `name`, `value`, `multi_value`, `description`, `meta`, `is_active`, `display_order`, `module_id`, `created_at`, `updated_at`, `deleted_at` FROM `generals`;

-- sub_county (Reference data, tier 2)
SELECT `id`, `county_id`, `name`, `latitude`, `longitude`, `created_at`, `updated_at` FROM `sub_county`;

-- dynamic_form_sections (Platform & metadata, tier 2)
SELECT `id`, `form_id`, `name`, `index`, `is_active`, `status`, `extras`, `created_at`, `updated_at` FROM `dynamic_form_sections`;

-- entity_attribute_groups (Platform & metadata, tier 2)
SELECT `id`, `entity_id`, `name`, `index`, `is_active`, `created_at`, `updated_at` FROM `entity_attribute_groups`;

-- select_tables (Platform & metadata, tier 2)
SELECT `id`, `entity_id`, `sub_system_id`, `table_name`, `id_column`, `value_column`, `model_namespace`, `is_dynamic`, `is_lookup`, `is_auditable`, `created_at`, `updated_at`, `is_visible_on_employee_external`, `is_visible_on_consultant_external`, `is_visible_on_vendor_external`, `hr_self_registration_index` FROM `select_tables`;

-- terms_of_services (Platform & metadata, tier 2)
SELECT `id`, `user_type_id`, `created_by`, `updated_by`, `type`, `sign_up_target`, `event_id`, `title`, `body`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `terms_of_services`;

-- fellowship_application_form_metas (Fellowship recruitment, tier 3)
SELECT `id`, `fellowship_application_form_id`, `meta_key`, `meta_value`, `created_at`, `updated_at` FROM `fellowship_application_form_metas`;

-- fellowship_application_form_sections (Fellowship recruitment, tier 3)
SELECT `id`, `form_id`, `name`, `index`, `status`, `extras`, `created_at`, `updated_at` FROM `fellowship_application_form_sections`;

-- pipeline_external_assessors (Fellowship recruitment, tier 3)
SELECT `id`, `pipeline_id`, `name`, `email`, `created_by`, `updated_by`, `extras`, `is_active`, `created_at`, `updated_at`, `deleted_at` FROM `pipeline_external_assessors`;

-- rubrics (Fellowship recruitment, tier 3)
SELECT `id`, `cohort_id`, `pipeline_id`, `title`, `description`, `rubricType`, `threshold`, `threshold_male`, `threshold_female`, `criteria`, `score`, `created_at`, `updated_at` FROM `rubrics`;

-- meetings (PSP (companies, deals, placements), tier 3); withheld: combined_columns_protected
SELECT `id`, `contact_id`, `rating`, `created_by`, `updated_by`, `combined_columns`, `raw_fields`, `allowed_to_update`, `status`, `onboarding_type`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `meetings`;

-- event_qna_questions (Events, tier 3)
SELECT `id`, `qna_id`, `text`, `author`, `anonymous`, `votes`, `contact_id`, `user_id`, `created_at`, `updated_at`, `resolved_at`, `resolved_by` FROM `event_qna_questions`;

-- survey_form_questions (Surveys & data collection, tier 3)
SELECT `survey_form_question_id`, `question_id`, `survey_id`, `section_id`, `question_index`, `question_title`, `question_description`, `question_type`, `is_conditional_child`, `question_options_list`, `grid`, `extras`, `data_source`, `likert_rating`, `created_at`, `updated_at` FROM `survey_form_questions`;

-- survey_link_groups (Surveys & data collection, tier 3)
SELECT `id`, `survey_link_id`, `user_id`, `status`, `viewed_at`, `viewed_by`, `completion_status`, `notes`, `created_at`, `updated_at` FROM `survey_link_groups`;

-- survey_link_recipients (Surveys & data collection, tier 3)
SELECT `id`, `survey_id`, `survey_link_id`, `user_id`, `email`, `response_status`, `first_accessed_at`, `completed_at`, `created_at`, `updated_at` FROM `survey_link_recipients`;

-- entity_attributes (Platform & metadata, tier 3)
SELECT `attribute_id`, `entity_id`, `group_id`, `attribute_index`, `is_usable_to_ai`, `name`, `description`, `base_table_column`, `label`, `placeholder`, `required`, `type`, `icon`, `options`, `date_preset`, `derived_options`, `lookup_table`, `lookup_table_filters`, `dependent_id`, `dependent_column`, `dependent_column_default_id`, `unique_reference_table`, `import_table`, `is_lookup_key`, `track_updates`, `hierarchy_type`, `allowed_file_types`, `min`, `max`, `minLength`, `maxLength`, `pattern`, `laravel_validation`, `suggest_similar`, `is_active`, `is_unique`, `is_multiple`, `is_visible_on_builder`, `is_visible_on_create`, `is_visible_on_edit`, `is_visible_on_self_registration`, `is_visible_for_internal_users`, `is_visible_for_external_users`, `is_visible_on_datatable`, `is_visible_on_info`, `is_visible_on_filters`, `is_visible_on_advanced_search`, `is_a_default_field`, `is_editable`, `is_private`, `is_special_flag`, `is_linked_to_users_table`, `colspan`, `group_name`, `json_scoping`, `multi_file_config`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `is_editable_unauthenticated_user`, `is_editable_external_user`, `is_hidden_on_null`, `is_linked_to_conditional` FROM `entity_attributes`;

-- user_terms_of_services (Platform & metadata, tier 3); withheld: user_agent
SELECT `id`, `unique_key`, `user_id`, `terms_of_service_id`, `ip_info`, `created_at`, `updated_at`, `deleted_at` FROM `user_terms_of_services`;

-- fellowship_application_form_section_fields (Fellowship recruitment, tier 4)
SELECT `id`, `section_id`, `attribute_id`, `index`, `colspan`, `visible_attributes`, `status`, `extras`, `created_at`, `updated_at` FROM `fellowship_application_form_section_fields`;

-- fellowship_nominations (Fellowship recruitment, tier 4); withheld: combined_columns_protected
SELECT `id`, `cohort_id`, `updated_by`, `consent_id`, `dynamic_form_id`, `is_draft`, `is_active`, `email_sent`, `status`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `extras`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `ai_data_access` FROM `fellowship_nominations`;

-- stages (Fellowship recruitment, tier 4)
SELECT `stage_id`, `stage_name`, `stage_description`, `pipeline_id`, `index`, `requires_upload`, `special_rules`, `rubric_id`, `should_notify`, `share_eternal_link`, `notification_message`, `notification_channel`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `stages`;

-- fellow_venture_metas (Fellowship delivery, tier 4)
SELECT `id`, `venture_id`, `attribute_id`, `attribute_value`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `fellow_venture_metas`;

-- mentor_metas (Fellowship delivery, tier 4)
SELECT `id`, `mentor_id`, `attribute_id`, `attribute_value`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `mentor_metas`;

-- company_meta (PSP (companies, deals, placements), tier 4)
SELECT `id`, `company_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `company_meta`;

-- company_viability_evaluation_metas (PSP (companies, deals, placements), tier 4)
SELECT `id`, `company_viability_evaluation_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `company_viability_evaluation_metas`;

-- contact_meta (PSP (companies, deals, placements), tier 4)
SELECT `id`, `contact_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `contact_meta`;

-- employers (PSP (companies, deals, placements), tier 4); withheld: combined_columns_protected
SELECT `id`, `created_by`, `updated_by`, `consent_id`, `is_active`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `employers`;

-- investment_document_metas (PSP (companies, deals, placements), tier 4)
SELECT `id`, `investment_document_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `investment_document_metas`;

-- investment_in_kind_document_metas (PSP (companies, deals, placements), tier 4)
SELECT `id`, `investment_in_kind_document_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `investment_in_kind_document_metas`;

-- meeting_metas (PSP (companies, deals, placements), tier 4)
SELECT `id`, `meeting_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `meeting_metas`;

-- meeting_ratings (PSP (companies, deals, placements), tier 4)
SELECT `id`, `user_id`, `meeting_id`, `rating_id`, `rating`, `created_at`, `updated_at` FROM `meeting_ratings`;

-- partner_document_metas (CSU (partners), tier 4)
SELECT `id`, `partner_document_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at` FROM `partner_document_metas`;

-- partners (CSU (partners), tier 4); withheld: combined_columns_protected
SELECT `id`, `created_by`, `updated_by`, `consent_id`, `status`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `extras`, `is_active`, `is_placement_partner`, `is_whatsapp_verified`, `is_email_verified`, `subscription_synchronized`, `pip_synchronized`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `partners`;

-- contact_events (Events, tier 4); withheld: preferences_link_nonce
SELECT `id`, `uuid`, `contact_id`, `event_id`, `consent_id`, `import_id`, `type`, `expressed_interest`, `has_attended`, `days_attended`, `status`, `invitation_emails_sent`, `last_invitation_email_sent_at`, `extras`, `created_at`, `updated_at` FROM `contact_events`;

-- event_meta (Events, tier 4)
SELECT `event_meta_id`, `event_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `event_meta`;

-- survey_form_submission_data (Surveys & data collection, tier 4)
SELECT `id`, `survey_form_question_id`, `response`, `is_complete`, `response_batch_id`, `created_at`, `updated_at`, `survey_id`, `participant_id` FROM `survey_form_submission_data`;

-- upload_request_metas (Surveys & data collection, tier 4)
SELECT `id`, `upload_request_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `upload_request_metas`;

-- report_metas (Communications & content, tier 4)
SELECT `id`, `report_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `report_metas`;

-- dynamic_form_section_fields (Platform & metadata, tier 4)
SELECT `id`, `section_id`, `attribute_id`, `index`, `is_active`, `colspan`, `visible_attributes`, `status`, `extras`, `created_at`, `updated_at` FROM `dynamic_form_section_fields`;

-- fellowship_applications (Fellowship recruitment, tier 5); withheld: access_code, combined_columns_protected
SELECT `fellowship_application_id`, `application_form_id`, `pipeline_id`, `pipeline_stage_id`, `updated_by`, `consent_id`, `form_url`, `stage_hex_code`, `is_a_fellow`, `is_draft`, `is_verified`, `is_duplicate`, `emails_sent`, `status`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `average_assessment_info`, `has_assessments`, `form_section_status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `ai_data_access` FROM `fellowship_applications`;

-- fellowship_nomination_metas (Fellowship recruitment, tier 5)
SELECT `id`, `fellowship_nomination_id`, `attribute_id`, `attribute_value`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `fellowship_nomination_metas`;

-- company_employers (PSP (companies, deals, placements), tier 5)
SELECT `id`, `company_id`, `employer_id`, `is_active`, `status`, `extras`, `created_by`, `updated_by`, `created_at`, `updated_at` FROM `company_employers`;

-- deals (PSP (companies, deals, placements), tier 5); withheld: combined_columns_protected
SELECT `id`, `deal_pipeline_stage_id`, `company_id`, `partner_id`, `name`, `deal_type`, `created_by`, `updated_by`, `is_active`, `big_bet_conversion`, `combined_columns`, `raw_fields`, `allowed_to_update`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `deal_owner`, `deal_location_id`, `ai_data_access` FROM `deals`;

-- employer_metas (PSP (companies, deals, placements), tier 5)
SELECT `id`, `employer_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `employer_metas`;

-- employer_verifications (PSP (companies, deals, placements), tier 5); withheld: combined_columns_protected
SELECT `id`, `employer_id`, `verified_by`, `created_by`, `updated_by`, `verified_at`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `status`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `employer_verifications`;

-- partner_metas (CSU (partners), tier 5)
SELECT `id`, `partner_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `partner_metas`;

-- partner_onboarding_links (CSU (partners), tier 5); withheld: access_code
SELECT `id`, `uuid`, `partner_id`, `created_by`, `link_type`, `expiry_date`, `is_active`, `created_at`, `updated_at`, `deleted_at` FROM `partner_onboarding_links`;

-- talent (Skills Hub (talent, jobs), tier 5); withheld: combined_columns_protected
SELECT `id`, `client_serving_organization`, `created_by`, `updated_by`, `consent_id`, `status`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `profile_updated`, `background_updated`, `is_whatsapp_verified`, `is_email_verified`, `subscription_synchronized`, `is_synchronized`, `rating`, `extras`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `talent`;

-- contact_event_invitations (Events, tier 5)
SELECT `id`, `contact_event_id`, `event_id`, `contact_id`, `counter`, `sent_to_email`, `subject`, `sent_by_user_id`, `sent_at`, `created_at`, `updated_at` FROM `contact_event_invitations`;

-- event_session_attendances (Events, tier 5)
SELECT `id`, `event_session_id`, `contact_event_id`, `status`, `extras`, `created_at`, `updated_at` FROM `event_session_attendances`;

-- external_assessment_link_groups (Fellowship recruitment, tier 6)
SELECT `record_id`, `assessment_link_id`, `applicant_id`, `status`, `created_at`, `updated_at` FROM `external_assessment_link_groups`;

-- fellowship_application_metas (Fellowship recruitment, tier 6)
SELECT `id`, `fellowship_application_id`, `attribute_id`, `attribute_value`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `fellowship_application_metas`;

-- fellowship_assessment_stage_summaries (Fellowship recruitment, tier 6)
SELECT `id`, `application_id`, `stage_id`, `pipeline_type`, `no_of_assessments`, `avg_applicant_score`, `avg_expected_score`, `avg_threshold`, `grade`, `threshold_achieved`, `status`, `extras`, `created_at`, `updated_at` FROM `fellowship_assessment_stage_summaries`;

-- fellows (Fellowship delivery, tier 6); withheld: combined_columns_protected
SELECT `id`, `application_id`, `cohort_id`, `updated_by`, `consent_id`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `is_whatsapp_verified`, `is_email_verified`, `subscription_synchronized`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `ai_data_access` FROM `fellows`;

-- deal_blockers (PSP (companies, deals, placements), tier 6); withheld: combined_columns_protected
SELECT `id`, `deal_id`, `created_by`, `updated_by`, `combined_columns`, `raw_fields`, `status`, `comment`, `resolved_by`, `resolved_at`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `deal_blockers`;

-- deal_engagements (PSP (companies, deals, placements), tier 6)
SELECT `id`, `deal_id`, `engagement_type_id`, `type`, `status`, `created_by`, `updated_by`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `deal_engagements`;

-- deal_metas (PSP (companies, deals, placements), tier 6)
SELECT `id`, `deal_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `deal_metas`;

-- deal_mou_records (PSP (companies, deals, placements), tier 6)
SELECT `id`, `deal_id`, `mou_type`, `deal_mou_pipeline_stage_id`, `effective_date`, `expiry_date`, `created_by`, `updated_by`, `is_active`, `status`, `extras`, `created_at`, `updated_at` FROM `deal_mou_records`;

-- employer_verification_metas (PSP (companies, deals, placements), tier 6)
SELECT `id`, `employer_verification_id`, `attribute_id`, `attribute_value`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `employer_verification_metas`;

-- talent_backgrounds (Skills Hub (talent, jobs), tier 6)
SELECT `id`, `talent_id`, `title`, `description`, `start_date`, `end_date`, `background_type`, `employment_type`, `organization`, `achievement`, `achievement_level`, `created_at`, `updated_at` FROM `talent_backgrounds`;

-- talent_external_backgrounds (Skills Hub (talent, jobs), tier 6)
SELECT `id`, `talent_id`, `title`, `description`, `start_date`, `end_date`, `background_type`, `employment_type`, `organization`, `achievement`, `achievement_level`, `synchronized`, `created_at`, `updated_at` FROM `talent_external_backgrounds`;

-- talent_external_metas (Skills Hub (talent, jobs), tier 6)
SELECT `id`, `talent_id`, `attribute_id`, `attribute_value`, `synchronized`, `created_at`, `updated_at` FROM `talent_external_metas`;

-- talent_meta (Skills Hub (talent, jobs), tier 6)
SELECT `id`, `talent_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `talent_meta`;

-- user_opt_ins (Skills Hub (talent, jobs), tier 6); withheld: user_agent
SELECT `id`, `talent_id`, `user_id`, `opt_in_id`, `opt_in_version`, `ip_info`, `has_consented`, `consent_date`, `created_at`, `updated_at`, `deleted_at` FROM `user_opt_ins`;

-- fellowship_assessments (Fellowship recruitment, tier 7)
SELECT `id`, `application_id`, `stage_id`, `rubric_id`, `title`, `description`, `rubricType`, `threshold`, `criteria`, `reviewer`, `score`, `applicant_score`, `status`, `extras`, `group_member_id`, `created_at`, `updated_at` FROM `fellowship_assessments`;

-- fellow_engagements (Fellowship delivery, tier 7)
SELECT `id`, `fellow_id`, `title`, `description`, `event_datetime`, `onboarding_type`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `fellow_engagements`;

-- fellow_manyattas (Fellowship delivery, tier 7)
SELECT `id`, `fellow_id`, `manyatta_id`, `created_at`, `updated_at`, `deleted_at` FROM `fellow_manyattas`;

-- fellow_mentor_checkins (Fellowship delivery, tier 7)
SELECT `id`, `check_in_id`, `mentor_id`, `account_manager_id`, `call_date`, `actual_duration`, `reflection_text`, `EIR_name`, `type`, `action_items`, `upload_path`, `meeting_transcript`, `next_meeting_date`, `next_meeting_time`, `status`, `extras`, `fellow_id`, `check_in_occurred`, `comments`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at` FROM `fellow_mentor_checkins`;

-- fellow_mentor_pairs (Fellowship delivery, tier 7)
SELECT `id`, `fellow_id`, `mentor_id`, `status`, `created_at`, `updated_at` FROM `fellow_mentor_pairs`;

-- fellow_mentor_reviews (Fellowship delivery, tier 7)
SELECT `id`, `mentor_id`, `fellow_id`, `rating`, `comments`, `rubric_data`, `reviewer`, `created_at`, `updated_at` FROM `fellow_mentor_reviews`;

-- fellow_metas (Fellowship delivery, tier 7)
SELECT `id`, `fellow_id`, `attribute_id`, `attribute_value`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `fellow_metas`;

-- fellow_terminations (Fellowship delivery, tier 7)
SELECT `id`, `fellow_id`, `terminated_by`, `reason`, `notes`, `previous_status`, `attachment`, `termination_date`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by` FROM `fellow_terminations`;

-- fellowship_session_attendances (Fellowship delivery, tier 7)
SELECT `id`, `fellow_id`, `attended`, `session_id`, `is_late`, `is_engaged`, `is_camera_on`, `created_at`, `updated_at` FROM `fellowship_session_attendances`;

-- peer_reviews (Fellowship delivery, tier 7)
SELECT `id`, `peer_review_rubric_id`, `fellow_id`, `reviewer_id`, `review_data`, `total_score`, `created_at`, `updated_at`, `deleted_at` FROM `peer_reviews`;

-- funding_applications (Fellowship Fund, tier 7); withheld: combined_columns_protected
SELECT `id`, `fellow_id`, `funding_round_id`, `funding_call_id`, `pipeline_id`, `stage_id`, `funding_application_currency_id`, `fellow_ledger_id`, `reviewer_id`, `updated_by`, `colour_code`, `stage_colors`, `funding_application_status`, `editable_sections`, `edit_deadline`, `automatic_tranching`, `onboarding_type`, `combined_columns`, `raw_fields`, `allowed_to_update`, `extras`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `ai_data_access` FROM `funding_applications`;

-- funding_call_fellows (Fellowship Fund, tier 7)
SELECT `id`, `funding_call_id`, `fellow_id`, `round`, `special_application`, `assigned_by`, `created_at`, `updated_at`, `deleted_at` FROM `funding_call_fellows`;

-- deal_blocker_metas (PSP (companies, deals, placements), tier 7)
SELECT `id`, `deal_blocker_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `deal_blocker_metas`;

-- deal_engagement_milestones (PSP (companies, deals, placements), tier 7); withheld: combined_columns_protected
SELECT `id`, `deal_engagement_id`, `status`, `order_column`, `created_by`, `updated_by`, `is_active`, `extras`, `combined_columns`, `raw_fields`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `deal_engagement_milestones`;

-- deal_engagement_schedules (PSP (companies, deals, placements), tier 7)
SELECT `id`, `deal_engagement_id`, `name`, `description`, `frequency`, `start_date`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `deal_engagement_schedules`;

-- deal_stage_trackings (PSP (companies, deals, placements), tier 7)
SELECT `id`, `deal_id`, `mou_id`, `current_stage_id`, `status`, `extras`, `created_at`, `updated_at` FROM `deal_stage_trackings`;

-- investment_in_kinds (PSP (companies, deals, placements), tier 7); withheld: combined_columns_protected
SELECT `id`, `deal_engagement_id`, `base_currency_id`, `type`, `source`, `base_investment_amount`, `base_received_amount`, `is_main_recipient`, `status`, `created_by`, `updated_by`, `is_active`, `combined_columns`, `raw_fields`, `allowed_to_update`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `investment_in_kinds`;

-- investments (PSP (companies, deals, placements), tier 7); withheld: combined_columns_protected
SELECT `id`, `deal_engagement_id`, `base_currency_id`, `type`, `source`, `base_investment_amount`, `base_received_amount`, `is_main_recipient`, `status`, `created_by`, `updated_by`, `is_active`, `combined_columns`, `raw_fields`, `allowed_to_update`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `investments`;

-- placements (PSP (companies, deals, placements), tier 7); withheld: combined_columns_protected
SELECT `id`, `uuid`, `deal_engagement_id`, `company_id`, `employer_id`, `venture_id`, `industry_id`, `type`, `year_month`, `attribution_level`, `source`, `openings`, `filled`, `closing_date`, `status`, `created_by`, `updated_by`, `is_active`, `combined_columns`, `raw_fields`, `allowed_to_update`, `source_id`, `external_id`, `details`, `is_tagged`, `tags`, `employer_post_interview_survey_sent`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `placements`;

-- upload_request_submissions (Surveys & data collection, tier 7)
SELECT `id`, `fellow_id`, `upload_request_id`, `url`, `created_at`, `updated_at` FROM `upload_request_submissions`;

-- fellow_fund_managers (Finance-linked (in Core), tier 7)
SELECT `id`, `fellow_id`, `fund_manager_id`, `created_at`, `updated_at` FROM `fellow_fund_managers`;

-- fellow_ledgers (Finance-linked (in Core), tier 7); withheld: source_account, recipient_account
SELECT `fellow_ledger_id`, `fellow_id`, `financial_year_id`, `transaction_type`, `transaction_value`, `transaction_charge`, `total_amount`, `currency_id`, `base_transaction_value`, `base_transaction_charge`, `base_total_amount`, `transaction_category`, `transaction_sub_category`, `stipend_period`, `stipend_type`, `transaction_description`, `transaction_date`, `performed_by`, `created_by`, `created_at`, `updated_at`, `deleted_at` FROM `fellow_ledgers`;

-- monthly_stipend_fellows (Finance-linked (in Core), tier 7)
SELECT `id`, `monthly_stipend_schedule_id`, `fellow_id`, `amount`, `notes`, `document`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `monthly_stipend_fellows`;

-- fellowship_assessment_marks (Fellowship recruitment, tier 8)
SELECT `id`, `fellow_id`, `marks_data`, `marks_total`, `assessment_id`, `cohort_id`, `created_at`, `updated_at` FROM `fellowship_assessment_marks`;

-- funding_application_budgets (Fellowship Fund, tier 8)
SELECT `id`, `funding_application_id`, `budget_category_id`, `item`, `units`, `rate`, `comments`, `tranche_no`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_budgets`;

-- funding_application_documents (Fellowship Fund, tier 8)
SELECT `id`, `funding_application_id`, `title`, `file`, `notes`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_documents`;

-- funding_application_impacts (Fellowship Fund, tier 8)
SELECT `id`, `funding_application_id`, `impact_type_id`, `value`, `type`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_impacts`;

-- funding_application_metas (Fellowship Fund, tier 8)
SELECT `id`, `funding_application_id`, `attribute_id`, `attribute_value`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_metas`;

-- funding_application_milestones (Fellowship Fund, tier 8)
SELECT `id`, `funding_application_id`, `description`, `month_of_achievement`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_milestones`;

-- funding_application_reports (Fellowship Fund, tier 8)
SELECT `id`, `funding_application_id`, `reviewer_id`, `report_month`, `review_month`, `type`, `documentation_mode`, `status`, `submission_date`, `system_submission_date`, `resubmission_date`, `system_resubmission_date`, `review_status`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_reports`;

-- funding_documentations (Fellowship Fund, tier 8)
SELECT `id`, `funding_application_id`, `pitch_deck`, `approved_budget`, `created_at`, `updated_at`, `deleted_at` FROM `funding_documentations`;

-- deal_engagement_milestone_metas (PSP (companies, deals, placements), tier 8)
SELECT `id`, `deal_engagement_milestone_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `deal_engagement_milestone_metas`;

-- deal_engagement_schedule_targets (PSP (companies, deals, placements), tier 8)
SELECT `id`, `schedule_id`, `label`, `value`, `extras`, `created_at`, `updated_at` FROM `deal_engagement_schedule_targets`;

-- investment_in_kind_metas (PSP (companies, deals, placements), tier 8)
SELECT `id`, `investment_in_kind_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `investment_in_kind_metas`;

-- investment_in_kind_receipt_records (PSP (companies, deals, placements), tier 8)
SELECT `id`, `investment_in_kind_id`, `amount`, `base_amount`, `date`, `created_by`, `updated_by`, `created_at`, `updated_at` FROM `investment_in_kind_receipt_records`;

-- investment_metas (PSP (companies, deals, placements), tier 8)
SELECT `id`, `investment_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `investment_metas`;

-- investment_receipt_records (PSP (companies, deals, placements), tier 8)
SELECT `id`, `investment_id`, `amount`, `base_amount`, `date`, `created_by`, `updated_by`, `created_at`, `updated_at` FROM `investment_receipt_records`;

-- placement_metas (PSP (companies, deals, placements), tier 8)
SELECT `id`, `placement_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `placement_metas`;

-- talent_links (Skills Hub (talent, jobs), tier 8); withheld: access_code, link_id_code
SELECT `link_id`, `uuid`, `recruiter_type`, `link_type`, `recruiter_id`, `recruiter_email`, `placement_id`, `title`, `description`, `expires_on`, `send_date`, `status`, `created_at`, `updated_at` FROM `talent_links`;

-- talent_placement_nominations (Skills Hub (talent, jobs), tier 8)
SELECT `id`, `uuid`, `placement_id`, `talent_id`, `stage_id`, `type`, `nominator_id`, `status`, `created_by`, `updated_by`, `acceptor_id`, `acceptor_email`, `rejector_id`, `rejector_email`, `reject_reason`, `match_score`, `is_active`, `extras`, `created_at`, `updated_at`, `deleted_at` FROM `talent_placement_nominations`;

-- fellow_ledger_supports (Finance-linked (in Core), tier 8)
SELECT `id`, `fellow_ledger_id`, `financial_year_id`, `currency_id`, `base_currency_id`, `name`, `notes`, `category`, `amount`, `base_amount`, `attachment`, `date`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `fellow_ledger_supports`;

-- funding_application_expected_reports (Fellowship Fund, tier 9)
SELECT `id`, `fellow_id`, `funding_application_id`, `report_id`, `report_month`, `system_status_color`, `reviewer_status_color`, `comments`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_expected_reports`;

-- funding_application_report_financials (Fellowship Fund, tier 9)
SELECT `id`, `report_id`, `budget_item_id`, `notes`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_financials`;

-- funding_application_report_impacts (Fellowship Fund, tier 9)
SELECT `id`, `report_id`, `impact_id`, `reviewer_id`, `overridden_by`, `value`, `notes`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_impacts`;

-- funding_application_report_media (Fellowship Fund, tier 9)
SELECT `id`, `report_id`, `name`, `file`, `type`, `system_generated`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_media`;

-- funding_application_report_milestones (Fellowship Fund, tier 9)
SELECT `id`, `report_id`, `milestone_id`, `reviewer_id`, `progress`, `comments`, `status`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_milestones`;

-- funding_application_report_narratives (Fellowship Fund, tier 9)
SELECT `id`, `report_id`, `narrative_type_id`, `reviewer_id`, `custom_title`, `content`, `base_currency_content_amount`, `status`, `system_generated`, `created_at`, `updated_at`, `deleted_at`, `currency_code` FROM `funding_application_report_narratives`;

-- funding_application_tranches (Fellowship Fund, tier 9)
SELECT `id`, `funding_application_id`, `fellow_bank_id`, `reviewer_id`, `tranche_no`, `amount`, `received_amount`, `recovered_amount`, `received_currency`, `disbursement_target_months`, `notes`, `status`, `ledger_synced`, `year_month`, `reporting_cleared`, `created_at`, `updated_at`, `deleted_at`, `recovery_target_amount`, `confirmed_recovery_amount`, `recovery_confirmed_at`, `recovery_confirmed_by` FROM `funding_application_tranches`;

-- funding_documentation_tranches (Fellowship Fund, tier 9)
SELECT `id`, `funding_documentation_id`, `name`, `amount`, `notes`, `status`, `reviewed_by`, `review_date`, `review_notes`, `created_at`, `updated_at`, `deleted_at` FROM `funding_documentation_tranches`;

-- placement_fillings (PSP (companies, deals, placements), tier 9)
SELECT `id`, `placement_id`, `deal_engagement_id`, `talent_id`, `fellow_id`, `company_id`, `funding_report_id`, `filled_positions`, `logged_positions`, `primary_attribution`, `secondary_attribution`, `verified_positions`, `validated_jobs_files`, `primary_multiplier`, `secondary_multiplier`, `multiplier_comments`, `multiplier_files`, `multiplied_jobs`, `verified_jobs_comments`, `filled_date`, `category`, `entry_type`, `additional_info`, `type`, `created_by`, `verified_by`, `created_at`, `updated_at`, `deleted_at` FROM `placement_fillings`;

-- talent_link_groups (Skills Hub (talent, jobs), tier 9)
SELECT `id`, `talent_link_id`, `talent_id`, `status`, `viewed_at`, `viewed_by`, `interest_status`, `notes`, `created_at`, `updated_at` FROM `talent_link_groups`;

-- talent_link_recipients (Skills Hub (talent, jobs), tier 9)
SELECT `id`, `talent_link_id`, `user_id`, `email`, `recipient_type`, `status`, `created_at`, `updated_at` FROM `talent_link_recipients`;

-- talent_placement_nomination_interviews (Skills Hub (talent, jobs), tier 9); withheld: combined_columns_protected
SELECT `id`, `nomination_id`, `interview_missed`, `interview_missed_reason`, `interview_missed_reason_valid`, `candidate_post_interview_survey_sent`, `created_by`, `updated_by`, `combined_columns`, `raw_fields`, `allowed_to_update`, `status`, `extras`, `created_at`, `updated_at`, `deleted_at`, `ai_data_access` FROM `talent_placement_nomination_interviews`;

-- funding_application_report_financial_documents (Fellowship Fund, tier 10)
SELECT `id`, `financial_id`, `reviewer_id`, `amount`, `base_currency_amount`, `date`, `file`, `files`, `status`, `finance_review_status`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_financial_documents`;

-- funding_application_report_impact_actions (Fellowship Fund, tier 10)
SELECT `id`, `report_impact_id`, `actioned_by`, `action`, `narrative`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_impact_actions`;

-- funding_application_report_milestone_actions (Fellowship Fund, tier 10)
SELECT `id`, `report_milestone_id`, `actioned_by`, `action`, `narrative`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_milestone_actions`;

-- funding_application_report_narrative_actions (Fellowship Fund, tier 10)
SELECT `id`, `report_narrative_id`, `actioned_by`, `action`, `narrative`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_narrative_actions`;

-- funding_documentation_tranche_milestones (Fellowship Fund, tier 10)
SELECT `id`, `funding_documentation_tranche_id`, `description`, `target_completion_date`, `created_at`, `updated_at`, `deleted_at` FROM `funding_documentation_tranche_milestones`;

-- placement_filling_supports (PSP (companies, deals, placements), tier 10)
SELECT `id`, `placement_filling_id`, `notes`, `input_cost`, `investment_made`, `supporting_document`, `created_at`, `updated_at`, `deleted_at` FROM `placement_filling_supports`;

-- talent_placement_nomination_interview_metas (Skills Hub (talent, jobs), tier 10)
SELECT `id`, `interview_id`, `attribute_id`, `attribute_value`, `created_at`, `updated_at`, `deleted_at` FROM `talent_placement_nomination_interview_metas`;

-- funding_application_report_financial_document_actions (Fellowship Fund, tier 11)
SELECT `id`, `report_financial_document_id`, `actioned_by`, `action`, `narrative`, `approve_reasons`, `reject_reasons`, `created_at`, `updated_at`, `deleted_at` FROM `funding_application_report_financial_document_actions`;

-- placement_filling_support_disaggregations (PSP (companies, deals, placements), tier 11)
SELECT `id`, `placement_filling_support_id`, `attribute_name`, `attribute_value`, `filled_positions`, `logged_positions`, `created_at`, `updated_at`, `deleted_at` FROM `placement_filling_support_disaggregations`;