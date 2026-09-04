--
-- PostgreSQL database dump
--

\restrict ROYVBpxn6WNgxvhAE8HnEw6QOGqStW7Z9AAeshlDISoZswfgXWHEplkvnHlPfgg

-- Dumped from database version 14.23 (Ubuntu 14.23-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.23 (Ubuntu 14.23-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.accounts (
    rec_id integer NOT NULL,
    client_id integer NOT NULL,
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    staff_id integer,
    staff_name character varying(255),
    start_date date,
    end_date date,
    account_id character varying(64),
    icd_10 character varying(255),
    physician_name character varying(255),
    physician_licence character varying(80),
    physician_npi character varying(80),
    time_insert timestamp with time zone DEFAULT now(),
    time_update timestamp with time zone,
    update_by character varying(255)
);


ALTER TABLE public.accounts OWNER TO "www-data";

--
-- Name: TABLE accounts; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.accounts IS 'Client Diagnostic History';


--
-- Name: accounts_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.accounts_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_rec_id_seq OWNER TO "www-data";

--
-- Name: accounts_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.accounts_rec_id_seq OWNED BY public.accounts.rec_id;


--
-- Name: demographics; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.demographics (
    rec_id integer NOT NULL,
    client_id integer NOT NULL,
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    alias text,
    allergy text,
    address character varying(255),
    apartment character varying(255),
    city character varying(255),
    state character varying(80),
    post_code character varying(80),
    phone character varying(80),
    phone_mobile character varying(80),
    phone_other character varying(80),
    sex_birth character varying(80),
    sex_gender character varying(80),
    sex_orientation character varying(80),
    race character varying(80),
    race_detail character varying(80),
    asian_detail character varying(80),
    pacific_detail character varying(80),
    ethnicity character varying(80),
    ethnicity_detail character varying(80),
    place_of_birth character varying(80),
    citizen character varying(80),
    veteran character varying(80),
    language_spoken character varying(80),
    religion character varying(80),
    marital_status character varying(80),
    parental_status character varying(80),
    household character varying(80),
    staff_id integer,
    staff_name character varying(255),
    time_insert timestamp with time zone DEFAULT now(),
    time_update timestamp with time zone,
    update_by character varying(255)
);


ALTER TABLE public.demographics OWNER TO "www-data";

--
-- Name: TABLE demographics; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.demographics IS 'Client Demographic Data';


--
-- Name: demographics_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.demographics_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demographics_rec_id_seq OWNER TO "www-data";

--
-- Name: demographics_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.demographics_rec_id_seq OWNED BY public.demographics.rec_id;


--
-- Name: diagnosis; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.diagnosis (
    rec_id integer NOT NULL,
    client_id integer NOT NULL,
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    staff_id integer,
    staff_name character varying(255),
    start_date date,
    end_date date,
    dsm5 character varying(255),
    icd10 character varying(255),
    notebody text,
    time_insert timestamp with time zone DEFAULT now(),
    time_update timestamp with time zone,
    update_by character varying(255)
);


ALTER TABLE public.diagnosis OWNER TO "www-data";

--
-- Name: diagnosis_dsm5; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.diagnosis_dsm5 (
    rec_id integer NOT NULL,
    dsm5 character varying(255)
);


ALTER TABLE public.diagnosis_dsm5 OWNER TO "www-data";

--
-- Name: TABLE diagnosis_dsm5; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.diagnosis_dsm5 IS 'DSM5 Diagnostic Codes';


--
-- Name: diagnosis_dsm5_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.diagnosis_dsm5_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diagnosis_dsm5_rec_id_seq OWNER TO "www-data";

--
-- Name: diagnosis_dsm5_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.diagnosis_dsm5_rec_id_seq OWNED BY public.diagnosis_dsm5.rec_id;


--
-- Name: diagnosis_icd10; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.diagnosis_icd10 (
    rec_id integer NOT NULL,
    icd10 character varying(255)
);


ALTER TABLE public.diagnosis_icd10 OWNER TO "www-data";

--
-- Name: TABLE diagnosis_icd10; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.diagnosis_icd10 IS 'ICD 10 Diagnostic Codes';


--
-- Name: diagnosis_icd10_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.diagnosis_icd10_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diagnosis_icd10_rec_id_seq OWNER TO "www-data";

--
-- Name: diagnosis_icd10_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.diagnosis_icd10_rec_id_seq OWNED BY public.diagnosis_icd10.rec_id;


--
-- Name: diagnosis_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.diagnosis_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diagnosis_rec_id_seq OWNER TO "www-data";

--
-- Name: diagnosis_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.diagnosis_rec_id_seq OWNED BY public.diagnosis.rec_id;


--
-- Name: email_internal; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.email_internal (
    rec_id integer NOT NULL,
    user_id integer,
    user_name character varying(255),
    fullname character varying(255),
    alert character varying(8),
    incident character varying(8),
    property character varying(8),
    support character varying(8)
);


ALTER TABLE public.email_internal OWNER TO "www-data";

--
-- Name: TABLE email_internal; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.email_internal IS 'Email List for Internal Messaging';


--
-- Name: email_internal_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.email_internal_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_internal_rec_id_seq OWNER TO "www-data";

--
-- Name: email_internal_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.email_internal_rec_id_seq OWNED BY public.email_internal.rec_id;


--
-- Name: email_notification; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.email_notification (
    rec_id integer NOT NULL,
    user_id integer,
    user_name character varying(255),
    user_email character varying(255),
    alert character varying(8),
    incident character varying(8),
    property character varying(8),
    support character varying(8)
);


ALTER TABLE public.email_notification OWNER TO "www-data";

--
-- Name: TABLE email_notification; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.email_notification IS 'Email List for External Messaging';


--
-- Name: email_notification_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.email_notification_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_notification_rec_id_seq OWNER TO "www-data";

--
-- Name: email_notification_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.email_notification_rec_id_seq OWNED BY public.email_notification.rec_id;


--
-- Name: entitlements; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.entitlements (
    rec_id integer NOT NULL,
    client_id integer NOT NULL,
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    social_security character varying(255),
    ssi character varying(80),
    ssd character varying(80),
    medicaid character varying(80),
    managed_care character varying(80),
    medicare character varying(80),
    medicare_id character varying(80),
    snap character varying(80),
    snap_id character varying(80),
    snap_amt character varying(80),
    public_assistance character varying(255),
    public_amount character varying(255),
    wages character varying(80),
    insurance character varying(80),
    insurance_carrier character varying(255),
    insurance_id character varying(80),
    alimony character varying(80),
    pension character varying(80),
    unemployment character varying(80),
    workers_comp character varying(80),
    retirement_income character varying(255),
    child_support character varying(80),
    other_income character varying(80),
    wic character varying(80),
    tanf character varying(80),
    section_8 character varying(80),
    other_non_cash character varying(80),
    va_disability character varying(80),
    va_medical character varying(80),
    staff_id integer,
    staff_name character varying(255),
    time_insert timestamp with time zone DEFAULT now(),
    time_update timestamp with time zone,
    update_by character varying(255)
);


ALTER TABLE public.entitlements OWNER TO "www-data";

--
-- Name: TABLE entitlements; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.entitlements IS 'Client Entitlements';


--
-- Name: entitlements_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.entitlements_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entitlements_rec_id_seq OWNER TO "www-data";

--
-- Name: entitlements_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.entitlements_rec_id_seq OWNED BY public.entitlements.rec_id;


--
-- Name: functional; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.functional (
    rec_id integer NOT NULL,
    client_id integer NOT NULL,
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    staff_id integer,
    staff_name character varying(255),
    start_date date,
    end_date date,
    skill_level character varying(80),
    skill_area character varying(255),
    skill_text text,
    time_in timestamp without time zone,
    time_update timestamp without time zone DEFAULT now(),
    ftype character varying(24)
);


ALTER TABLE public.functional OWNER TO "www-data";

--
-- Name: TABLE functional; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.functional IS 'Client Functional Assessments';


--
-- Name: functional_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.functional_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.functional_rec_id_seq OWNER TO "www-data";

--
-- Name: functional_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.functional_rec_id_seq OWNED BY public.functional.rec_id;


--
-- Name: functional_skills; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.functional_skills (
    rec_id integer,
    medicaid_id integer,
    skill_area text
);


ALTER TABLE public.functional_skills OWNER TO "www-data";

--
-- Name: TABLE functional_skills; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.functional_skills IS 'Validation Data: Functional Assessment Skill Areas';


--
-- Name: inpatient; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.inpatient (
    rec_id integer NOT NULL,
    client_id integer NOT NULL,
    client character varying(255),
    unit_id integer,
    unit_lname character varying(255),
    track_id integer DEFAULT 1,
    staff_id integer,
    staff_name character varying(255),
    start_date date,
    end_date date,
    visit_date date,
    hospital character varying(255),
    address character varying(255),
    hospital_type character varying(80),
    staff_member character varying(255),
    staff_shift character varying(255),
    staff_time character varying(255),
    voluntary character varying(80),
    eob character varying(3),
    state_hospital character varying(3),
    outcome character varying(255),
    comment_text text,
    visit_reason character varying(255),
    admit_date date,
    age character varying(255),
    sex character varying(255),
    diagnosis character varying(255),
    escort_type character varying(255),
    transport_type character varying(255),
    complaint character varying(80),
    time_insert timestamp with time zone DEFAULT now(),
    time_update timestamp with time zone,
    update_by character varying(255),
    audit_trail text
);


ALTER TABLE public.inpatient OWNER TO "www-data";

--
-- Name: TABLE inpatient; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.inpatient IS 'Client Inpatient Records';


--
-- Name: inpatient_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.inpatient_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inpatient_rec_id_seq OWNER TO "www-data";

--
-- Name: inpatient_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.inpatient_rec_id_seq OWNED BY public.inpatient.rec_id;


--
-- Name: keyword; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.keyword (
    rec_id integer NOT NULL,
    keyword character varying(80),
    severity character varying(80)
);


ALTER TABLE public.keyword OWNER TO "www-data";

--
-- Name: keyword_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.keyword_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.keyword_rec_id_seq OWNER TO "www-data";

--
-- Name: keyword_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.keyword_rec_id_seq OWNED BY public.keyword.rec_id;


--
-- Name: login; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.login (
    rec_id integer NOT NULL,
    user_id integer,
    username character varying(250),
    logtime timestamp with time zone DEFAULT now(),
    ip character varying(250)
);


ALTER TABLE public.login OWNER TO "www-data";

--
-- Name: TABLE login; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.login IS 'List of Current Logins';


--
-- Name: login_user_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.login_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.login_user_id_seq OWNER TO "www-data";

--
-- Name: login_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.login_user_id_seq OWNED BY public.login.rec_id;


--
-- Name: maintenance_request; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.maintenance_request (
    rec_id integer NOT NULL,
    unit_id integer,
    unit_lname character varying(80),
    staff_name character varying(80),
    staff_email character varying(80),
    staff_phone character varying(80),
    request_date date,
    requested_by character varying(80),
    request_type character varying(80),
    address character varying(255),
    client_name character varying(80),
    client_phone character varying(80),
    client_permission character varying(80),
    client_available character varying(80),
    request_text text,
    high_risk character varying(80),
    safety_issue character varying(80),
    director_approved character varying(255),
    cost_center character varying(255),
    assigned_to character varying(80),
    request_status character varying(80),
    request_comment text
);


ALTER TABLE public.maintenance_request OWNER TO "www-data";

--
-- Name: TABLE maintenance_request; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.maintenance_request IS 'Maintenance Request';


--
-- Name: maintenance_request_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.maintenance_request_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maintenance_request_rec_id_seq OWNER TO "www-data";

--
-- Name: maintenance_request_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.maintenance_request_rec_id_seq OWNED BY public.maintenance_request.rec_id;


--
-- Name: message; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.message (
    rec_id integer NOT NULL,
    sender character varying(255),
    sender_id integer,
    receiver character varying(255),
    receiver_id integer,
    subject character varying(255),
    body text,
    "timestamp" timestamp without time zone DEFAULT now(),
    read boolean DEFAULT false
);


ALTER TABLE public.message OWNER TO "www-data";

--
-- Name: TABLE message; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.message IS 'My Messages Records';


--
-- Name: message_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.message_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.message_rec_id_seq OWNER TO "www-data";

--
-- Name: message_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.message_rec_id_seq OWNED BY public.message.rec_id;


--
-- Name: mpi; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.mpi (
    client_id integer NOT NULL,
    fname character varying(30),
    lname character varying(30),
    dob date,
    ssn character varying(25),
    medical_record character varying(16),
    mname character varying(30),
    fname_code character varying(24),
    lname_code character varying(24),
    suffix character varying(24),
    ssn_code character varying(24),
    dob_code character varying(24),
    dod date,
    medicaid character varying(8),
    CONSTRAINT valid_ssn CHECK (((ssn)::text ~ '^\d{3}-\d{2}-\d{4}$'::text))
);


ALTER TABLE public.mpi OWNER TO "www-data";

--
-- Name: TABLE mpi; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.mpi IS 'Client - Master Patient Index';


--
-- Name: mpi_client_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.mpi_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mpi_client_id_seq OWNER TO "www-data";

--
-- Name: mpi_client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.mpi_client_id_seq OWNED BY public.mpi.client_id;


--
-- Name: placement; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.placement (
    rec_id integer NOT NULL,
    client_id integer,
    staff_id integer,
    staff_name character varying(255),
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    address character varying(255),
    start_date date,
    end_date date,
    airs character varying(255),
    bip character varying(24),
    hud character varying(16),
    input timestamp without time zone,
    update timestamp without time zone DEFAULT now(),
    update_by character varying(255),
    destination character varying(255)
);


ALTER TABLE public.placement OWNER TO "www-data";

--
-- Name: TABLE placement; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.placement IS 'Client Program Enrollment / Placement Records';


--
-- Name: placement_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.placement_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.placement_rec_id_seq OWNER TO "www-data";

--
-- Name: placement_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.placement_rec_id_seq OWNED BY public.placement.rec_id;


--
-- Name: progress_note; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.progress_note (
    rec_id integer NOT NULL,
    client_id integer,
    chart character varying(80),
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    staff_id integer,
    staff_name character varying(255),
    plan_id integer,
    goal character varying(255),
    notedate date,
    notebody text,
    time_in timestamp without time zone DEFAULT now(),
    medicaid integer,
    acronym character varying(24),
    duration character varying(80) DEFAULT '20 Minutes'::character varying,
    mood_affect character varying(255),
    thought_process character varying(255),
    motor_activity character varying(255),
    behavior character varying(255),
    medical_condition character varying(255),
    substance_use character varying(255),
    esof_name character varying(255),
    esof_date timestamp with time zone,
    esof_super_name character varying(255),
    esof_super_date timestamp with time zone
);


ALTER TABLE public.progress_note OWNER TO "www-data";

--
-- Name: TABLE progress_note; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.progress_note IS 'Client Progress Notes';


--
-- Name: progress_note_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.progress_note_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.progress_note_rec_id_seq OWNER TO "www-data";

--
-- Name: progress_note_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.progress_note_rec_id_seq OWNED BY public.progress_note.rec_id;


--
-- Name: progress_note_view; Type: VIEW; Schema: public; Owner: www-data
--

CREATE VIEW public.progress_note_view AS
 SELECT (((x.fname)::text || ' '::text) || (x.lname)::text) AS client,
    x.medicaid AS medicaid_id,
    y.rec_id,
    y.chart,
    y.unit_lname,
    y.staff_name,
    y.plan_id,
    y.goal,
    y.notedate,
    y.medicaid,
    y.acronym,
    z.account_id,
    z.icd_10,
    z.physician_name,
    z.physician_licence,
    z.physician_npi,
    a.start_date AS admission,
    a.end_date AS discharge,
    i.start_date AS inpt_in,
    i.end_date AS inpt_out
   FROM ((((public.progress_note y
     JOIN public.mpi x ON ((x.client_id = y.client_id)))
     LEFT JOIN public.accounts z ON (((z.client_id = y.client_id) AND (z.rec_id = ( SELECT max(a_1.rec_id) AS max
           FROM public.accounts a_1
          WHERE (a_1.client_id = z.client_id))))))
     LEFT JOIN public.placement a ON (((a.client_id = y.client_id) AND ((y.notedate >= a.start_date) AND (y.notedate <= COALESCE(a.end_date, CURRENT_DATE))))))
     LEFT JOIN public.inpatient i ON (((i.client_id = y.client_id) AND ((y.notedate >= i.start_date) AND (y.notedate <= COALESCE(i.end_date, CURRENT_DATE))))));


ALTER TABLE public.progress_note_view OWNER TO "www-data";

--
-- Name: support_plan; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.support_plan (
    rec_id integer NOT NULL,
    client_id integer,
    chart_id character varying(16),
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    staff_id integer,
    staff_name character varying(255),
    start_date date NOT NULL,
    end_date date NOT NULL,
    caseworker character varying(80),
    backup character varying(80),
    supervisor character varying(80),
    diagnosis character varying(80),
    needs_selfcare character varying(80),
    needs_skills character varying(80),
    needs_support character varying(80),
    needs_adl character varying(80),
    needs_focus character varying(80),
    rights_grievances character varying(80),
    rights_date date,
    goal_one integer DEFAULT 1,
    goal_one_id character varying(80),
    goal_one_header character varying(255),
    goal_one_medicaid integer,
    goal_one_acronym character varying(8),
    goal_one_level character varying(64),
    goal_one_code integer,
    goal_one_status character varying(24),
    goal_one_object text,
    goal_one_service text,
    goal_one_eval text,
    goal_one_date date,
    goal_two integer DEFAULT 2,
    goal_two_id character varying(80),
    goal_two_header character varying(255),
    goal_two_medicaid integer,
    goal_two_acronym character varying(8),
    goal_two_level character varying(64),
    goal_two_code integer,
    goal_two_status character varying(24),
    goal_two_object text,
    goal_two_service text,
    goal_two_eval text,
    goal_two_date date,
    goal_three integer DEFAULT 3,
    goal_three_id character varying(80),
    goal_three_header character varying(255),
    goal_three_medicaid integer,
    goal_three_acronym character varying(8),
    goal_three_level character varying(64),
    goal_three_code integer,
    goal_three_status character varying(24),
    goal_three_object text,
    goal_three_service text,
    goal_three_eval text,
    goal_three_date date,
    goal_four integer DEFAULT 4,
    goal_four_id character varying(80),
    goal_four_header character varying(255),
    goal_four_medicaid integer,
    goal_four_acronym character varying(8),
    goal_four_level character varying(64),
    goal_four_code integer,
    goal_four_status character varying(24),
    goal_four_object text,
    goal_four_service text,
    goal_four_eval text,
    goal_four_date date,
    esof_id integer,
    esof_date date,
    esof_name character varying(255),
    esof_note character varying(255),
    audit_trail text,
    time_insert timestamp with time zone,
    time_update timestamp with time zone DEFAULT now(),
    up_date date,
    up_date_by character varying(255),
    client_name character varying(255)
);


ALTER TABLE public.support_plan OWNER TO "www-data";

--
-- Name: TABLE support_plan; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.support_plan IS 'Client Treatment Plans';


--
-- Name: support_plan_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.support_plan_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.support_plan_rec_id_seq OWNER TO "www-data";

--
-- Name: support_plan_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.support_plan_rec_id_seq OWNED BY public.support_plan.rec_id;


--
-- Name: tech_support; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.tech_support (
    rec_id integer NOT NULL,
    unit_id integer,
    unit_lname character varying(80),
    staff_name character varying(80),
    staff_email character varying(80),
    staff_phone character varying(80),
    request_date date,
    request_type character varying(80),
    request_text text,
    client_name character varying(80),
    assigned_to character varying(80),
    request_status character varying(24),
    request_comment text
);


ALTER TABLE public.tech_support OWNER TO "www-data";

--
-- Name: TABLE tech_support; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.tech_support IS 'Tech Support Request';


--
-- Name: tech_support_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.tech_support_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tech_support_rec_id_seq OWNER TO "www-data";

--
-- Name: tech_support_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.tech_support_rec_id_seq OWNED BY public.tech_support.rec_id;


--
-- Name: track; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.track (
    track_id integer NOT NULL,
    track_name character varying(80)
);


ALTER TABLE public.track OWNER TO "www-data";

--
-- Name: track_track_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.track_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.track_track_id_seq OWNER TO "www-data";

--
-- Name: track_track_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.track_track_id_seq OWNED BY public.track.track_id;


--
-- Name: unit; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.unit (
    unit_id integer NOT NULL,
    unit_lname character varying(255),
    track_id integer,
    supervisor character varying(255),
    address character varying(255),
    city character varying(80),
    state character varying(80),
    postcode character varying(80),
    phone character varying(80)
);


ALTER TABLE public.unit OWNER TO "www-data";

--
-- Name: TABLE unit; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.unit IS 'Clinical and Administrative Units';


--
-- Name: unit_unit_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.unit_unit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unit_unit_id_seq OWNER TO "www-data";

--
-- Name: unit_unit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.unit_unit_id_seq OWNED BY public.unit.unit_id;


--
-- Name: unitlog; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.unitlog (
    rec_id integer NOT NULL,
    unit_id integer,
    unit_lname character varying(255),
    track_id integer,
    staff_name character varying(255),
    logdate date,
    subject character varying(255),
    lognote text,
    alert character varying(24),
    timer timestamp without time zone DEFAULT now()
);


ALTER TABLE public.unitlog OWNER TO "www-data";

--
-- Name: TABLE unitlog; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.unitlog IS 'Unit Shift Log Records';


--
-- Name: unitlog_rec_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.unitlog_rec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unitlog_rec_id_seq OWNER TO "www-data";

--
-- Name: unitlog_rec_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.unitlog_rec_id_seq OWNED BY public.unitlog.rec_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: www-data
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(80),
    fullname character varying(255),
    password character varying(255),
    email character varying(255),
    track character varying(25),
    trust character(1),
    update character varying(3),
    remove character varying(3),
    phrase character varying(40)
);


ALTER TABLE public.users OWNER TO "www-data";

--
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: www-data
--

COMMENT ON TABLE public.users IS 'User Accounts';


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: www-data
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO "www-data";

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: www-data
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: volatile_view; Type: VIEW; Schema: public; Owner: www-data
--

CREATE VIEW public.volatile_view AS
 SELECT pg_tables.tablename
   FROM pg_tables
  WHERE ((pg_tables.schemaname = 'public'::name) AND (pg_tables.tablename <> ALL (ARRAY['diagnosis_icd10'::name, 'diagnosis_dsm5'::name])));


ALTER TABLE public.volatile_view OWNER TO "www-data";

--
-- Name: accounts rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.accounts ALTER COLUMN rec_id SET DEFAULT nextval('public.accounts_rec_id_seq'::regclass);


--
-- Name: demographics rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.demographics ALTER COLUMN rec_id SET DEFAULT nextval('public.demographics_rec_id_seq'::regclass);


--
-- Name: diagnosis rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.diagnosis ALTER COLUMN rec_id SET DEFAULT nextval('public.diagnosis_rec_id_seq'::regclass);


--
-- Name: diagnosis_dsm5 rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.diagnosis_dsm5 ALTER COLUMN rec_id SET DEFAULT nextval('public.diagnosis_dsm5_rec_id_seq'::regclass);


--
-- Name: diagnosis_icd10 rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.diagnosis_icd10 ALTER COLUMN rec_id SET DEFAULT nextval('public.diagnosis_icd10_rec_id_seq'::regclass);


--
-- Name: email_internal rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.email_internal ALTER COLUMN rec_id SET DEFAULT nextval('public.email_internal_rec_id_seq'::regclass);


--
-- Name: email_notification rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.email_notification ALTER COLUMN rec_id SET DEFAULT nextval('public.email_notification_rec_id_seq'::regclass);


--
-- Name: entitlements rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.entitlements ALTER COLUMN rec_id SET DEFAULT nextval('public.entitlements_rec_id_seq'::regclass);


--
-- Name: functional rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.functional ALTER COLUMN rec_id SET DEFAULT nextval('public.functional_rec_id_seq'::regclass);


--
-- Name: inpatient rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.inpatient ALTER COLUMN rec_id SET DEFAULT nextval('public.inpatient_rec_id_seq'::regclass);


--
-- Name: keyword rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.keyword ALTER COLUMN rec_id SET DEFAULT nextval('public.keyword_rec_id_seq'::regclass);


--
-- Name: login rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.login ALTER COLUMN rec_id SET DEFAULT nextval('public.login_user_id_seq'::regclass);


--
-- Name: maintenance_request rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.maintenance_request ALTER COLUMN rec_id SET DEFAULT nextval('public.maintenance_request_rec_id_seq'::regclass);


--
-- Name: message rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.message ALTER COLUMN rec_id SET DEFAULT nextval('public.message_rec_id_seq'::regclass);


--
-- Name: mpi client_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.mpi ALTER COLUMN client_id SET DEFAULT nextval('public.mpi_client_id_seq'::regclass);


--
-- Name: placement rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.placement ALTER COLUMN rec_id SET DEFAULT nextval('public.placement_rec_id_seq'::regclass);


--
-- Name: progress_note rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.progress_note ALTER COLUMN rec_id SET DEFAULT nextval('public.progress_note_rec_id_seq'::regclass);


--
-- Name: support_plan rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.support_plan ALTER COLUMN rec_id SET DEFAULT nextval('public.support_plan_rec_id_seq'::regclass);


--
-- Name: tech_support rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.tech_support ALTER COLUMN rec_id SET DEFAULT nextval('public.tech_support_rec_id_seq'::regclass);


--
-- Name: track track_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.track ALTER COLUMN track_id SET DEFAULT nextval('public.track_track_id_seq'::regclass);


--
-- Name: unit unit_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.unit ALTER COLUMN unit_id SET DEFAULT nextval('public.unit_unit_id_seq'::regclass);


--
-- Name: unitlog rec_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.unitlog ALTER COLUMN rec_id SET DEFAULT nextval('public.unitlog_rec_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: diagnosis diagnosis_pkey; Type: CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.diagnosis
    ADD CONSTRAINT diagnosis_pkey PRIMARY KEY (rec_id);


--
-- Name: functional functional_pkey; Type: CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.functional
    ADD CONSTRAINT functional_pkey PRIMARY KEY (rec_id);


--
-- Name: login login_pkey; Type: CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (rec_id);


--
-- Name: mpi mpi_pkey; Type: CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.mpi
    ADD CONSTRAINT mpi_pkey PRIMARY KEY (client_id);


--
-- Name: placement placement_pkey; Type: CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.placement
    ADD CONSTRAINT placement_pkey PRIMARY KEY (rec_id);


--
-- Name: progress_note progress_note_pkey; Type: CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.progress_note
    ADD CONSTRAINT progress_note_pkey PRIMARY KEY (rec_id);


--
-- Name: support_plan support_plan_check; Type: CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.support_plan
    ADD CONSTRAINT support_plan_check UNIQUE (client_id, start_date, end_date);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: unique_unit_placement; Type: INDEX; Schema: public; Owner: www-data
--

CREATE UNIQUE INDEX unique_unit_placement ON public.placement USING btree (client_id, unit_id) WHERE (end_date IS NULL);


--
-- Name: accounts accounts_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: demographics demographics_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.demographics
    ADD CONSTRAINT demographics_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: diagnosis diagnosis_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.diagnosis
    ADD CONSTRAINT diagnosis_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: entitlements entitlements_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.entitlements
    ADD CONSTRAINT entitlements_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: functional functional_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.functional
    ADD CONSTRAINT functional_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: inpatient inpatient_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.inpatient
    ADD CONSTRAINT inpatient_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: placement placement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.placement
    ADD CONSTRAINT placement_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: progress_note progress_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.progress_note
    ADD CONSTRAINT progress_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: support_plan support_fkey; Type: FK CONSTRAINT; Schema: public; Owner: www-data
--

ALTER TABLE ONLY public.support_plan
    ADD CONSTRAINT support_fkey FOREIGN KEY (client_id) REFERENCES public.mpi(client_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TABLE accounts; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.accounts TO PUBLIC;


--
-- Name: SEQUENCE accounts_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.accounts_rec_id_seq TO PUBLIC;


--
-- Name: TABLE demographics; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.demographics TO PUBLIC;


--
-- Name: SEQUENCE demographics_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.demographics_rec_id_seq TO PUBLIC;


--
-- Name: TABLE email_internal; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.email_internal TO PUBLIC;


--
-- Name: SEQUENCE email_internal_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.email_internal_rec_id_seq TO PUBLIC;


--
-- Name: TABLE email_notification; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.email_notification TO PUBLIC;


--
-- Name: SEQUENCE email_notification_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.email_notification_rec_id_seq TO PUBLIC;


--
-- Name: TABLE entitlements; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.entitlements TO PUBLIC;


--
-- Name: SEQUENCE entitlements_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.entitlements_rec_id_seq TO PUBLIC;


--
-- Name: TABLE functional; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.functional TO PUBLIC;


--
-- Name: SEQUENCE functional_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.functional_rec_id_seq TO PUBLIC;


--
-- Name: TABLE functional_skills; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.functional_skills TO PUBLIC;


--
-- Name: TABLE inpatient; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.inpatient TO PUBLIC;


--
-- Name: SEQUENCE inpatient_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.inpatient_rec_id_seq TO PUBLIC;


--
-- Name: TABLE keyword; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.keyword TO PUBLIC;


--
-- Name: SEQUENCE keyword_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.keyword_rec_id_seq TO PUBLIC;


--
-- Name: TABLE login; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.login TO PUBLIC;


--
-- Name: SEQUENCE login_user_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.login_user_id_seq TO PUBLIC;


--
-- Name: TABLE maintenance_request; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.maintenance_request TO PUBLIC;


--
-- Name: SEQUENCE maintenance_request_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.maintenance_request_rec_id_seq TO PUBLIC;


--
-- Name: TABLE message; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.message TO PUBLIC;


--
-- Name: SEQUENCE message_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.message_rec_id_seq TO PUBLIC;


--
-- Name: TABLE mpi; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.mpi TO PUBLIC;


--
-- Name: SEQUENCE mpi_client_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.mpi_client_id_seq TO PUBLIC;


--
-- Name: TABLE placement; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.placement TO PUBLIC;


--
-- Name: SEQUENCE placement_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.placement_rec_id_seq TO PUBLIC;


--
-- Name: TABLE progress_note; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.progress_note TO PUBLIC;


--
-- Name: SEQUENCE progress_note_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.progress_note_rec_id_seq TO PUBLIC;


--
-- Name: TABLE progress_note_view; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.progress_note_view TO PUBLIC;


--
-- Name: TABLE support_plan; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.support_plan TO PUBLIC;


--
-- Name: SEQUENCE support_plan_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.support_plan_rec_id_seq TO PUBLIC;


--
-- Name: TABLE tech_support; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.tech_support TO PUBLIC;


--
-- Name: SEQUENCE tech_support_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.tech_support_rec_id_seq TO PUBLIC;


--
-- Name: TABLE track; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.track TO PUBLIC;


--
-- Name: SEQUENCE track_track_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.track_track_id_seq TO PUBLIC;


--
-- Name: TABLE unit; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.unit TO PUBLIC;


--
-- Name: SEQUENCE unit_unit_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.unit_unit_id_seq TO PUBLIC;


--
-- Name: TABLE unitlog; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.unitlog TO PUBLIC;


--
-- Name: SEQUENCE unitlog_rec_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.unitlog_rec_id_seq TO PUBLIC;


--
-- Name: TABLE users; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.users TO PUBLIC;


--
-- Name: SEQUENCE users_user_id_seq; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON SEQUENCE public.users_user_id_seq TO PUBLIC;


--
-- Name: TABLE volatile_view; Type: ACL; Schema: public; Owner: www-data
--

GRANT ALL ON TABLE public.volatile_view TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict ROYVBpxn6WNgxvhAE8HnEw6QOGqStW7Z9AAeshlDISoZswfgXWHEplkvnHlPfgg

