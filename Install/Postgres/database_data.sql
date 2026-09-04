--
-- PostgreSQL database dump
--

\restrict D9V1VS9h2cBRTeZs7aFMlsp8TNLhTDvX3HUxIkSRVi8XtsAnqSf97jXWRfVAqgs

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

--
-- Data for Name: mpi; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.mpi (client_id, fname, lname, dob, ssn, medical_record, mname, fname_code, lname_code, suffix, ssn_code, dob_code, dod, medicaid) FROM stdin;
\.


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.accounts (rec_id, client_id, unit_id, unit_lname, track_id, staff_id, staff_name, start_date, end_date, account_id, icd_10, physician_name, physician_licence, physician_npi, time_insert, time_update, update_by) FROM stdin;
\.


--
-- Data for Name: demographics; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.demographics (rec_id, client_id, unit_id, unit_lname, track_id, alias, allergy, address, apartment, city, state, post_code, phone, phone_mobile, phone_other, sex_birth, sex_gender, sex_orientation, race, race_detail, asian_detail, pacific_detail, ethnicity, ethnicity_detail, place_of_birth, citizen, veteran, language_spoken, religion, marital_status, parental_status, household, staff_id, staff_name, time_insert, time_update, update_by) FROM stdin;
\.


--
-- Data for Name: diagnosis; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.diagnosis (rec_id, client_id, unit_id, unit_lname, track_id, staff_id, staff_name, start_date, end_date, dsm5, icd10, notebody, time_insert, time_update, update_by) FROM stdin;
\.


--
-- Data for Name: diagnosis_dsm5; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.diagnosis_dsm5 (rec_id, dsm5) FROM stdin;
1	301.89 Other specified personality disorder
2	301.9 Unspecified personality disorder
3	318.2 Intellectual disability (intellectual developmental disorder), Profound
4	319 Intellectual disability (intellectual developmental disorder)
5	319 Unspecified intellectual disability (intellectual developmental disorder)
6	278.00 Overweight or obesity
7	291.0 Alcohol intoxication delirium
8	291.0 Alcohol withdrawal delirium
9	291.1 Alcohol-induced major neurocognitive disorder, Amnestic confabulatory type
10	291.2 Alcohol-induced major neurocognitive disorder, Nonamnestic confabulatory type
11	291.82 Alcohol-induced sleep disorder
12	291.9 Alcohol-induced psychotic disorder
13	291.9 Unspecified alcohol-related disorder
14	292.0 Amphetamine or other stimulant withdrawal
15	292.0 Caffeine withdrawal
16	292.0 Cannabis withdrawal
17	292.0 Cocaine withdrawal
18	292.0 Opioid withdrawal
19	292.0 Opioid withdrawal delirium
20	292.0 Other (or unknown) substance withdrawal
21	292.0 Other (or unknown) substance withdrawal delirium
22	292.0 Sedative, hypnotic, or anxiolytic withdrawal
23	292.0 Sedative, hypnotic, or anxiolytic withdrawal delirium
24	292.0 Tobacco withdrawal
25	292.85 Amphetamine (or other stimulant)-induced sleep disorder
26	292.85 Caffeine-induced sleep disorder
27	292.89 Amphetamine (or other stimulant)-induced anxiety disorder
28	292.89 Amphetamine (or other stimulant)-induced obsessive-compulsive and related disorder
29	292.89 Amphetamine (or other stimulant)-induced sexual dysfunction
30	292.89 Amphetamine or other stimulant intoxication
31	292.89 Caffeine-induced anxiety disorder
32	292.89 Cannabis intoxication
33	292.89 Cannabis-induced anxiety disorder
34	292.89 Cocaine intoxication
35	292.89 Cocaine-induced anxiety disorder
36	292.89 Cocaine-induced obsessive-compulsive and related disorder
37	292.89 Cocaine-induced sexual dysfunction
38	292.89 Hallucinogen persisting perception disorder
39	292.89 Inhalant intoxication
40	292.89 Inhalant-induced anxiety disorder
41	292.89 Inhalant-induced mild neurocognitive disorder
42	291.81 Alcohol withdrawal
43	291.89 Alcohol-induced anxiety disorder
44	291.89 Alcohol-induced bipolar and related disorder
45	291.89 Alcohol-induced depressive disorder
46	292.81 Amphetamine (or other stimulant) intoxication delirium
47	292.81 Cannabis intoxication delirium
48	292.81 Cocaine intoxication delirium
49	292.81 Inhalant intoxication delirium
50	292.81 Medication-induced delirium
51	292.82 Inhalant-induced major neurocognitive disorder
52	292.82 Other (or unknown) substance-induced major neurocognitive disorder
53	292.82 Sedative-, hypnotic-, or anxiolytic-induced major neurocognitive disorder
54	292.84 Amphetamine (or other stimulant)-induced bipolar and related disorder
55	292.84 Amphetamine (or other stimulant)-induced depressive disorder
56	292.84 Cocaine-induced bipolar and related disorder
57	292.84 Cocaine-induced depressive disorder
58	292.84 Inhalant-induced depressive disorder
59	292.84 Opioid-induced depressive disorder
60	292.84 Other (or unknown) substance-induced bipolar and related disorder
61	292.84 Other (or unknown) substance-induced depressive disorder
62	292.85 Cannabis-induced sleep disorder
63	292.85 Cocaine-induced sleep disorder
64	292.85 Opioid-induced sleep disorder
65	292.85 Other (or unknown) substance-induced sleep disorder
66	293.82 Psychotic disorder due to another medical condition, With hallucinations
67	293.83 Bipolar and related disorder due to another medical condition
68	293.89 Catatonia associated with another mental disorder (catatonia specifier)
69	294.10 Major neurocognitive disorder due to another medical condition, Without behavioral disturbance
70	295.40 Schizophreniform disorder
71	295.70 Schizoaffective disorder, Bipolar type
72	295.70 Schizoaffective disorder, Depressive type
73	295.90 Schizophrenia
74	296.20 Major depressive disorder, Single episode, Unspecified
75	296.21 Major depressive disorder, Single episode, Mild
76	296.22 Major depressive disorder, Single episode, Moderate
77	296.23 Major depressive disorder, Single episode, Severe
78	296.24 Major depressive disorder, Single episode, With psychotic features
79	296.25 Major depressive disorder, Single episode, In partial remission
80	296.26 Major depressive disorder, Single episode, In full remission
81	296.30 Major depressive disorder, Recurrent episode, Unspecified
82	296.31 Major depressive disorder, Recurrent episode, Mild
83	296.32 Major depressive disorder, Recurrent episode, Moderate
84	296.33 Major depressive disorder, Recurrent episode, Severe
85	296.34 Major depressive disorder, Recurrent episode, With psychotic features
86	296.35 Major depressive disorder, Recurrent episode, In partial remission
87	302.84 Sexual sadism disorder
88	293.81 Psychotic disorder due to another medical condition, With delusions
89	301.0 Paranoid personality disorder
90	301.4 Obsessive-compulsive personality disorder
91	301.6 Dependent personality disorder
92	301.7 Antisocial personality disorder
93	292.85 Sedative-, hypnotic-, or anxiolytic-induced sleep disorder
94	292.85 Tobacco-induced sleep disorder
95	292.9 Amphetamine (or other stimulant)-induced psychotic disorder
96	292.9 Cannabis-induced psychotic disorder
97	296.41 Bipolar I disorder, Current or most recent episode manic, Mild
98	296.42 Bipolar I disorder, Current or most recent episode manic, Moderate
99	296.43 Bipolar I disorder, Current or most recent episode manic, Severe
100	296.44 Bipolar I disorder, Current or most recent episode manic, With psychotic features
101	296.45 Bipolar I disorder, Current or most recent episode hypomanic, In partial remission
102	296.46 Bipolar I disorder, Current or most recent episode hypomanic, In full remission
103	296.46 Bipolar I disorder, Current or most recent episode manic, In full remission
104	296.50 Bipolar I disorder, Current or most recent episode depressed, Unspecified
105	296.51 Bipolar I disorder, Current or most recent episode depressed, Mild
106	296.52 Bipolar I disorder, Current or most recent episode depressed, Moderate
107	296.53 Bipolar I disorder, Current or most recent episode depressed, Severe
108	296.54 Bipolar I disorder, Current or most recent episode depressed, With psychotic features
109	296.55 Bipolar I disorder, Current or most recent episode depressed, In partial remission
110	296.56 Bipolar I disorder, Current or most recent episode depressed, In full remission
111	296.80 Unspecified bipolar and related disorder
112	296.89 Bipolar II disorder
113	296.89 Other specified bipolar and related disorder
114	299.00 Autism spectrum disorder
115	300.00 Unspecified anxiety disorder
116	300.01 Panic disorder
117	300.02 Generalized anxiety disorder
118	300.11 Conversion disorder (functional neurological symptom disorder)
119	300.12 Dissociative amnesia
120	300.13 Dissociative amnesia, with dissociative fugue
121	300.14 Dissociative identity disorder
122	300.15 Other specified dissociative disorder
123	300.19 Factitious disorder
124	300.22 Agoraphobia
125	300.23 Social anxiety disorder (social phobia)
126	300.29 Specific phobia, Animal
127	300.29 Specific phobia, Blood-injection-injury
128	301.13 Cyclothymic disorder
129	302.70 Unspecified sexual dysfunction
130	302.71 Male hypoactive sexual desire disorder
131	302.72 Erectile disorder
132	302.72 Female sexual interest/arousal disorder
133	302.73 Female orgasmic disorder
134	302.74 Delayed ejaculation
135	302.75 Premature (early) ejaculation
136	302.76 Genito-pelvic pain/penetration disorder
137	302.79 Other specified sexual dysfunction
138	302.81 Fetishistic disorder
139	302.82 Voyeuristic disorder
140	302.83 Sexual masochism disorder
141	296.40 Bipolar I disorder, Current or most recent episode hypomanic
142	301.20 Schizoid personality disorder
143	301.22 Schizotypal personality disorder
144	301.50 Histrionic personality disorder
145	301.81 Narcissistic personality disorder
146	301.82 Avoidant personality disorder
147	301.83 Borderline personality disorder
148	292.9 Cocaine-induced psychotic disorder
149	292.9 Inhalant-induced psychotic disorder
150	292.9 Other (or unknown) substance-induced psychotic disorder
151	292.9 Other hallucinogen-induced psychotic disorder
152	292.9 Phencyclidine-induced psychotic disorder
153	292.9 Sedative-, hypnotic-, or anxiolytic-induced psychotic disorder
154	292.9 Unspecified caffeine-related disorder
155	303.00 Alcohol intoxication
156	303.90 Alcohol use disorder, Moderate
157	304.00 Opioid use disorder, Moderate
158	304.00 Opioid use disorder, Severe
159	304.10 Sedative, hypnotic, or anxiolytic use disorder, Moderate
160	304.20 Cocaine use disorder, Moderate
161	304.20 Cocaine use disorder, Severe
162	304.30 Cannabis use disorder, Moderate
163	304.30 Cannabis use disorder, Severe
164	304.40 Amphetamine-type substance use disorder, Moderate
165	304.40 Amphetamine-type substance use disorder, Severe
166	304.50 Other hallucinogen use disorder, Moderate
167	304.50 Other hallucinogen use disorder, Severe
168	304.60 Inhalant use disorder, Moderate
169	304.60 Inhalant use disorder, Severe
170	304.90 Other (or unknown) substance use disorder, Moderate
171	304.90 Other (or unknown) substance use disorder, Severe
172	305.00 Alcohol use disorder, Mild
173	305.20 Cannabis use disorder, Mild
174	305.30 Other hallucinogen use disorder, Mild
175	305.40 Sedative, hypnotic, or anxiolytic use disorder, Mild
176	304.80 Polysubstance Dependence
177	305.50 Opioid use disorder, Mild
178	305.60 Cocaine use disorder, Mild
179	305.70 Amphetamine-type substance use disorder, Mild
180	305.70 Other or unspecified stimulant use disorder, Mild
181	305.90 Caffeine intoxication
182	305.90 Inhalant use disorder, Mild
183	305.90 Other (or unknown) substance use disorder, Mild
184	307.20 Other specified tic disorder
185	307.20 Unspecified tic disorder
186	307.21 Provisional tic disorder
187	307.22 Persistent (chronic) motor or vocal tic disorder
188	307.23 Tourette's disorder
189	307.45 Circadian rhythm sleep-wake disorders, Advanced sleep phase type
190	307.45 Circadian rhythm sleep-wake disorders, Delayed sleep phase type
191	307.46 Non-rapid eye movement sleep arousal disorders, Sleep terror type
192	307.46 Non-rapid eye movement sleep arousal disorders, Sleepwalking type
193	307.47 Nightmare disorder
194	307.50 Unspecified feeding or eating disorder
195	307.51 Binge-eating disorder
196	307.51 Bulimia nervosa
197	307.52 Pica
198	307.53 Rumination disorder
199	307.59 Other specified feeding or eating disorder
200	309.21 Separation anxiety disorder
201	309.24 Adjustment disorder, With anxiety
202	309.28 Adjustment disorder, With mixed anxiety and depressed mood
203	309.81 Posttraumatic stress disorder
204	312.31 Gambling disorder
205	312.32 Kleptomania
206	312.33 Pyromania
207	312.34 Intermittent explosive disorder
208	312.39 Trichotillomania (hair-pulling disorder)
209	312.81 Conduct disorder, Childhood-onset type
210	312.82 Conduct disorder, Adolescent-onset type
211	313.23 Selective mutism
212	302.89 Frotteuristic disorder
213	303.90 Alcohol use disorder, Severe
214	304.60 Phencyclidine use disorder, Moderate
215	304.60 Phencyclidine use disorder, Severe
216	317 Intellectual disability (intellectual developmental disorder), Mild
217	318.0 Intellectual disability (intellectual developmental disorder), Moderate
218	318.1 Intellectual disability (intellectual developmental disorder), Severe
219	292.9 Unspecified cannabis-related disorder
220	292.9 Unspecified hallucinogen-related disorder
221	292.9 Unspecified inhalant-related disorder
222	314.00 Attention-deficit/hyperactivity disorder, Predominantly inattentive presentation
223	314.01 Attention-deficit/hyperactivity disorder, Combined presentation
224	315.00 Specific learning disorder, With impairment in reading
225	315.39 Language disorder
226	333.92 Neuroleptic malignant syndrome
227	333.99 Medication-induced acute akathisia
228	333.99 Other medication-induced movement disorder
229	333.99 Tardive akathisia
230	347.00 Autosomal dominant cerebellar ataxia, deafness, and narcolepsy
231	347.00 Autosomal dominant narcolepsy, obesity, and type 2 diabetes
232	347.00 Narcolepsy without cataplexy but with hypocretin deficiency
233	780.09 Other specified delirium
234	780.09 Unspecified delirium
235	780.52 Insomnia disorder
236	780.52 Other specified insomnia disorder
237	780.52 Unspecified insomnia disorder
238	780.54 Hypersomnolence disorder
239	780.54 Other specified hypersomnolence disorder
240	780.54 Unspecified hypersomnolence disorder
241	780.59 Other specified sleep-wake disorder
242	780.59 Unspecified sleep-wake disorder
243	787.60 Other specified elimination disorder, With fecal symptoms
244	787.60 Unspecified elimination disorder, With fecal symptoms
245	995.20 Other adverse effect of medication, Initial encounter
246	995.20 Other adverse effect of medication, Sequelae
247	292.9 Unspecified opioid-related disorder
248	292.9 Unspecified other (or unknown) substance-related disorder
249	292.9 Unspecified phencyclidine-related disorder
250	313.89 Disinhibited social engagement disorder
251	315.39 Social (pragmatic) communication disorder
252	315.39 Speech sound disorder
253	292.9 Unspecified sedative-, hypnotic-, or anxiolytic-related disorder
254	292.9 Unspecified stimulant-related disorder
255	292.9 Unspecified tobacco-related disorder
256	293.0 Delirium due to another medical condition
257	293.0 Delirium due to multiple etiologies
258	293.84 Anxiety disorder due to another medical condition
259	[781.99 +] 293.89 [Other symptoms involving nervous and musculoskeletal systems +] Unspecified catatonia
260	311 Other specified depressive disorder
261	[331.19 +] 294.10 [Frontotemporal disease +] Major frontotemporal neurocognitive disorder, Probable, Without behavioral disturbance
262	[331.0 +] 294.10 [Alzheimer's disease +] Major neurocognitive disorder due to Alzheimer's disease, Probable, Without behavioral disturbance
263	[042 +] 294.10 [HIV infection +] Major neurocognitive disorder due to HIV infection, Without behavioral disturbance
264	[333.4 +] 294.10 [Huntington's disease +] Major neurocognitive disorder due to Huntington's disease, Without behavioral disturbance
265	[332.0 +] 294.10 [Parkinson's disease +] Major neurocognitive disorder due to Parkinson's disease, Probable, Without behavioral disturbance
266	[046.79 +] 294.10 [Prion disease +] Major neurocognitive disorder due to prion disease, Without behavioral disturbance
267	[331.82 +] 294.10 [Lewy body disease +] Major neurocognitive disorder with Lewy bodies, Probable, Without behavioral disturbance
268	[331.19 +] 294.11 [Frontotemporal disease +] Major frontotemporal neurocognitive disorder, Probable, With behavioral disturbance
269	[331.0 +] 294.11 [Alzheimer's disease +] Major neurocognitive disorder due to Alzheimer's disease, Probable, With behavioral disturbance
270	294.11 Major neurocognitive disorder due to another medical condition, With behavioral disturbance
271	[042 +] 294.11 [HIV infection +] Major neurocognitive disorder due to HIV infection, With behavioral disturbance
272	995.29 Antidepressant discontinuation syndrome, Initial encounter
273	V15.41 Personal history (past history) of physical abuse in childhood
274	V15.41 Personal history (past history) of sexual abuse in childhood
275	V15.41 Personal history (past history) of spouse or partner violence, Physical
276	V15.41 Personal history (past history) of spouse or partner violence, Sexual
277	V15.42 Personal history (past history) of neglect in childhood
278	V15.42 Personal history (past history) of psychological abuse in childhood
279	V15.42 Personal history (past history) of spouse or partner neglect
280	V15.42 Personal history (past history) of spouse or partner psychological abuse
281	[333.4 +] 294.11 [Huntington's disease +] Major neurocognitive disorder due to Huntington's disease, With behavioral disturbance
282	294.11 Major neurocognitive disorder due to multiple etiologies, With behavioral disturbance
283	[332.0 +] 294.11 [Parkinson's disease +] Major neurocognitive disorder due to Parkinson's disease, Probable, With behavioral disturbance
284	[046.79 +] 294.11 [Prion disease +] Major neurocognitive disorder due to prion disease, With behavioral disturbance
285	[331.82 +] 294.11 [Lewy body disease +] Major neurocognitive disorder with Lewy bodies, Probable, With behavioral disturbance
286	294.8 Obsessive-compulsive and related disorder due to another medical condition
287	294.8 Other specified mental disorder due to another medical condition
288	294.9 Unspecified mental disorder due to another medical condition
289	296.7 Bipolar I disorder, Current or most recent episode unspecified
290	296.99 Disruptive mood dysregulation disorder
291	297.1 Delusional disorder
292	298.8 Brief psychotic disorder
293	298.8 Other specified schizophrenia spectrum and other psychotic disorder
294	298.9 Unspecified schizophrenia spectrum and other psychotic disorder
295	300.09 Other specified anxiety disorder
296	300.3 Hoarding disorder
297	300.3 Obsessive-compulsive disorder
298	300.3 Other specified obsessive-compulsive and related disorder
299	300.3 Unspecified obsessive-compulsive and related disorder
300	300.4 Persistent depressive disorder (dysthymia)
301	300.6 Depersonalization/derealization disorder
302	300.7 Body dysmorphic disorder
303	300.7 Illness anxiety disorder
304	300.82 Somatic symptom disorder
305	300.82 Unspecified somatic symptom and related disorder
306	300.89 Other specified somatic symptom and related disorder
307	300.9 Other specified mental disorder
308	300.9 Unspecified mental disorder
309	302.2 Pedophilic disorder
310	302.3 Transvestic disorder
311	302.4 Exhibitionistic disorder
312	302.6 Gender dysphoria in children
313	302.6 Other specified gender dysphoria
314	302.6 Unspecified gender dysphoria
315	302.9 Unspecified paraphilic disorder
316	305.1 Tobacco use disorder, Mild
317	305.1 Tobacco use disorder, Moderate
318	305.1 Tobacco use disorder, Severe
319	307.0 Adult-onset fluency disorder
320	307.1 Anorexia nervosa
321	307.3 Stereotypic movement disorder
322	307.6 Enuresis
323	307.7 Encopresis
324	307.9 Unspecified communication disorder
325	308.3 Acute stress disorder
326	309.0 Adjustment disorder, With depressed mood
327	309.3 Adjustment disorder, With disturbance of conduct
328	309.4 Adjustment disorder, With mixed disturbance of emotions and conduct
329	309.89 Other specified trauma- and stressor-related disorder
330	309.9 Adjustment disorder, Unspecified
331	309.9 Unspecified trauma- and stressor-related disorder
332	310.1 Personality change due to another medical condition
333	311 Unspecified depressive disorder
334	312.89 Conduct disorder, Unspecified onset
335	312.89 Other specified disruptive, impulse-control, and conduct disorder
336	312.9 Unspecified disruptive, impulse-control, and conduct disorder
337	290.40 Major vascular neurocognitive disorder, Probable, With behavioral disturbance
338	290.40 Major vascular neurocognitive disorder, Probable, Without behavioral disturbance
339	315.1 Specific learning disorder, With impairment in mathematics
340	V61.11 Other circumstances related to spouse or partner violence, Physical, Encounter for mental health services for victim of spouse or partner violence
341	V61.11 Other circumstances related to spouse or partner violence, Sexual, Encounter for mental health services for victim of spouse or partner violence
342	V61.12 Other circumstances related to spouse or partner abuse, Psychological, Encounter for mental health services for perpetrator of spouse or partner psychological abuse
343	V61.12 Other circumstances related to spouse or partner neglect, Encounter for mental health services for perpetrator of spouse or partner neglect
344	315.2 Specific learning disorder, With impairment in written expression
345	315.35 Childhood-onset fluency disorder (stuttering)
346	315.4 Developmental coordination disorder
347	315.8 Global developmental delay
348	315.8 Other specified neurodevelopmental disorder
349	315.9 Unspecified neurodevelopmental disorder
350	V61.12 Other circumstances related to spouse or partner violence, Physical, Encounter for mental health services for perpetrator of spouse or partner violence
351	V61.12 Other circumstances related to spouse or partner violence, Sexual, Encounter for mental health services for perpetrator of spouse or partner violence
352	V61.22 Other circumstances related to child neglect, Encounter for mental health services for perpetrator of parental child neglect
353	316 Psychological factors affecting other medical conditions
354	327.21 Idiopathic central sleep apnea
355	V62.89 Borderline intellectual functioning
356	327.23 Obstructive sleep apnea hypopnea
357	327.24 Idiopathic hypoventilation
358	327.25 Congenital central alveolar hypoventilation
359	327.26 Comorbid sleep-related hypoventilation
360	327.42 Rapid eye movement sleep behavior disorder
361	331.83 Mild frontotemporal neurocognitive disorder
362	331.83 Mild neurocognitive disorder due to Alzheimer's disease
363	331.83 Mild neurocognitive disorder due to another medical condition
364	331.83 Mild neurocognitive disorder due to HIV infection
365	331.83 Mild neurocognitive disorder due to Huntington's disease
366	331.83 Mild neurocognitive disorder due to multiple etiologies
367	291.89 Alcohol-induced mild neurocognitive disorder
368	291.89 Alcohol-induced sexual dysfunction
369	292.81 Medication-induced delirium
370	292.84 Other hallucinogen-induced bipolar and related disorder
371	292.84 Other hallucinogen-induced depressive disorder
372	292.84 Phencyclidine-induced bipolar and related disorder
373	292.84 Phencyclidine-induced depressive disorder
374	292.84 Sedative-, hypnotic-, or anxiolytic-induced bipolar and related disorder
375	292.89 Opioid intoxication
376	292.89 Opioid-induced anxiety disorder
377	292.89 Opioid-induced sexual dysfunction
378	292.89 Other (or unknown) substance intoxication
379	292.89 Other (or unknown) substance-induced anxiety disorder
380	292.89 Other (or unknown) substance-induced mild neurocognitive disorder
381	292.89 Other (or unknown) substance-induced obsessive-compulsive and related disorder
382	293.89 Catatonic disorder due to another medical condition
383	296.36 Major depressive disorder, Recurrent episode, In full remission
384	296.40 Bipolar I disorder, Current or most recent episode hypomanic, Unspecified
385	296.40 Bipolar I disorder, Current or most recent episode manic, Unspecified
386	300.15 Unspecified dissociative disorder
387	300.29 Specific phobia, Natural environment
388	300.29 Specific phobia, Other
389	300.29 Specific phobia, Situational
390	302.85 Gender dysphoria in adolescents and adults
391	302.89 Other specified paraphilic disorder
392	304.10 Sedative, hypnotic, or anxiolytic use disorder, Severe
393	304.40 Other or unspecified stimulant use disorder, Moderate
394	304.40 Other or unspecified stimulant use disorder, Severe
395	305.90 Phencyclidine use disorder, Mild
396	307.45 Circadian rhythm sleep-wake disorders, Irregular sleep-wake type
397	307.45 Circadian rhythm sleep-wake disorders, Non-24-hour sleep-wake type
398	307.45 Circadian rhythm sleep-wake disorders, Shift work type
399	307.45 Circadian rhythm sleep-wake disorders, Unspecified type
400	313.81 Oppositional defiant disorder
401	313.89 Reactive attachment disorder
402	314.01 Attention-deficit/hyperactivity disorder, Predominantly hyperactive/impulsive presentation
403	314.01 Other specified attention-deficit/hyperactivity disorder
404	314.01 Unspecified attention-deficit/hyperactivity disorder
405	995.20 Other adverse effect of medication, Subsequent encounter
406	995.81 Adult physical abuse by nonspouse or nonpartner, Confirmed, Initial encounter
407	995.81 Adult physical abuse by nonspouse or nonpartner, Confirmed, Subsequent encounter
408	995.81 Adult physical abuse by nonspouse or nonpartner, Suspected, Initial encounter
409	995.81 Adult physical abuse by nonspouse or nonpartner, Suspected, Subsequent encounter
410	995.81 Spouse or partner violence, Physical, Confirmed, Initial encounter
411	995.81 Spouse or partner violence, Physical, Confirmed, Subsequent encounter
412	307.59 Avoidant/restrictive food intake disorder
413	995.81 Spouse or partner Violence, Physical, Suspected, Initial encounter
414	995.81 Spouse or partner Violence, Physical, Suspected, Subsequent encounter
415	V65.49 Sex counseling
416	V69.9 Problem related to lifestyle
417	V71.01 Adult antisocial behavior
418	V71.02 Child or adolescent antisocial behavior
419	V62.89 Victim of crime
420	V62.82 Uncomplicated bereavement
421	V62.89 Victim of terrorism or torture
422	V62.89 Discord with social service provider, including probation officer, case manager, or social services worker
423	V62.89 Other problem related to psychosocial circumstances
424	V62.89 Phase of life problem
425	V62.89 Religious or spiritual problem
426	V61.20 Parent-child relational problem
427	V61.21 Other circumstances related to child neglect, Encounter for mental health services for victim of child neglect by parent
428	V61.21 Other circumstances related to child neglect, Encounter for mental health services for victim of nonparental child neglect
429	V61.21 Other circumstances related to child physical abuse, Encounter for mental health services for victim of child abuse by parent
430	292.81 Opioid intoxication delirium
431	292.81 Other (or unknown) substance intoxication delirium
432	292.81 Other hallucinogen intoxication delirium
433	292.81 Phencyclidine intoxication delirium
434	292.81 Sedative, hypnotic, or anxiolytic intoxication delirium
435	292.84 Sedative-, hypnotic-, or anxiolytic-induced depressive disorder
436	292.89 Other (or unknown) substance-induced sexual dysfunction
437	292.89 Other hallucinogen intoxication
438	292.89 Other hallucinogen-induced anxiety disorder
439	292.89 Phencyclidine intoxication
440	292.89 Phencyclidine-induced anxiety disorder
441	292.89 Sedative, hypnotic, or anxiolytic intoxication
442	292.89 Sedative-, hypnotic-, or anxiolytic-induced anxiety disorder
443	292.89 Sedative-, hypnotic-, or anxiolytic-induced mild neurocognitive disorder
444	292.89 Sedative-, hypnotic-, or anxiolytic-induced sexual dysfunction
445	293.83 Depressive disorder due to another medical condition
446	294.10 Major neurocognitive disorder due to multiple etiologies, Without behavioral disturbance
447	296.45 Bipolar I disorder, Current or most recent episode manic, In partial remission
448	331.83 Mild neurocognitive disorder due to Parkinson's disease
449	331.83 Mild neurocognitive disorder due to prion disease
450	V15.49 Other personal history of psychological trauma
451	V15.59 Personal history of self-harm
452	V15.89 Other personal risk factors
453	V40.31 Wandering associated with a mental disorder
454	V60.0 Homelessness
455	V60.1 Inadequate housing
456	V60.2 Extreme poverty
457	V60.2 Insufficient social insurance or welfare support
458	V60.2 Lack of adequate food or safe drinking water
459	V60.2 Low income
460	V60.3 Problem related to living alone
461	V60.6 Problem related to living in a residential institution
462	V60.89 Discord with neighbor, lodger, or landlord
463	V60.9 Unspecified housing or economic problem
464	V61.03 Disruption of family by separation or divorce
465	V61.11 Other circumstances related to spouse or partner abuse, Psychological, Encounter for mental health services for victim of spouse or partner psychological abuse
466	V61.11 Other circumstances related to spouse or partner neglect, Encounter for mental health services for victim of spouse or partner neglect
467	V15.81 Nonadherence to medical treatment
468	V61.10 Relationship distress with spouse or intimate partner
469	V61.22 Other circumstances related to child physical abuse, Encounter for mental health services for perpetrator of parental child abuse
470	V61.22 Other circumstances related to child psychological abuse, Encounter for mental health services for perpetrator of parental child psychological abuse
471	V61.22 Other circumstances related to child sexual abuse, Encounter for mental health services for perpetrator of parental child sexual abuse
472	V61.29 Child affected by parental relationship distress
473	V61.5 Problems related to multiparity
474	V61.7 Problems related to unwanted pregnancy
475	V61.8 High expressed emotion level within family
476	V61.8 Sibling relational problem
477	V61.8 Upbringing away from parents
478	V62.21 Problem related to current military deployment status
479	V62.22 Exposure to disaster, war, or other hostilities
480	V62.22 Personal history of military deployment
481	V62.29 Other problem related to employment
482	V62.3 Academic or educational problem
483	V62.4 Acculturation difficulty
484	V62.4 Social exclusion or rejection
485	V62.4 Target of (perceived) adverse discrimination or persecution
486	V62.5 Conviction in civil or criminal proceedings without imprisonment
487	V62.5 Imprisonment or other incarceration
488	V62.5 Problems related to other legal circumstances
489	V62.5 Problems related to release from prison
490	V62.83 Other circumstances related to adult abuse by nonspouse or nonpartner, Encounter for mental health services for perpetrator of nonspousal adult abuse
491	V62.83 Other circumstances related to child neglect, Encounter for mental health services for perpetrator of nonparental child neglect
492	V62.83 Other circumstances related to child physical abuse, Encounter for mental health services for perpetrator of nonparental child abuse
493	V62.83 Other circumstances related to child psychological abuse, Encounter for mental health services for perpetrator of nonparental child psychological abuse
494	V62.83 Other circumstances related to child sexual abuse, Encounter for mental health services for perpetrator of nonparental child sexual abuse
495	V62.9 Unspecified problem related to social environment
496	V62.9 Unspecified problem related to unspecified psychosocial circumstances
497	V63.8 Unavailability or inaccessibility of other helping agencies
498	V63.9 Unavailability or inaccessibility of health care facilities
499	V65.2 Malingering
500	V65.40 Other counseling or consultation
501	V65.49 Other circumstances related to adult abuse by nonspouse or nonpartner, Encounter for mental health services for victim of nonspousal adult abuse
502	331.83 Mild neurocognitive disorder due to traumatic brain injury
503	V61.21 Other circumstances related to child physical abuse, Encounter for mental health services for victim of nonparental child abuse
504	V61.21 Other circumstances related to child psychological abuse, Encounter for mental health services for victim of child psychological abuse by parent
505	V61.21 Other circumstances related to child psychological abuse, Encounter for mental health services for victim of nonparental child psychological abuse
506	V61.21 Other circumstances related to child sexual abuse, Encounter for mental health services for victim of child sexual abuse by parent
507	V61.21 Other circumstances related to child sexual abuse, Encounter for mental health services for victim of nonparental child sexual abuse
508	331.83 Mild neurocognitive disorder with Lewy bodies
509	331.83 Mild vascular neurocognitive disorder
510	331.9 Major frontotemporal neurocognitive disorder, Possible
511	[331.19 +] 331.9 Major neurocognitive disorder due to Alzheimer's disease, Possible
512	331.9 Major neurocognitive disorder due to Parkinson's disease, Possible
513	331.9 Major neurocognitive disorder with Lewy bodies, Possible
514	331.9 Major vascular neurocognitive disorder, Possible
515	332.1 Neuroleptic-induced parkinsonism
516	332.1 Other medication-induced parkinsonism
517	333.1 Medication-induced postural tremor
518	333.72 Medication-induced acute dystonia
519	333.72 Tardive dystonia
520	333.85 Tardive dyskinesia
521	333.94 Restless legs syndrome
522	347.01 Narcolepsy with cataplexy but without hypocretin deficiency
523	347.10 Narcolepsy secondary to another medical condition
524	625.4 Premenstrual dysphoric disorder
525	698.4 Excoriation (skin-picking) disorder
526	780.57 Central sleep apnea comorbid with opioid use
527	786.04 Cheyne-Stokes breathing
528	788.30 Unspecified elimination disorder, With urinary symptoms
529	788.39 Other specified elimination disorder, With urinary symptoms
530	799.59 Unspecified neurocognitive disorder
531	995.29 Antidepressant discontinuation syndrome, Sequelae
532	995.29 Antidepressant discontinuation syndrome, Subsequent encounter
533	995.51 Child psychological abuse, Confirmed, Initial encounter
534	995.51 Child psychological abuse, Confirmed, Subsequent encounter
535	995.51 Child psychological abuse, Suspected, Initial encounter
536	995.51 Child psychological abuse, Suspected, Subsequent encounter
537	995.52 Child neglect, Confirmed, Initial encounter
538	995.52 Child neglect, Confirmed, Subsequent encounter
539	995.52 Child neglect, Suspected, Initial encounter
540	995.52 Child neglect, Suspected, Subsequent encounter
541	995.53 Child sexual abuse, Confirmed, Initial encounter
542	995.53 Child sexual abuse, Confirmed, Subsequent encounter
543	995.53 Child sexual abuse, Suspected, Initial encounter
544	995.53 Child sexual abuse, Suspected, Subsequent encounter
545	995.54 Child physical abuse, Confirmed, Initial encounter
546	995.54 Child physical abuse, Confirmed, Subsequent encounter
547	995.54 Child physical abuse, Suspected, Initial encounter
548	995.54 Child physical abuse, Suspected, Subsequent encounter
549	995.82 Adult psychological abuse by nonspouse or nonpartner, Confirmed, Initial encounter
550	995.82 Adult psychological abuse by nonspouse or nonpartner, Confirmed, Subsequent encounter
551	995.82 Adult psychological abuse by nonspouse or nonpartner, Suspected, Initial encounter
552	995.82 Adult psychological abuse by nonspouse or nonpartner, Suspected, Subsequent encounter
553	995.82 Spouse or partner abuse, Psychological, Confirmed, Initial encounter
554	995.82 Spouse or partner abuse, Psychological, Confirmed, Subsequent encounter
555	995.82 Spouse or partner abuse, Psychological, Suspected, Initial encounter
556	995.82 Spouse or partner abuse, Psychological, Suspected, Subsequent encounter
557	995.83 Adult sexual abuse by nonspouse or nonpartner, Confirmed, Initial encounter
558	995.83 Adult sexual abuse by nonspouse or nonpartner, Confirmed, Subsequent encounter
559	995.83 Adult sexual abuse by nonspouse or nonpartner, Suspected, Initial encounter
560	995.83 Adult sexual abuse by nonspouse or nonpartner, Suspected, Subsequent encounter
561	995.83 Spouse or partner Violence, Sexual, Confirmed, Initial encounter
562	995.83 Spouse or partner Violence, Sexual, Confirmed, Subsequent encounter
563	995.83 Spouse or partner Violence, Sexual, Suspected, Initial encounter
564	995.83 Spouse or partner Violence, Sexual, Suspected, Subsequent encounter
565	995.85 Spouse or partner neglect, Confirmed, Initial encounter
566	995.85 Spouse or partner neglect, Confirmed, Subsequent encounter
567	995.85 Spouse or partner neglect, Suspected, Initial encounter
568	995.85 Spouse or partner neglect, Suspected, Subsequent encounter
\.


--
-- Data for Name: diagnosis_icd10; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.diagnosis_icd10 (rec_id, icd10) FROM stdin;
1	A00 Cholera
2	A000 Cholera due to Vibrio cholerae 01, biovar cholerae
3	A001 Cholera due to Vibrio cholerae 01, biovar eltor
4	A009 Cholera, unspecified
5	A01 Typhoid and paratyphoid fevers
6	A010 Typhoid fever
7	A011 Paratyphoid fever A
8	A012 Paratyphoid fever B
9	A013 Paratyphoid fever C
10	A014 Paratyphoid fever, unspecified
11	A02 Other salmonella infections
12	A020 Salmonella enteritis
13	A021 Salmonella sepsis
14	A022 Localized salmonella infections
15	A028 Other specified salmonella infections
16	A029 Salmonella infection, unspecified
17	A03 Shigellosis
18	A030 Shigellosis due to Shigella dysenteriae
19	A031 Shigellosis due to Shigella flexneri
20	A032 Shigellosis due to Shigella boydii
21	A033 Shigellosis due to Shigella sonnei
22	A038 Other shigellosis
23	A039 Shigellosis, unspecified
24	A04 Other bacterial intestinal infections
25	A040 Enteropathogenic Escherichia coli infection
26	A041 Enterotoxigenic Escherichia coli infection
27	A042 Enteroinvasive Escherichia coli infection
28	A043 Enterohaemorrhagic Escherichia coli infection
29	A044 Other intestinal Escherichia coli infections
30	A045 Campylobacter enteritis
31	A046 Enteritis due to Yersinia enterocolitica
32	A047 Enterocolitis due to Clostridium difficile
33	A048 Other specified bacterial intestinal infections
34	A049 Bacterial intestinal infection, unspecified
35	A05 Other bacterial foodborne intoxications, not elsewhere classified
36	A050 Foodborne staphylococcal intoxication
37	A051 Botulism
38	A052 Foodborne Clostridium perfringens [Clostridium welchii] intoxication
39	A053 Foodborne Vibrio parahaemolyticus intoxication
40	A054 Foodborne Bacillus cereus intoxication
41	A058 Other specified bacterial foodborne intoxications
42	A059 Bacterial foodborne intoxication, unspecified
43	A06 Amoebiasis
44	A060 Acute amoebic dysentery
45	A061 Chronic intestinal amoebiasis
46	A062 Amoebic nondysenteric colitis
47	A063 Amoeboma of intestine
48	A064 Amoebic liver abscess
49	A065 Amoebic lung abscess
50	A066 Amoebic brain abscess
51	A067 Cutaneous amoebiasis
52	A068 Amoebic infection of other sites
53	A069 Amoebiasis, unspecified
54	A07 Other protozoal intestinal diseases
55	A070 Balantidiasis
56	A071 Giardiasis [lambliasis]
57	A072 Cryptosporidiosis
58	A073 Isosporiasis
59	A078 Other specified protozoal intestinal diseases
60	A079 Protozoal intestinal disease, unspecified
61	A08 Viral and other specified intestinal infections
62	A080 Rotaviral enteritis
63	A081 Acute gastroenteropathy due to Norwalk agent
64	A082 Adenoviral enteritis
65	A083 Other viral enteritis
66	A084 Viral intestinal infection, unspecified
67	A085 Other specified intestinal infections
68	A09 Other gastroenteritis and colitis of infectious and unspecified origin
69	A090 Other and unspecified gastroenteritis and colitis of infectious origin
70	A099 Gastroenteritis and colitis of unspecified origin
71	A15 Respiratory tuberculosis, bacteriologically and histologically confirmed
72	A150 Tuberculosis of lung, confirmed by sputum microscopy with or without culture
73	A151 Tuberculosis of lung, confirmed by culture only
74	A152 Tuberculosis of lung, confirmed histologically
75	A153 Tuberculosis of lung, confirmed by unspecified means
76	A154 Tuberculosis of intrathoracic lymph nodes, confirmed bacteriologically and histologically
77	A155 Tuberculosis of larynx, trachea and bronchus, confirmed bacteriologically and histologically
78	A156 Tuberculous pleurisy, confirmed bacteriologically and histologically
79	A157 Primary respiratory tuberculosis, confirmed bacteriologically and histologically
80	A158 Other respiratory tuberculosis, confirmed bacteriologically and histologically
81	A159 Respiratory tuberculosis unspecified, confirmed bacteriologically and histologically
82	A16 Respiratory tuberculosis, not confirmed bacteriologically or histologically
83	A160 Tuberculosis of lung, bacteriologically and histologically negative
84	A161 Tuberculosis of lung, bacteriological and histological examination not done
85	A162 Tuberculosis of lung, without mention of bacteriological or histological confirmation
86	A163 Tuberculosis of intrathoracic lymph nodes, without mention of bacteriological or histological confirmation
87	A164 Tuberculosis of larynx, trachea and bronchus, without mention of bacteriological or histological confirmation
88	A165 Tuberculous pleurisy, without mention of bacteriological or histological confirmation
89	A167 Primary respiratory tuberculosis without mention of bacteriological or histological confirmation
90	A168 Other respiratory tuberculosis, without mention of bacteriological or histological confirmation
91	A169 Respiratory tuberculosis unspecified, without mention of bacteriological or histological confirmation
92	A17 Tuberculosis of nervous system
93	A170 Tuberculous meningitis
94	A171 Meningeal tuberculoma
95	A178 Other tuberculosis of nervous system
96	A179 Tuberculosis of nervous system, unspecified
97	A18 Tuberculosis of other organs
98	A41 Other sepsis
99	A180 Tuberculosis of bones and joints
100	A181 Tuberculosis of genitourinary system
101	A182 Tuberculous peripheral lymphadenopathy
102	A183 Tuberculosis of intestines, peritoneum and mesenteric glands
103	A184 Tuberculosis of skin and subcutaneous tissue
104	A185 Tuberculosis of eye
105	A186 Tuberculosis of ear
106	A187 Tuberculosis of adrenal glands
107	A188 Tuberculosis of other specified organs
108	A19 Miliary tuberculosis
109	A190 Acute miliary tuberculosis of a single specified site
110	A191 Acute miliary tuberculosis of multiple sites
111	A192 Acute miliary tuberculosis, unspecified
112	A198 Other miliary tuberculosis
113	A199 Miliary tuberculosis, unspecified
114	A20 Plague
115	A200 Bubonic plague
116	A201 Cellulocutaneous plague
117	A202 Pneumonic plague
118	A203 Plague meningitis
119	A207 Septicaemic plague
120	A208 Other forms of plague
121	A209 Plague, unspecified
122	A21 Tularaemia
123	A210 Ulceroglandular tularaemia
124	A211 Oculoglandular tularaemia
125	A212 Pulmonary tularaemia
126	A213 Gastrointestinal tularaemia
127	A217 Generalized tularaemia
128	A218 Other forms of tularaemia
129	A219 Tularaemia, unspecified
130	A22 Anthrax
131	A220 Cutaneous anthrax
132	A221 Pulmonary anthrax
133	A222 Gastrointestinal anthrax
134	A227 Anthrax sepsis
135	A228 Other forms of anthrax
136	A229 Anthrax, unspecified
137	A23 Brucellosis
138	A230 Brucellosis due to Brucella melitensis
139	A231 Brucellosis due to Brucella abortus
140	A232 Brucellosis due to Brucella suis
141	A233 Brucellosis due to Brucella canis
142	A238 Other brucellosis
143	A239 Brucellosis, unspecified
144	A24 Glanders and melioidosis
145	A240 Glanders
146	A241 Acute and fulminating melioidosis
147	A242 Subacute and chronic melioidosis
148	A243 Other melioidosis
149	A244 Melioidosis, unspecified
150	A25 Rat-bite fevers
151	A250 Spirillosis
152	A251 Streptobacillosis
153	A259 Rat-bite fever, unspecified
154	A26 Erysipeloid
155	A260 Cutaneous erysipeloid
156	A267 Erysipelothrix sepsis
157	A268 Other forms of erysipeloid
158	A269 Erysipeloid, unspecified
159	A27 Leptospirosis
160	A270 Leptospirosis icterohaemorrhagica
161	A278 Other forms of leptospirosis
162	A279 Leptospirosis, unspecified
163	A28 Other zoonotic bacterial diseases, not elsewhere classified
164	A280 Pasteurellosis
165	A281 Cat-scratch disease
166	A282 Extraintestinal yersiniosis
167	A288 Other specified zoonotic bacterial diseases, not elsewhere classified
168	A289 Zoonotic bacterial disease, unspecified
169	A30 Leprosy [Hansen disease]
170	A300 Indeterminate leprosy
171	A301 Tuberculoid leprosy
172	A302 Borderline tuberculoid leprosy
173	A303 Borderline leprosy
174	A304 Borderline lepromatous leprosy
175	A305 Lepromatous leprosy
176	A308 Other forms of leprosy
177	A309 Leprosy, unspecified
178	A31 Infection due to other mycobacteria
179	A310 Pulmonary mycobacterial infection
180	A311 Cutaneous mycobacterial infection
181	A318 Other mycobacterial infections
182	A319 Mycobacterial infection, unspecified
183	A32 Listeriosis
184	A320 Cutaneous listeriosis
185	A321 Listerial meningitis and meningoencephalitis
186	A327 Listerial sepsis
187	A328 Other forms of listeriosis
188	A329 Listeriosis, unspecified
189	A33 Tetanus neonatorum
190	A34 Obstetrical tetanus
191	A35 Other tetanus
192	A36 Diphtheria
193	A360 Pharyngeal diphtheria
194	A361 Nasopharyngeal diphtheria
195	A362 Laryngeal diphtheria
196	A363 Cutaneous diphtheria
197	A368 Other diphtheria
198	A369 Diphtheria, unspecified
199	A37 Whooping cough
200	A370 Whooping cough due to Bordetella pertussis
201	A371 Whooping cough due to Bordetella parapertussis
202	A378 Whooping cough due to other Bordetella species
203	A379 Whooping cough, unspecified
204	A38 Scarlet fever
205	A39 Meningococcal infection
206	A390 Meningococcal meningitis
207	A391 Waterhouse-Friderichsen syndrome
208	A392 Acute meningococcaemia
209	A393 Chronic meningococcaemia
210	A394 Meningococcaemia, unspecified
211	A395 Meningococcal heart disease
212	A398 Other meningococcal infections
213	A399 Meningococcal infection, unspecified
214	A40 Streptococcal sepsis
215	A400 Sepsis due to streptococcus, group A
216	A401 Sepsis due to streptococcus, group B
217	A402 Sepsis due to streptococcus, group D
218	A403 Sepsis due to Streptococcus pneumoniae
219	A408 Other streptococcal sepsis
220	A409 Streptococcal sepsis, unspecified
221	A410 Sepsis due to Staphylococcus aureus
222	A411 Sepsis due to other specified staphylococcus
223	A412 Sepsis due to unspecified staphylococcus
224	A413 Sepsis due to Haemophilus influenzae
225	A414 Sepsis due to anaerobes
226	A415 Sepsis due to other Gram-negative organisms
227	A418 Other specified sepsis
228	A419 Sepsis, unspecified
229	A42 Actinomycosis
230	A420 Pulmonary actinomycosis
231	A421 Abdominal actinomycosis
232	A422 Cervicofacial actinomycosis
233	A427 Actinomycotic sepsis
234	A428 Other forms of actinomycosis
235	A429 Actinomycosis, unspecified
236	A43 Nocardiosis
237	A430 Pulmonary nocardiosis
238	A431 Cutaneous nocardiosis
239	A438 Other forms of nocardiosis
240	A439 Nocardiosis, unspecified
241	A44 Bartonellosis
242	A440 Systemic bartonellosis
243	A441 Cutaneous and mucocutaneous bartonellosis
244	A448 Other forms of bartonellosis
245	A449 Bartonellosis, unspecified
246	A46 Erysipelas
247	A48 Other bacterial diseases, not elsewhere classified
248	A480 Gas gangrene
249	A481 Legionnaires disease
250	A482 Nonpneumonic Legionnaires disease [Pontiac fever]
251	A483 Toxic shock syndrome
252	A484 Brazilian purpuric fever
253	A488 Other specified bacterial diseases
254	A49 Bacterial infection of unspecified site
255	A490 Staphylococcal infection, unspecified site
256	A491 Streptococcal infection, unspecified site
257	A492 Haemophilus influenzae infection, unspecified site
258	A493 Mycoplasma infection, unspecified site
259	A498 Other bacterial infections of unspecified site
260	A499 Bacterial infection, unspecified
261	A50 Congenital syphilis
262	A500 Early congenital syphilis, symptomatic
263	A501 Early congenital syphilis, latent
264	A502 Early congenital syphilis, unspecified
265	A503 Late congenital syphilitic oculopathy
266	A504 Late congenital neurosyphilis [juvenile neurosyphilis]
267	A505 Other late congenital syphilis, symptomatic
268	A506 Late congenital syphilis, latent
269	A507 Late congenital syphilis, unspecified
270	A509 Congenital syphilis, unspecified
271	A51 Early syphilis
272	A510 Primary genital syphilis
273	A511 Primary anal syphilis
274	A512 Primary syphilis of other sites
275	A513 Secondary syphilis of skin and mucous membranes
276	A514 Other secondary syphilis
277	A515 Early syphilis, latent
278	A519 Early syphilis, unspecified
279	A52 Late syphilis
280	A520 Cardiovascular syphilis
281	A521 Symptomatic neurosyphilis
282	A522 Asymptomatic neurosyphilis
283	A523 Neurosyphilis, unspecified
284	A527 Other symptomatic late syphilis
285	A528 Late syphilis, latent
286	A529 Late syphilis, unspecified
287	A53 Other and unspecified syphilis
288	A530 Latent syphilis, unspecified as early or late
289	A539 Syphilis, unspecified
290	A54 Gonococcal infection
291	A540 Gonococcal infection of lower genitourinary tract without periurethral or accessory gland abscess
292	A541 Gonococcal infection of lower genitourinary tract with periurethral and accessory gland abscess
293	A542 Gonococcal pelviperitonitis and other gonococcal genitourinary infections
294	A543 Gonococcal infection of eye
295	A544 Gonococcal infection of musculoskeletal system
296	A545 Gonococcal pharyngitis
297	A546 Gonococcal infection of anus and rectum
298	A548 Other gonococcal infections
299	A549 Gonococcal infection, unspecified
300	A55 Chlamydial lymphogranuloma (venereum)
301	A56 Other sexually transmitted chlamydial diseases
302	A560 Chlamydial infection of lower genitourinary tract
303	A561 Chlamydial infection of pelviperitoneum and other genitourinary organs
304	A562 Chlamydial infection of genitourinary tract, unspecified
305	A563 Chlamydial infection of anus and rectum
306	A564 Chlamydial infection of pharynx
307	A568 Sexually transmitted chlamydial infection of other sites
308	A57 Chancroid
309	A58 Granuloma inguinale
310	A59 Trichomoniasis
311	A590 Urogenital trichomoniasis
312	A598 Trichomoniasis of other sites
313	A599 Trichomoniasis, unspecified
314	A60 Anogenital herpesviral [herpes simplex] infection
315	A600 Herpesviral infection of genitalia and urogenital tract
316	A601 Herpesviral infection of perianal skin and rectum
317	A609 Anogenital herpesviral infection, unspecified
318	A63 Other predominantly sexually transmitted diseases, not elsewhere classified
319	A630 Anogenital (venereal) warts
320	A638 Other specified predominantly sexually transmitted diseases
321	A64 Unspecified sexually transmitted disease
322	A65 Nonvenereal syphilis
323	A66 Yaws
324	A660 Initial lesions of yaws
325	A661 Multiple papillomata and wet crab yaws
326	A662 Other early skin lesions of yaws
327	A663 Hyperkeratosis of yaws
328	A664 Gummata and ulcers of yaws
329	A665 Gangosa
330	A666 Bone and joint lesions of yaws
331	A667 Other manifestations of yaws
332	A668 Latent yaws
333	A669 Yaws, unspecified
334	A67 Pinta [carate]
335	A670 Primary lesions of pinta
336	A671 Intermediate lesions of pinta
337	A672 Late lesions of pinta
338	A673 Mixed lesions of pinta
339	A679 Pinta, unspecified
340	A68 Relapsing fevers
341	A680 Louse-borne relapsing fever
342	A681 Tick-borne relapsing fever
343	A689 Relapsing fever, unspecified
344	A69 Other spirochaetal infections
345	A690 Necrotizing ulcerative stomatitis
346	A691 Other Vincent infections
347	A692 Lyme disease
348	A698 Other specified spirochaetal infections
349	A699 Spirochaetal infection, unspecified
350	A70 Chlamydia psittaci infection
351	A71 Trachoma
352	A710 Initial stage of trachoma
353	A711 Active stage of trachoma
354	A719 Trachoma, unspecified
355	A74 Other diseases caused by chlamydiae
356	A740 Chlamydial conjunctivitis
357	A748 Other chlamydial diseases
358	A749 Chlamydial infection, unspecified
359	A75 Typhus fever
360	A750 Epidemic louse-borne typhus fever due to Rickettsia prowazekii
361	A751 Recrudescent typhus [Brill disease]
362	A752 Typhus fever due to Rickettsia typhi
363	A753 Typhus fever due to Rickettsia tsutsugamushi
364	A759 Typhus fever, unspecified
365	A77 Spotted fever [tick-borne rickettsioses]
366	A770 Spotted fever due to Rickettsia rickettsii
367	A771 Spotted fever due to Rickettsia conorii
368	A772 Spotted fever due to Rickettsia sibirica
369	A773 Spotted fever due to Rickettsia australis
370	A778 Other spotted fevers
371	A779 Spotted fever, unspecified
372	A78 Q fever
373	A79 Other rickettsioses
374	A790 Trench fever
375	A791 Rickettsialpox due to Rickettsia akari
376	A798 Other specified rickettsioses
377	A799 Rickettsiosis, unspecified
378	A80 Acute poliomyelitis
379	A800 Acute paralytic poliomyelitis, vaccine-associated
380	A801 Acute paralytic poliomyelitis, wild virus, imported
381	A802 Acute paralytic poliomyelitis, wild virus, indigenous
382	A803 Acute paralytic poliomyelitis, other and unspecified
383	A804 Acute nonparalytic poliomyelitis
384	A809 Acute poliomyelitis, unspecified
385	A81 Atypical virus infections of central nervous system
386	A810 Creutzfeldt-Jakob disease
387	A811 Subacute sclerosing panencephalitis
388	A812 Progressive multifocal leukoencephalopathy
389	A818 Other atypical virus infections of central nervous system
390	A819 Atypical virus infection of central nervous system, unspecified
391	A82 Rabies
392	A820 Sylvatic rabies
393	A821 Urban rabies
394	A829 Rabies, unspecified
395	A83 Mosquito-borne viral encephalitis
396	A830 Japanese encephalitis
397	A831 Western equine encephalitis
398	A832 Eastern equine encephalitis
399	A833 St Louis encephalitis
400	A834 Australian encephalitis
401	A835 California encephalitis
402	A836 Rocio virus disease
403	A838 Other mosquito-borne viral encephalitis
404	A839 Mosquito-borne viral encephalitis, unspecified
405	A84 Tick-borne viral encephalitis
406	A840 Far Eastern tick-borne encephalitis [Russian spring-summer encephalitis]
407	A841 Central European tick-borne encephalitis
408	A848 Other tick-borne viral encephalitis
409	A849 Tick-borne viral encephalitis, unspecified
410	A85 Other viral encephalitis, not elsewhere classified
411	A850 Enteroviral encephalitis
412	A851 Adenoviral encephalitis
413	A852 Arthropod-borne viral encephalitis, unspecified
414	A858 Other specified viral encephalitis
415	A86 Unspecified viral encephalitis
416	A87 Viral meningitis
417	A870 Enteroviral meningitis
418	A871 Adenoviral meningitis
419	A872 Lymphocytic choriomeningitis
420	A878 Other viral meningitis
421	A879 Viral meningitis, unspecified
422	A88 Other viral infections of central nervous system, not elsewhere classified
423	A880 Enteroviral exanthematous fever [Boston exanthem]
424	A881 Epidemic vertigo
425	A888 Other specified viral infections of central nervous system
426	A89 Unspecified viral infection of central nervous system
427	A90 Dengue fever [classical dengue]
428	A91 Dengue haemorrhagic fever
429	A92 Other mosquito-borne viral fevers
430	A920 Chikungunya virus disease
431	A921 O'nyong-nyong fever
432	A922 Venezuelan equine fever
433	A923 West Nile virus infection
434	A924 Rift Valley fever
435	A928 Other specified mosquito-borne viral fevers
436	A929 Mosquito-borne viral fever, unspecified
437	A93 Other arthropod-borne viral fevers, not elsewhere classified
438	A930 Oropouche virus disease
439	A931 Sandfly fever
440	A932 Colorado tick fever
441	A938 Other specified arthropod-borne viral fevers
442	A94 Unspecified arthropod-borne viral fever
443	A95 Yellow fever
444	A950 Sylvatic yellow fever
445	A951 Urban yellow fever
446	A959 Yellow fever, unspecified
447	A96 Arenaviral haemorrhagic fever
448	A960 Junin haemorrhagic fever
449	A961 Machupo haemorrhagic fever
450	A962 Lassa fever
451	A968 Other arenaviral haemorrhagic fevers
452	A969 Arenaviral haemorrhagic fever, unspecified
453	A98 Other viral haemorrhagic fevers, not elsewhere classified
454	A980 Crimean-Congo haemorrhagic fever
455	A981 Omsk haemorrhagic fever
456	A982 Kyasanur Forest disease
457	A983 Marburg virus disease
458	A984 Ebola virus disease
459	A985 Haemorrhagic fever with renal syndrome
460	A988 Other specified viral haemorrhagic fevers
461	A99 Unspecified viral haemorrhagic fever
462	B00 Herpesviral [herpes simplex] infections
463	B000 Eczema herpeticum
464	B001 Herpesviral vesicular dermatitis
465	B002 Herpesviral gingivostomatitis and pharyngotonsillitis
466	B003 Herpesviral meningitis
467	B004 Herpesviral encephalitis
468	B005 Herpesviral ocular disease
469	B007 Disseminated herpesviral disease
470	B008 Other forms of herpesviral infection
471	B009 Herpesviral infection, unspecified
472	B01 Varicella [chickenpox]
473	B010 Varicella meningitis
474	B011 Varicella encephalitis
475	B012 Varicella pneumonia
476	B018 Varicella with other complications
477	B019 Varicella without complication
478	B02 Zoster [herpes zoster]
479	B020 Zoster encephalitis
480	B021 Zoster meningitis
481	B022 Zoster with other nervous system involvement
482	B023 Zoster ocular disease
483	B027 Disseminated zoster
484	B028 Zoster with other complications
485	B029 Zoster without complication
486	B03 Smallpox
487	B04 Monkeypox
488	B05 Measles
489	B050 Measles complicated by encephalitis
490	B051 Measles complicated by meningitis
491	B052 Measles complicated by pneumonia
492	B053 Measles complicated by otitis media
493	B054 Measles with intestinal complications
494	B058 Measles with other complications
495	B059 Measles without complication
496	B06 Rubella [German measles]
497	B060 Rubella with neurological complications
498	B068 Rubella with other complications
499	B069 Rubella without complication
500	B07 Viral warts
501	B08 Other viral infections characterized by skin and mucous membrane lesions, not elsewhere classified
502	B080 Other orthopoxvirus infections
503	B081 Molluscum contagiosum
504	B082 Exanthema subitum [sixth disease]
505	B083 Erythema infectiosum [fifth disease]
506	B084 Enteroviral vesicular stomatitis with exanthem
507	B085 Enteroviral vesicular pharyngitis
508	B088 Other specified viral infections characterized by skin and mucous membrane lesions
509	B09 Unspecified viral infection characterized by skin and mucous membrane lesions
510	B15 Acute hepatitis A
511	B150 Hepatitis A with hepatic coma
512	B159 Hepatitis A without hepatic coma
513	B16 Acute hepatitis B
514	B160 Acute hepatitis B with delta-agent (coinfection) with hepatic coma
515	B161 Acute hepatitis B with delta-agent (coinfection) without hepatic coma
516	B162 Acute hepatitis B without delta-agent with hepatic coma
517	B169 Acute hepatitis B without delta-agent and without hepatic coma
518	B17 Other acute viral hepatitis
519	B170 Acute delta-(super)infection of hepatitis B carrier
520	B171 Acute hepatitis C
521	B172 Acute hepatitis E
522	B178 Other specified acute viral hepatitis
523	B179 Acute viral hepatitis, unspecified
524	B18 Chronic viral hepatitis
525	B180 Chronic viral hepatitis B with delta-agent
526	B181 Chronic viral hepatitis B without delta-agent
527	B182 Chronic viral hepatitis C
528	B188 Other chronic viral hepatitis
529	B189 Chronic viral hepatitis, unspecified
530	B19 Unspecified viral hepatitis
531	B190 Unspecified viral hepatitis with hepatic coma
532	B199 Unspecified viral hepatitis without hepatic coma
533	B20 Human immunodeficiency virus [HIV] disease resulting in infectious and parasitic diseases
534	B200 HIV disease resulting in mycobacterial infection
535	B201 HIV disease resulting in other bacterial infections
536	B202 HIV disease resulting in cytomegaloviral disease
537	B203 HIV disease resulting in other viral infections
538	B204 HIV disease resulting in candidiasis
539	B205 HIV disease resulting in other mycoses
540	B206 HIV disease resulting in Pneumocystis jirovecii pneumonia
541	B207 HIV disease resulting in multiple infections
542	B208 HIV disease resulting in other infectious and parasitic diseases
543	B209 HIV disease resulting in unspecified infectious or parasitic disease
544	B21 Human immunodeficiency virus [HIV] disease resulting in malignant neoplasms
545	B210 HIV disease resulting in Kaposi sarcoma
546	B211 HIV disease resulting in Burkitt lymphoma
547	B212 HIV disease resulting in other types of non-Hodgkin lymphoma
548	B213 HIV disease resulting in other malignant neoplasms of lymphoid, haematopoietic and related tissue
549	B217 HIV disease resulting in multiple malignant neoplasms
550	B218 HIV disease resulting in other malignant neoplasms
551	B219 HIV disease resulting in unspecified malignant neoplasm
552	B22 Human immunodeficiency virus [HIV] disease resulting in other specified diseases
553	B220 HIV disease resulting in encephalopathy
554	B221 HIV disease resulting in lymphoid interstitial pneumonitis
555	B222 HIV disease resulting in wasting syndrome
556	B227 HIV disease resulting in multiple diseases classified elsewhere
557	B23 Human immunodeficiency virus [HIV] disease resulting in other conditions
558	B230 Acute HIV infection syndrome
559	B231 HIV disease resulting in (persistent) generalized lymphadenopathy
560	B232 HIV disease resulting in haematological and immunological abnormalities, not elsewhere classified
561	B238 HIV disease resulting in other specified conditions
562	B24 Unspecified human immunodeficiency virus [HIV] disease
563	B25 Cytomegaloviral disease
564	B250 Cytomegaloviral pneumonitis
565	B251 Cytomegaloviral hepatitis
566	B252 Cytomegaloviral pancreatitis
567	B258 Other cytomegaloviral diseases
568	B259 Cytomegaloviral disease, unspecified
569	B26 Mumps
570	B260 Mumps orchitis
571	B261 Mumps meningitis
572	B262 Mumps encephalitis
573	B263 Mumps pancreatitis
574	B268 Mumps with other complications
575	B269 Mumps without complication
576	B27 Infectious mononucleosis
577	B270 Gammaherpesviral mononucleosis
578	B271 Cytomegaloviral mononucleosis
579	B278 Other infectious mononucleosis
580	B279 Infectious mononucleosis, unspecified
581	B30 Viral conjunctivitis
582	B300 Keratoconjunctivitis due to adenovirus
583	B301 Conjunctivitis due to adenovirus
584	B302 Viral pharyngoconjunctivitis
585	B303 Acute epidemic haemorrhagic conjunctivitis (enteroviral)
586	B308 Other viral conjunctivitis
587	B309 Viral conjunctivitis, unspecified
588	B33 Other viral diseases, not elsewhere classified
589	B330 Epidemic myalgia
590	B331 Ross River disease
591	B332 Viral carditis
592	B333 Retrovirus infections, not elsewhere classified
593	B334 Hantavirus (cardio-)pulmonary syndrome [HPS] [HCPS]
594	B338 Other specified viral diseases
595	B34 Viral infection of unspecified site
596	B340 Adenovirus infection, unspecified site
597	B341 Enterovirus infection, unspecified site
598	B342 Coronavirus infection, unspecified site
599	B343 Parvovirus infection, unspecified site
600	B344 Papovavirus infection, unspecified site
601	B348 Other viral infections of unspecified site
602	B349 Viral infection, unspecified
603	B35 Dermatophytosis
604	B350 Tinea barbae and tinea capitis
605	B351 Tinea unguium
606	B352 Tinea manuum
607	B353 Tinea pedis
608	B354 Tinea corporis
609	B355 Tinea imbricata
610	B356 Tinea cruris
611	B358 Other dermatophytoses
612	B359 Dermatophytosis, unspecified
613	B36 Other superficial mycoses
614	B360 Pityriasis versicolor
615	B361 Tinea nigra
616	B362 White piedra
617	B363 Black piedra
618	B368 Other specified superficial mycoses
619	B369 Superficial mycosis, unspecified
620	B37 Candidiasis
621	B370 Candidal stomatitis
622	B371 Pulmonary candidiasis
623	B372 Candidiasis of skin and nail
624	B373 Candidiasis of vulva and vagina
625	B374 Candidiasis of other urogenital sites
626	B375 Candidal meningitis
627	B376 Candidal endocarditis
628	B377 Candidal sepsis
629	B378 Candidiasis of other sites
630	B379 Candidiasis, unspecified
631	B38 Coccidioidomycosis
632	B380 Acute pulmonary coccidioidomycosis
633	B381 Chronic pulmonary coccidioidomycosis
634	B382 Pulmonary coccidioidomycosis, unspecified
635	B383 Cutaneous coccidioidomycosis
636	B384 Coccidioidomycosis meningitis
637	B387 Disseminated coccidioidomycosis
638	B388 Other forms of coccidioidomycosis
639	B389 Coccidioidomycosis, unspecified
640	B39 Histoplasmosis
641	B390 Acute pulmonary histoplasmosis capsulati
642	B391 Chronic pulmonary histoplasmosis capsulati
643	B392 Pulmonary histoplasmosis capsulati, unspecified
644	B393 Disseminated histoplasmosis capsulati
645	B394 Histoplasmosis capsulati, unspecified
646	B395 Histoplasmosis duboisii
647	B399 Histoplasmosis, unspecified
648	B40 Blastomycosis
649	B400 Acute pulmonary blastomycosis
650	B401 Chronic pulmonary blastomycosis
651	B402 Pulmonary blastomycosis, unspecified
652	B403 Cutaneous blastomycosis
653	B407 Disseminated blastomycosis
654	B408 Other forms of blastomycosis
655	B409 Blastomycosis, unspecified
656	B41 Paracoccidioidomycosis
657	B410 Pulmonary paracoccidioidomycosis
658	B417 Disseminated paracoccidioidomycosis
659	B418 Other forms of paracoccidioidomycosis
660	B419 Paracoccidioidomycosis, unspecified
661	B42 Sporotrichosis
662	B420 Pulmonary sporotrichosis
663	B421 Lymphocutaneous sporotrichosis
664	B427 Disseminated sporotrichosis
665	B428 Other forms of sporotrichosis
666	B429 Sporotrichosis, unspecified
667	B43 Chromomycosis and phaeomycotic abscess
668	B430 Cutaneous chromomycosis
669	B431 Phaeomycotic brain abscess
670	B432 Subcutaneous phaeomycotic abscess and cyst
671	B438 Other forms of chromomycosis
672	B439 Chromomycosis, unspecified
673	B44 Aspergillosis
674	B440 Invasive pulmonary aspergillosis
675	B441 Other pulmonary aspergillosis
676	B442 Tonsillar aspergillosis
677	B447 Disseminated aspergillosis
678	B448 Other forms of aspergillosis
679	B449 Aspergillosis, unspecified
680	B45 Cryptococcosis
681	B450 Pulmonary cryptococcosis
682	B451 Cerebral cryptococcosis
683	B452 Cutaneous cryptococcosis
684	B453 Osseous cryptococcosis
685	B457 Disseminated cryptococcosis
686	B458 Other forms of cryptococcosis
687	B459 Cryptococcosis, unspecified
688	B46 Zygomycosis
689	B460 Pulmonary mucormycosis
690	B461 Rhinocerebral mucormycosis
691	B462 Gastrointestinal mucormycosis
692	B463 Cutaneous mucormycosis
693	B464 Disseminated mucormycosis
694	B465 Mucormycosis, unspecified
695	B468 Other zygomycoses
696	B469 Zygomycosis, unspecified
697	B47 Mycetoma
698	B470 Eumycetoma
699	B471 Actinomycetoma
700	B479 Mycetoma, unspecified
701	B48 Other mycoses, not elsewhere classified
702	B480 Lobomycosis
703	B481 Rhinosporidiosis
704	B482 Allescheriasis
705	B483 Geotrichosis
706	B484 Penicillosis
707	B487 Opportunistic mycoses
708	B488 Other specified mycoses
709	B49 Unspecified mycosis
710	B50 Plasmodium falciparum malaria
711	B500 Plasmodium falciparum malaria with cerebral complications
712	B508 Other severe and complicated Plasmodium falciparum malaria
713	B509 Plasmodium falciparum malaria, unspecified
714	B51 Plasmodium vivax malaria
715	B510 Plasmodium vivax malaria with rupture of spleen
716	B518 Plasmodium vivax malaria with other complications
717	B519 Plasmodium vivax malaria without complication
718	B52 Plasmodium malariae malaria
719	B520 Plasmodium malariae malaria with nephropathy
720	B528 Plasmodium malariae malaria with other complications
721	B529 Plasmodium malariae malaria without complication
722	B53 Other parasitologically confirmed malaria
723	B530 Plasmodium ovale malaria
724	B531 Malaria due to simian plasmodia
725	B538 Other parasitologically confirmed malaria, not elsewhere classified
726	B54 Unspecified malaria
727	B55 Leishmaniasis
728	B550 Visceral leishmaniasis
729	B551 Cutaneous leishmaniasis
730	B552 Mucocutaneous leishmaniasis
731	B559 Leishmaniasis, unspecified
732	B56 African trypanosomiasis
733	B560 Gambiense trypanosomiasis
734	B561 Rhodesiense trypanosomiasis
735	B569 African trypanosomiasis, unspecified
736	B57 Chagas disease
737	B570 Acute Chagas disease with heart involvement
738	B571 Acute Chagas disease without heart involvement
739	B572 Chagas disease (chronic) with heart involvement
740	B573 Chagas disease (chronic) with digestive system involvement
741	B574 Chagas disease (chronic) with nervous system involvement
742	B575 Chagas disease (chronic) with other organ involvement
743	B58 Toxoplasmosis
744	B580 Toxoplasma oculopathy
745	B581 Toxoplasma hepatitis
746	B582 Toxoplasma meningoencephalitis
747	B583 Pulmonary toxoplasmosis
748	B588 Toxoplasmosis with other organ involvement
749	B589 Toxoplasmosis, unspecified
750	B59 Pneumocystosis
751	B60 Other protozoal diseases, not elsewhere classified
752	B600 Babesiosis
753	B601 Acanthamoebiasis
754	B602 Naegleriasis
755	B608 Other specified protozoal diseases
756	B64 Unspecified protozoal disease
757	B65 Schistosomiasis [bilharziasis]
758	B650 Schistosomiasis due to Schistosoma haematobium [urinary schistosomiasis]
759	B651 Schistosomiasis due to Schistosoma mansoni [intestinal schistosomiasis]
760	B652 Schistosomiasis due to Schistosoma japonicum
761	B653 Cercarial dermatitis
762	B658 Other schistosomiases
763	B659 Schistosomiasis, unspecified
764	B66 Other fluke infections
765	B660 Opisthorchiasis
766	B661 Clonorchiasis
767	B662 Dicrocoeliasis
768	B663 Fascioliasis
769	B664 Paragonimiasis
770	B665 Fasciolopsiasis
771	B668 Other specified fluke infections
772	B669 Fluke infection, unspecified
773	B67 Echinococcosis
774	B670 Echinococcus granulosus infection of liver
775	B671 Echinococcus granulosus infection of lung
776	B672 Echinococcus granulosus infection of bone
777	B673 Echinococcus granulosus infection, other and multiple sites
778	B674 Echinococcus granulosus infection, unspecified
779	B675 Echinococcus multilocularis infection of liver
780	B676 Echinococcus multilocularis infection, other and multiple sites
781	B677 Echinococcus multilocularis infection, unspecified
782	B678 Echinococcosis, unspecified, of liver
783	B679 Echinococcosis, other and unspecified
784	B68 Taeniasis
785	B680 Taenia solium taeniasis
786	B681 Taenia saginata taeniasis
787	B689 Taeniasis, unspecified
788	B69 Cysticercosis
789	B690 Cysticercosis of central nervous system
790	B691 Cysticercosis of eye
791	B698 Cysticercosis of other sites
792	B699 Cysticercosis, unspecified
793	B70 Diphyllobothriasis and sparganosis
794	B700 Diphyllobothriasis
795	B701 Sparganosis
796	B71 Other cestode infections
797	B710 Hymenolepiasis
798	B711 Dipylidiasis
799	B718 Other specified cestode infections
800	B719 Cestode infection, unspecified
801	B72 Dracunculiasis
802	B73 Onchocerciasis
803	B74 Filariasis
804	B740 Filariasis due to Wuchereria bancrofti
805	B741 Filariasis due to Brugia malayi
806	B742 Filariasis due to Brugia timori
807	B743 Loiasis
808	B744 Mansonelliasis
809	B748 Other filariases
810	B749 Filariasis, unspecified
811	B75 Trichinellosis
812	B76 Hookworm diseases
813	B760 Ancylostomiasis
814	B761 Necatoriasis
815	B768 Other hookworm diseases
816	B769 Hookworm disease, unspecified
817	B77 Ascariasis
818	B770 Ascariasis with intestinal complications
819	B778 Ascariasis with other complications
820	B779 Ascariasis, unspecified
821	B78 Strongyloidiasis
822	B780 Intestinal strongyloidiasis
823	B781 Cutaneous strongyloidiasis
824	B787 Disseminated strongyloidiasis
825	B789 Strongyloidiasis, unspecified
826	B79 Trichuriasis
827	B80 Enterobiasis
828	B81 Other intestinal helminthiases, not elsewhere classified
829	B810 Anisakiasis
830	B811 Intestinal capillariasis
831	B812 Trichostrongyliasis
832	B813 Intestinal angiostrongyliasis
833	B814 Mixed intestinal helminthiases
834	B818 Other specified intestinal helminthiases
835	B82 Unspecified intestinal parasitism
836	B820 Intestinal helminthiasis, unspecified
837	B829 Intestinal parasitism, unspecified
838	B83 Other helminthiases
839	B830 Visceral larva migrans
840	B831 Gnathostomiasis
841	B832 Angiostrongyliasis due to Parastrongylus cantonensis
842	B833 Syngamiasis
843	B834 Internal hirudiniasis
844	B838 Other specified helminthiases
845	B839 Helminthiasis, unspecified
846	B85 Pediculosis and phthiriasis
847	B850 Pediculosis due to Pediculus humanus capitis
848	B851 Pediculosis due to Pediculus humanus corporis
849	B852 Pediculosis, unspecified
850	B853 Phthiriasis
851	B854 Mixed pediculosis and phthiriasis
852	B86 Scabies
853	B87 Myiasis
854	B870 Cutaneous myiasis
855	B871 Wound myiasis
856	B872 Ocular myiasis
857	B873 Nasopharyngeal myiasis
858	B874 Aural myiasis
859	B878 Myiasis of other sites
860	B879 Myiasis, unspecified
861	B88 Other infestations
862	B880 Other acariasis
863	B881 Tungiasis [sandflea infestation]
864	B882 Other arthropod infestations
865	B883 External hirudiniasis
866	B888 Other specified infestations
867	B889 Infestation, unspecified
868	B89 Unspecified parasitic disease
869	B90 Sequelae of tuberculosis
870	B900 Sequelae of central nervous system tuberculosis
871	B901 Sequelae of genitourinary tuberculosis
872	B902 Sequelae of tuberculosis of bones and joints
873	B908 Sequelae of tuberculosis of other organs
874	B909 Sequelae of respiratory and unspecified tuberculosis
875	B91 Sequelae of poliomyelitis
876	B92 Sequelae of leprosy
877	B94 Sequelae of other and unspecified infectious and parasitic diseases
878	B940 Sequelae of trachoma
879	B941 Sequelae of viral encephalitis
880	B942 Sequelae of viral hepatitis
881	B948 Sequelae of other specified infectious and parasitic diseases
882	B949 Sequelae of unspecified infectious or parasitic disease
883	B95 Streptococcus and staphylococcus as the cause of diseases classified to other chapters
884	B950 Streptococcus, group A, as the cause of diseases classified to other chapters
885	B951 Streptococcus, group B, as the cause of diseases classified to other chapters
886	B952 Streptococcus, group D, as the cause of diseases classified to other chapters
887	B953 Streptococcus pneumoniae as the cause of diseases classified to other chapters
888	B954 Other streptococcus as the cause of diseases classified to other chapters
889	B955 Unspecified streptococcus as the cause of diseases classified to other chapters
890	B956 Staphylococcus aureus as the cause of diseases classified to other chapters
891	C111 Malignant neoplasm: Posterior wall of nasopharynx
892	B957 Other staphylococcus as the cause of diseases classified to other chapters
893	B958 Unspecified staphylococcus as the cause of diseases classified to other chapters
894	B96 Other specified bacterial agents as the cause of diseases classified to other chapters
895	B960 Mycoplasma pneumoniae [M. pneumoniae] as the cause of diseases classified to other chapters
896	B961 Klebsiella pneumoniae [K. pneumoniae] as the cause of diseases classified to other chapters
897	B962 Escherichia coli [E. coli] as the cause of diseases classified to other chapters
898	B963 Haemophilus influenzae [H. influenzae] as the cause of diseases classified to other chapters
899	B964 Proteus (mirabilis)(morganii) as the cause of diseases classified to other chapters
900	B965 Pseudomonas (aeruginosa) as the cause of diseases classified to other chapters
901	B966 Bacillus fragilis [B. fragilis] as the cause of diseases classified to other chapters
902	B967 Clostridium perfringens [C. perfringens] as the cause of diseases classified to other chapters
903	B968 Other specified bacterial agents as the cause of diseases classified to other chapters
904	B97 Viral agents as the cause of diseases classified to other chapters
905	B970 Adenovirus as the cause of diseases classified to other chapters
906	B971 Enterovirus as the cause of diseases classified to other chapters
907	B972 Coronavirus as the cause of diseases classified to other chapters
908	B973 Retrovirus as the cause of diseases classified to other chapters
909	B974 Respiratory syncytial virus as the cause of diseases classified to other chapters
910	B975 Reovirus as the cause of diseases classified to other chapters
911	B976 Parvovirus as the cause of diseases classified to other chapters
912	B977 Papillomavirus as the cause of diseases classified to other chapters
913	B978 Other viral agents as the cause of diseases classified to other chapters
914	B98 Other specified infectious agents as the cause of diseases classified to other chapters
915	B980 Helicobacter pylori [H.pylori] as the cause of diseases classified to other chapters
916	B981 Vibrio vulnificus as the cause of diseases classified to other chapters
917	B99 Other and unspecified infectious diseases
918	C00 Malignant neoplasm of lip
919	C000 Malignant neoplasm: External upper lip
920	C001 Malignant neoplasm: External lower lip
921	C002 Malignant neoplasm: External lip, unspecified
922	C003 Malignant neoplasm: Upper lip, inner aspect
923	C004 Malignant neoplasm: Lower lip, inner aspect
924	C005 Malignant neoplasm: Lip, unspecified, inner aspect
925	C006 Malignant neoplasm: Commissure of lip
926	C008 Malignant neoplasm: Overlapping lesion of lip
927	C009 Malignant neoplasm: Lip, unspecified
928	C01 Malignant neoplasm of base of tongue
929	C02 Malignant neoplasm of other and unspecified parts of tongue
930	C020 Malignant neoplasm: Dorsal surface of tongue
931	C021 Malignant neoplasm: Border of tongue
932	C022 Malignant neoplasm: Ventral surface of tongue
933	C023 Malignant neoplasm: Anterior two-thirds of tongue, part unspecified
934	C024 Malignant neoplasm: Lingual tonsil
935	C028 Malignant neoplasm: Overlapping lesion of tongue
936	C029 Malignant neoplasm: Tongue, unspecified
937	C03 Malignant neoplasm of gum
938	C030 Malignant neoplasm: Upper gum
939	C031 Malignant neoplasm: Lower gum
940	C039 Malignant neoplasm: Gum, unspecified
941	C04 Malignant neoplasm of floor of mouth
942	C040 Malignant neoplasm: Anterior floor of mouth
943	C041 Malignant neoplasm: Lateral floor of mouth
944	C048 Malignant neoplasm: Overlapping lesion of floor of mouth
945	C049 Malignant neoplasm: Floor of mouth, unspecified
946	C05 Malignant neoplasm of palate
947	C050 Malignant neoplasm: Hard palate
948	C051 Malignant neoplasm: Soft palate
949	C052 Malignant neoplasm: Uvula
950	C058 Malignant neoplasm: Overlapping lesion of palate
951	C059 Malignant neoplasm: Palate, unspecified
952	C06 Malignant neoplasm of other and unspecified parts of mouth
953	C060 Malignant neoplasm: Cheek mucosa
954	C061 Malignant neoplasm: Vestibule of mouth
955	C062 Malignant neoplasm: Retromolar area
956	C068 Malignant neoplasm: Overlapping lesion of other and unspecified parts of mouth
957	C069 Malignant neoplasm: Mouth, unspecified
958	C07 Malignant neoplasm of parotid gland
959	C08 Malignant neoplasm of other and unspecified major salivary glands
960	C080 Malignant neoplasm: Submandibular gland
961	C081 Malignant neoplasm: Sublingual gland
962	C088 Malignant neoplasm: Overlapping lesion of major salivary glands
963	C089 Malignant neoplasm: Major salivary gland, unspecified
964	C09 Malignant neoplasm of tonsil
965	C090 Malignant neoplasm: Tonsillar fossa
966	C091 Malignant neoplasm: Tonsillar pillar (anterior)(posterior)
967	C098 Malignant neoplasm: Overlapping lesion of tonsil
968	C099 Malignant neoplasm: Tonsil, unspecified
969	C10 Malignant neoplasm of oropharynx
970	C100 Malignant neoplasm: Vallecula
971	C101 Malignant neoplasm: Anterior surface of epiglottis
972	C102 Malignant neoplasm: Lateral wall of oropharynx
973	C103 Malignant neoplasm: Posterior wall of oropharynx
974	C104 Malignant neoplasm: Branchial cleft
975	C108 Malignant neoplasm: Overlapping lesion of oropharynx
976	C109 Malignant neoplasm: Oropharynx, unspecified
977	C11 Malignant neoplasm of nasopharynx
978	C110 Malignant neoplasm: Superior wall of nasopharynx
979	C112 Malignant neoplasm: Lateral wall of nasopharynx
980	C113 Malignant neoplasm: Anterior wall of nasopharynx
981	C118 Malignant neoplasm: Overlapping lesion of nasopharynx
982	C119 Malignant neoplasm: Nasopharynx, unspecified
983	C12 Malignant neoplasm of piriform sinus
984	C13 Malignant neoplasm of hypopharynx
985	C130 Malignant neoplasm: Postcricoid region
986	C131 Malignant neoplasm: Aryepiglottic fold, hypopharyngeal aspect
987	C132 Malignant neoplasm: Posterior wall of hypopharynx
988	C138 Malignant neoplasm: Overlapping lesion of hypopharynx
989	C139 Malignant neoplasm: Hypopharynx, unspecified
990	C14 Malignant neoplasm of other and ill-defined sites in the lip, oral cavity and pharynx
991	C140 Malignant neoplasm: Pharynx, unspecified
992	C142 Malignant neoplasm: Waldeyer ring
993	C148 Malignant neoplasm: Overlapping lesion of lip, oral cavity and pharynx
994	C15 Malignant neoplasm of oesophagus
995	C150 Malignant neoplasm: Cervical part of oesophagus
996	C151 Malignant neoplasm: Thoracic part of oesophagus
997	C152 Malignant neoplasm: Abdominal part of oesophagus
998	C153 Malignant neoplasm: Upper third of oesophagus
999	E752 Other sphingolipidosis
1000	C154 Malignant neoplasm: Middle third of oesophagus
1001	C155 Malignant neoplasm: Lower third of oesophagus
1002	C158 Malignant neoplasm: Overlapping lesion of oesophagus
1003	C159 Malignant neoplasm: Oesophagus, unspecified
1004	C16 Malignant neoplasm of stomach
1005	C160 Malignant neoplasm: Cardia
1006	C161 Malignant neoplasm: Fundus of stomach
1007	C162 Malignant neoplasm: Body of stomach
1008	C163 Malignant neoplasm: Pyloric antrum
1009	C164 Malignant neoplasm: Pylorus
1010	C165 Malignant neoplasm: Lesser curvature of stomach, unspecified
1011	C166 Malignant neoplasm: Greater curvature of stomach, unspecified
1012	C168 Malignant neoplasm: Overlapping lesion of stomach
1013	C169 Malignant neoplasm: Stomach, unspecified
1014	C17 Malignant neoplasm of small intestine
1015	C170 Malignant neoplasm: Duodenum
1016	C171 Malignant neoplasm: Jejunum
1017	C172 Malignant neoplasm: Ileum
1018	C173 Malignant neoplasm: Meckel diverticulum
1019	C178 Malignant neoplasm: Overlapping lesion of small intestine
1020	C179 Malignant neoplasm: Small intestine, unspecified
1021	C18 Malignant neoplasm of colon
1022	C180 Malignant neoplasm: Caecum
1023	C181 Malignant neoplasm: Appendix
1024	C182 Malignant neoplasm: Ascending colon
1025	C183 Malignant neoplasm: Hepatic flexure
1026	C184 Malignant neoplasm: Transverse colon
1027	C185 Malignant neoplasm: Splenic flexure
1028	C186 Malignant neoplasm: Descending colon
1029	C187 Malignant neoplasm: Sigmoid colon
1030	C188 Malignant neoplasm: Overlapping lesion of colon
1031	C189 Malignant neoplasm: Colon, unspecified
1032	C19 Malignant neoplasm of rectosigmoid junction
1033	C20 Malignant neoplasm of rectum
1034	C21 Malignant neoplasm of anus and anal canal
1035	C210 Malignant neoplasm: Anus, unspecified
1036	C211 Malignant neoplasm: Anal canal
1037	C212 Malignant neoplasm: Cloacogenic zone
1038	C218 Malignant neoplasm: Overlapping lesion of rectum, anus and anal canal
1039	C22 Malignant neoplasm of liver and intrahepatic bile ducts
1040	C220 Malignant neoplasm: Liver cell carcinoma
1041	C221 Malignant neoplasm: Intrahepatic bile duct carcinoma
1042	C222 Malignant neoplasm: Hepatoblastoma
1043	C223 Malignant neoplasm: Angiosarcoma of liver
1044	C224 Malignant neoplasm: Other sarcomas of liver
1045	C227 Malignant neoplasm: Other specified carcinomas of liver
1046	C229 Malignant neoplasm: Liver, unspecified
1047	C23 Malignant neoplasm of gallbladder
1048	C24 Malignant neoplasm of other and unspecified parts of biliary tract
1049	C240 Malignant neoplasm: Extrahepatic bile duct
1050	C241 Malignant neoplasm: Ampulla of Vater
1051	C248 Malignant neoplasm: Overlapping lesion of biliary tract
1052	C249 Malignant neoplasm: Biliary tract, unspecified
1053	C25 Malignant neoplasm of pancreas
1054	C250 Malignant neoplasm: Head of pancreas
1055	C251 Malignant neoplasm: Body of pancreas
1056	C252 Malignant neoplasm: Tail of pancreas
1057	C253 Malignant neoplasm: Pancreatic duct
1058	C254 Malignant neoplasm: Endocrine pancreas
1059	C257 Malignant neoplasm: Other parts of pancreas
1060	C258 Malignant neoplasm: Overlapping lesion of pancreas
1061	C259 Malignant neoplasm: Pancreas, unspecified
1062	C26 Malignant neoplasm of other and ill-defined digestive organs
1063	C260 Malignant neoplasm: Intestinal tract, part unspecified
1064	C261 Malignant neoplasm: Spleen
1065	C268 Malignant neoplasm: Overlapping lesion of digestive system
1066	C269 Malignant neoplasm: Ill-defined sites within the digestive system
1067	C30 Malignant neoplasm of nasal cavity and middle ear
1068	C300 Malignant neoplasm: Nasal cavity
1069	C301 Malignant neoplasm: Middle ear
1070	C31 Malignant neoplasm of accessory sinuses
1071	C310 Malignant neoplasm: Maxillary sinus
1072	C311 Malignant neoplasm: Ethmoidal sinus
1073	C312 Malignant neoplasm: Frontal sinus
1074	C313 Malignant neoplasm: Sphenoidal sinus
1075	C318 Malignant neoplasm: Overlapping lesion of accessory sinuses
1076	C319 Malignant neoplasm: Accessory sinus, unspecified
1077	C32 Malignant neoplasm of larynx
1078	C320 Malignant neoplasm: Glottis
1079	C321 Malignant neoplasm: Supraglottis
1080	C322 Malignant neoplasm: Subglottis
1081	C323 Malignant neoplasm: Laryngeal cartilage
1082	C328 Malignant neoplasm: Overlapping lesion of larynx
1083	C329 Malignant neoplasm: Larynx, unspecified
1084	C33 Malignant neoplasm of trachea
1085	C34 Malignant neoplasm of bronchus and lung
1086	C340 Malignant neoplasm: Main bronchus
1087	C341 Malignant neoplasm: Upper lobe, bronchus or lung
1088	C342 Malignant neoplasm: Middle lobe, bronchus or lung
1089	C343 Malignant neoplasm: Lower lobe, bronchus or lung
1090	C348 Malignant neoplasm: Overlapping lesion of bronchus and lung
1091	C349 Malignant neoplasm: Bronchus or lung, unspecified
1092	C37 Malignant neoplasm of thymus
1093	C38 Malignant neoplasm of heart, mediastinum and pleura
1094	C380 Malignant neoplasm: Heart
1095	C381 Malignant neoplasm: Anterior mediastinum
1096	C382 Malignant neoplasm: Posterior mediastinum
1097	C383 Malignant neoplasm: Mediastinum, part unspecified
1098	C384 Malignant neoplasm: Pleura
1099	C388 Malignant neoplasm: Overlapping lesion of heart, mediastinum and pleura
1100	C39 Malignant neoplasm of other and ill-defined sites in the respiratory system and intrathoracic organs
1101	C390 Malignant neoplasm: Upper respiratory tract, part unspecified
1102	C398 Malignant neoplasm: Overlapping lesion of respiratory and intrathoracic organs
1103	C399 Malignant neoplasm: Ill-defined sites within the respiratory system
1104	C40 Malignant neoplasm of bone and articular cartilage of limbs
1105	C400 Malignant neoplasm: Scapula and long bones of upper limb
1106	C401 Malignant neoplasm: Short bones of upper limb
1107	C402 Malignant neoplasm: Long bones of lower limb
1108	C403 Malignant neoplasm: Short bones of lower limb
1109	C408 Malignant neoplasm: Overlapping lesion of bone and articular cartilage of limbs
1110	C409 Malignant neoplasm: Bone and articular cartilage of limb, unspecified
1111	C41 Malignant neoplasm of bone and articular cartilage of other and unspecified sites
1112	C410 Malignant neoplasm: Bones of skull and face
1113	C411 Malignant neoplasm: Mandible
1114	C412 Malignant neoplasm: Vertebral column
1115	C413 Malignant neoplasm: Ribs, sternum and clavicle
1116	C414 Malignant neoplasm: Pelvic bones, sacrum and coccyx
1117	C418 Malignant neoplasm: Overlapping lesion of bone and articular cartilage
1118	C419 Malignant neoplasm: Bone and articular cartilage, unspecified
1119	C43 Malignant melanoma of skin
1120	C430 Malignant neoplasm: Malignant melanoma of lip
1121	C431 Malignant neoplasm: Malignant melanoma of eyelid, including canthus
1122	C432 Malignant neoplasm: Malignant melanoma of ear and external auricular canal
1123	C433 Malignant neoplasm: Malignant melanoma of other and unspecified parts of face
1124	C434 Malignant neoplasm: Malignant melanoma of scalp and neck
1125	C435 Malignant neoplasm: Malignant melanoma of trunk
1126	C436 Malignant neoplasm: Malignant melanoma of upper limb, including shoulder
1127	C437 Malignant neoplasm: Malignant melanoma of lower limb, including hip
1128	C438 Malignant neoplasm: Overlapping malignant melanoma of skin
1129	C439 Malignant neoplasm: Malignant melanoma of skin, unspecified
1130	C44 Other malignant neoplasms of skin
1131	C440 Malignant neoplasm: Skin of lip
1132	C441 Malignant neoplasm: Skin of eyelid, including canthus
1133	C442 Malignant neoplasm: Skin of ear and external auricular canal
1134	C443 Malignant neoplasm: Skin of other and unspecified parts of face
1135	C444 Malignant neoplasm: Skin of scalp and neck
1136	C445 Malignant neoplasm: Skin of trunk
1137	C446 Malignant neoplasm: Skin of upper limb, including shoulder
1138	C447 Malignant neoplasm: Skin of lower limb, including hip
1139	C448 Malignant neoplasm: Overlapping lesion of skin
1140	C449 Malignant neoplasm: Malignant neoplasm of skin, unspecified
1141	C45 Mesothelioma
1142	C450 Mesothelioma of pleura
1143	C451 Mesothelioma of peritoneum
1144	C452 Mesothelioma of pericardium
1145	C457 Mesothelioma of other sites
1146	C459 Mesothelioma, unspecified
1147	C46 Kaposi sarcoma
1148	C460 Kaposi sarcoma of skin
1149	C461 Kaposi sarcoma of soft tissue
1150	C462 Kaposi sarcoma of palate
1151	C463 Kaposi sarcoma of lymph nodes
1152	C467 Kaposi sarcoma of other sites
1153	C468 Kaposi sarcoma of multiple organs
1154	C469 Kaposi sarcoma, unspecified
1155	C47 Malignant neoplasm of peripheral nerves and autonomic nervous system
1156	C470 Malignant neoplasm: Peripheral nerves of head, face and neck
1157	C471 Malignant neoplasm: Peripheral nerves of upper limb, including shoulder
1158	C472 Malignant neoplasm: Peripheral nerves of lower limb, including hip
1159	C473 Malignant neoplasm: Peripheral nerves of thorax
1160	C474 Malignant neoplasm: Peripheral nerves of abdomen
1161	C475 Malignant neoplasm: Peripheral nerves of pelvis
1162	C476 Malignant neoplasm: Peripheral nerves of trunk, unspecified
1163	C478 Malignant neoplasm: Overlapping lesion of peripheral nerves and autonomic nervous system
1164	C479 Malignant neoplasm: Peripheral nerves and autonomic nervous system, unspecified
1165	C48 Malignant neoplasm of retroperitoneum and peritoneum
1166	C480 Malignant neoplasm: Retroperitoneum
1167	C481 Malignant neoplasm: Specified parts of peritoneum
1168	C482 Malignant neoplasm: Peritoneum, unspecified
1169	C488 Malignant neoplasm: Overlapping lesion of retroperitoneum and peritoneum
1170	C49 Malignant neoplasm of other connective and soft tissue
1171	C490 Malignant neoplasm: Connective and soft tissue of head, face and neck
1172	C491 Malignant neoplasm: Connective and soft tissue of upper limb, including shoulder
1173	C492 Malignant neoplasm: Connective and soft tissue of lower limb, including hip
1174	C493 Malignant neoplasm: Connective and soft tissue of thorax
1175	C494 Malignant neoplasm: Connective and soft tissue of abdomen
1176	C495 Malignant neoplasm: Connective and soft tissue of pelvis
1177	C496 Malignant neoplasm: Connective and soft tissue of trunk, unspecified
1178	C498 Malignant neoplasm: Overlapping lesion of connective and soft tissue
1179	C499 Malignant neoplasm: Connective and soft tissue, unspecified
1180	C50 Malignant neoplasm of breast
1181	C500 Malignant neoplasm: Nipple and areola
1182	C501 Malignant neoplasm: Central portion of breast
1183	C502 Malignant neoplasm: Upper-inner quadrant of breast
1184	C503 Malignant neoplasm: Lower-inner quadrant of breast
1185	C504 Malignant neoplasm: Upper-outer quadrant of breast
1186	C505 Malignant neoplasm: Lower-outer quadrant of breast
1187	C506 Malignant neoplasm: Axillary tail of breast
1188	C508 Malignant neoplasm: Overlapping lesion of breast
1189	C509 Malignant neoplasm: Breast, unspecified
1190	C51 Malignant neoplasm of vulva
1191	C510 Malignant neoplasm: Labium majus
1192	C511 Malignant neoplasm: Labium minus
1193	C512 Malignant neoplasm: Clitoris
1194	C518 Malignant neoplasm: Overlapping lesion of vulva
1195	C519 Malignant neoplasm: Vulva, unspecified
1196	C52 Malignant neoplasm of vagina
1197	C53 Malignant neoplasm of cervix uteri
1198	C530 Malignant neoplasm: Endocervix
1199	C531 Malignant neoplasm: Exocervix
1200	C538 Malignant neoplasm: Overlapping lesion of cervix uteri
1201	C539 Malignant neoplasm: Cervix uteri, unspecified
1202	C54 Malignant neoplasm of corpus uteri
1203	C540 Malignant neoplasm: Isthmus uteri
1204	C541 Malignant neoplasm: Endometrium
1205	C542 Malignant neoplasm: Myometrium
1206	C543 Malignant neoplasm: Fundus uteri
1207	C548 Malignant neoplasm: Overlapping lesion of corpus uteri
1208	C549 Malignant neoplasm: Corpus uteri, unspecified
1209	C55 Malignant neoplasm of uterus, part unspecified
1210	C56 Malignant neoplasm of ovary
1211	C57 Malignant neoplasm of other and unspecified female genital organs
1212	C570 Malignant neoplasm: Fallopian tube
1213	C571 Malignant neoplasm: Broad ligament
1214	C572 Malignant neoplasm: Round ligament
1215	C573 Malignant neoplasm: Parametrium
1216	C574 Malignant neoplasm: Uterine adnexa, unspecified
1217	C577 Malignant neoplasm: Other specified female genital organs
1218	C578 Malignant neoplasm: Overlapping lesion of female genital organs
1219	C579 Malignant neoplasm: Female genital organ, unspecified
1220	C58 Malignant neoplasm of placenta
1221	C60 Malignant neoplasm of penis
1222	C600 Malignant neoplasm: Prepuce
1223	C601 Malignant neoplasm: Glans penis
1224	C602 Malignant neoplasm: Body of penis
1225	C608 Malignant neoplasm: Overlapping lesion of penis
1226	C609 Malignant neoplasm: Penis, unspecified
1227	C61 Malignant neoplasm of prostate
1228	C62 Malignant neoplasm of testis
1229	C620 Malignant neoplasm: Undescended testis
1230	C621 Malignant neoplasm: Descended testis
1231	C629 Malignant neoplasm: Testis, unspecified
1232	C63 Malignant neoplasm of other and unspecified male genital organs
1233	C630 Malignant neoplasm: Epididymis
1234	C631 Malignant neoplasm: Spermatic cord
1235	C632 Malignant neoplasm: Scrotum
1236	C637 Malignant neoplasm: Other specified male genital organs
1237	C638 Malignant neoplasm: Overlapping lesion of male genital organs
1238	C639 Malignant neoplasm: Male genital organ, unspecified
1239	C64 Malignant neoplasm of kidney, except renal pelvis
1240	C65 Malignant neoplasm of renal pelvis
1241	C66 Malignant neoplasm of ureter
1242	C67 Malignant neoplasm of bladder
1243	C670 Malignant neoplasm: Trigone of bladder
1244	C671 Malignant neoplasm: Dome of bladder
1245	C672 Malignant neoplasm: Lateral wall of bladder
1246	C673 Malignant neoplasm: Anterior wall of bladder
1247	C674 Malignant neoplasm: Posterior wall of bladder
1248	C675 Malignant neoplasm: Bladder neck
1249	C676 Malignant neoplasm: Ureteric orifice
1250	C677 Malignant neoplasm: Urachus
1251	C678 Malignant neoplasm: Overlapping lesion of bladder
1252	C679 Malignant neoplasm: Bladder, unspecified
1253	C68 Malignant neoplasm of other and unspecified urinary organs
1254	C680 Malignant neoplasm: Urethra
1255	C681 Malignant neoplasm: Paraurethral gland
1256	C688 Malignant neoplasm: Overlapping lesion of urinary organs
1257	C689 Malignant neoplasm: Urinary organ, unspecified
1258	C69 Malignant neoplasm of eye and adnexa
1259	C690 Malignant neoplasm: Conjunctiva
1260	C691 Malignant neoplasm: Cornea
1261	C692 Malignant neoplasm: Retina
1262	C693 Malignant neoplasm: Choroid
1263	C694 Malignant neoplasm: Ciliary body
1264	C695 Malignant neoplasm: Lacrimal gland and duct
1265	C696 Malignant neoplasm: Orbit
1266	C698 Malignant neoplasm: Overlapping lesion of eye and adnexa
1267	C699 Malignant neoplasm: Eye, unspecified
1268	C70 Malignant neoplasm of meninges
1269	C700 Malignant neoplasm: Cerebral meninges
1270	C701 Malignant neoplasm: Spinal meninges
1271	C709 Malignant neoplasm: Meninges, unspecified
1272	C71 Malignant neoplasm of brain
1273	C710 Malignant neoplasm: Cerebrum, except lobes and ventricles
1274	C711 Malignant neoplasm: Frontal lobe
1275	C712 Malignant neoplasm: Temporal lobe
1276	C713 Malignant neoplasm: Parietal lobe
1277	C714 Malignant neoplasm: Occipital lobe
1278	C715 Malignant neoplasm: Cerebral ventricle
1279	C716 Malignant neoplasm: Cerebellum
1280	C717 Malignant neoplasm: Brain stem
1281	C718 Malignant neoplasm: Overlapping lesion of brain
1282	C719 Malignant neoplasm: Brain, unspecified
1283	C72 Malignant neoplasm of spinal cord, cranial nerves and other parts of central nervous system
1284	C720 Malignant neoplasm: Spinal cord
1285	C721 Malignant neoplasm: Cauda equina
1286	C722 Malignant neoplasm: Olfactory nerve
1287	C723 Malignant neoplasm: Optic nerve
1288	C724 Malignant neoplasm: Acoustic nerve
1289	C725 Malignant neoplasm: Other and unspecified cranial nerves
1290	C728 Malignant neoplasm: Overlapping lesion of brain and other parts of central nervous system
1291	C729 Malignant neoplasm: Central nervous system, unspecified
1292	C73 Malignant neoplasm of thyroid gland
1293	C74 Malignant neoplasm of adrenal gland
1294	C740 Malignant neoplasm: Cortex of adrenal gland
1295	C741 Malignant neoplasm: Medulla of adrenal gland
1296	C749 Malignant neoplasm: Adrenal gland, unspecified
1297	C75 Malignant neoplasm of other endocrine glands and related structures
1298	C750 Malignant neoplasm: Parathyroid gland
1299	C751 Malignant neoplasm: Pituitary gland
1300	C752 Malignant neoplasm: Craniopharyngeal duct
1301	C753 Malignant neoplasm: Pineal gland
1302	C754 Malignant neoplasm: Carotid body
1303	C755 Malignant neoplasm: Aortic body and other paraganglia
1304	C758 Malignant neoplasm: Pluriglandular involvement, unspecified
1305	C759 Malignant neoplasm: Endocrine gland, unspecified
1306	C76 Malignant neoplasm of other and ill-defined sites
1307	C760 Malignant neoplasm of other and ill-defined sites: Head, face and neck
1308	C761 Malignant neoplasm of other and ill-defined sites: Thorax
1309	C762 Malignant neoplasm of other and ill-defined sites: Abdomen
1310	C763 Malignant neoplasm of other and ill-defined sites: Pelvis
1311	C764 Malignant neoplasm of other and ill-defined sites: Upper limb
1312	C765 Malignant neoplasm of other and ill-defined sites: Lower limb
1313	C767 Malignant neoplasm of other and ill-defined sites: Other ill-defined sites
1314	C768 Malignant neoplasm of other and ill-defined sites: Overlapping lesion of other and ill-defined sites
1315	C77 Secondary and unspecified malignant neoplasm of lymph nodes
1316	C770 Secondary and unspecified malignant neoplasm: Lymph nodes of head, face and neck
1317	C771 Secondary and unspecified malignant neoplasm: Intrathoracic lymph nodes
1318	C772 Secondary and unspecified malignant neoplasm: Intra-abdominal lymph nodes
1319	C773 Secondary and unspecified malignant neoplasm: Axillary and upper limb lymph nodes
1320	C774 Secondary and unspecified malignant neoplasm: Inguinal and lower limb lymph nodes
1321	C775 Secondary and unspecified malignant neoplasm: Intrapelvic lymph nodes
1322	C778 Secondary and unspecified malignant neoplasm: Lymph nodes of multiple regions
1323	C779 Secondary and unspecified malignant neoplasm: Lymph node, unspecified
1324	C78 Secondary malignant neoplasm of respiratory and digestive organs
1325	C780 Secondary malignant neoplasm of lung
1326	C781 Secondary malignant neoplasm of mediastinum
1327	C782 Secondary malignant neoplasm of pleura
1328	C783 Secondary malignant neoplasm of other and unspecified respiratory organs
1329	C784 Secondary malignant neoplasm of small intestine
1330	C785 Secondary malignant neoplasm of large intestine and rectum
1331	C786 Secondary malignant neoplasm of retroperitoneum and peritoneum
1332	C787 Secondary malignant neoplasm of liver and intrahepatic bile duct
1333	C788 Secondary malignant neoplasm of other and unspecified digestive organs
1334	C79 Secondary malignant neoplasm of other and unspecified sites
1335	C790 Secondary malignant neoplasm of kidney and renal pelvis
1336	C791 Secondary malignant neoplasm of bladder and other and unspecified urinary organs
1337	C792 Secondary malignant neoplasm of skin
1338	C793 Secondary malignant neoplasm of brain and cerebral meninges
1339	C794 Secondary malignant neoplasm of other and unspecified parts of nervous system
1340	C795 Secondary malignant neoplasm of bone and bone marrow
1341	C796 Secondary malignant neoplasm of ovary
1342	C797 Secondary malignant neoplasm of adrenal gland
1343	C798 Secondary malignant neoplasm of other specified sites
1344	C799 Secondary malignant neoplasm, unspecified site
1345	C80 Malignant neoplasm, without specification of site
1346	C800 Malignant neoplasm, primary site unknown, so stated
1347	C809 Malignant neoplasm, unspecified
1348	C81 Hodgkin lymphoma
1349	C810 Nodular lymphocyte predominant Hodgkin lymphoma
1350	C811 Nodular sclerosis classical Hodgkin lymphoma
1351	C812 Mixed cellularity classical Hodgkin lymphoma
1352	C813 Lymphocyte depleted classical Hodgkin lymphoma
1353	C814 Lymphocyte-rich classical Hodgkin lymphoma
1354	C817 Other classical Hodgkin lymphoma
1355	C819 Hodgkin lymphoma, unspecified
1356	C82 Follicular lymphoma
1357	C820 Follicular lymphoma grade I
1358	C821 Follicular lymphoma grade II
1359	C822 Follicular lymphoma grade III, unspecified
1360	C823 Follicular lymphoma grade IIIa
1361	C824 Follicular lymphoma grade IIIb
1362	C825 Diffuse follicle centre lymphoma
1363	C826 Cutaneous follicle centre lymphoma
1364	C827 Other types of follicular lymphoma
1365	C829 Follicular lymphoma, unspecified
1366	C83 Non-follicular lymphoma
1367	C830 Small cell B-cell lymphoma
1368	C831 Mantle cell lymphoma
1369	C833 Diffuse large B-cell lymphoma
1370	C835 Lymphoblastic (diffuse) lymphoma
1371	C837 Burkitt lymphoma
1372	C838 Other non-follicular lymphoma
1373	C839 Non-follicular (diffuse) lymphoma, unspecified
1374	C84 Mature T/NK-cell lymphomas
1375	C840 Mycosis fungoides
1376	C841 Sézary disease
1377	C844 Peripheral T-cell lymphoma, not classified
1378	C845 Other mature T/NK-cell lymphomas
1379	C846 Anaplastic large cell lymphoma, ALK-positive
1380	C847 Anaplastic large cell lymphoma, ALK-negative
1381	C848 Cutaneous T-cell lymphoma, unspecified
1382	C849 Mature T/NK-cell lymphoma, unspecified
1383	C85 Other and unspecified types of non-Hodgkin lymphoma
1384	C851 B-cell lymphoma, unspecified
1385	C852 Mediastinal (thymic) large B-cell lymphoma
1386	C857 Other specified types of non-Hodgkin lymphoma
1387	C859 Non-Hodgkin lymphoma, unspecified
1388	C86 Other specified types of T/NK-cell lymphoma
1389	C860 Extranodal NK/T-cell lymphoma, nasal type
1390	C861 Hepatosplenic T-cell lymphoma
1391	C862 Enteropathy-type (intestinal) T-cell lymphoma
1392	C863 Subcutaneous panniculitis-like T-cell lymphoma
1393	C864 Blastic NK-cell lymphoma
1394	C865 Angioimmunoblastic T-cell lymphoma
1395	C866 Primary cutaneous CD30-positive T-cell proliferations
1396	C88 Malignant immunoproliferative diseases
1397	C880 Waldenström macroglobulinaemia
1398	C882 Other heavy chain disease
1399	C883 Immunoproliferative small intestinal disease
1400	C884 Extranodal marginal zone B-cell lymphoma of mucosa-associated lymphoid tissue [MALT-lyphoma]
1401	C887 Other malignant immunoproliferative diseases
1402	C889 Malignant immunoproliferative disease, unspecified
1403	C90 Multiple myeloma and malignant plasma cell neoplasms
1404	C900 Multiple myeloma
1405	C901 Plasma cell leukaemia
1406	C902 Extramedullary plasmacytoma
1407	C903 Solitary plasmacytoma
1408	C91 Lymphoid leukaemia
1409	C910 Acute lymphoblastic leukaemia [ALL]
1410	C911 Chronic lymphocytic leukaemia of B-cell type
1411	C913 Prolymphocytic leukaemia of B-cell type
1412	C914 Hairy-cell leukaemia
1413	C915 Adult T-cell lymphoma/leukaemia (HTLV-1-associated)
1414	C916 Prolymphocytic leukaemia of T-cell type
1415	C917 Other lymphoid leukaemia
1416	C918 Mature B-cell leukaemia Burkitt-type
1417	C919 Lymphoid leukaemia, unspecified
1418	C92 Myeloid leukaemia
1419	C920 Acute myeloblastic leukaemia [AML]
1420	C921 Chronic myeloid leukaemia [CML], BCR/ABL-positive
1421	C922 Atypical chronic myeloid leukaemia, BCR/ABL- negative
1422	C923 Myeloid sarcoma
1423	C924 Acute promyelocytic leukaemia [PML]
1424	C925 Acute myelomonocytic leukaemia
1425	C926 Acute myeloid leukaemia with 11q23-abnormality
1426	C927 Other myeloid leukaemia
1427	C928 Acute myeloid leukaemia with multilineage dysplasia
1428	C929 Myeloid leukaemia, unspecified
1429	C93 Monocytic leukaemia
1430	C930 Acute monoblastic/monocytic leukaemia
1431	C931 Chronic myelomonocytic leukaemia
1432	C933 Juvenile myelomonocytic leukaemia
1433	C937 Other monocytic leukaemia
1434	C939 Monocytic leukaemia, unspecified
1435	C94 Other leukaemias of specified cell type
1436	C940 Acute erythroid leukaemia
1437	C942 Acute megakaryoblastic leukaemia
1438	C943 Mast cell leukaemia
1439	C944 Acute panmyelosis with myelofibrosis
1440	C946 Myelodysplastic and myeloproliferative disease, not elsewhere classified
1441	C947 Other specified leukaemias
1442	C95 Leukaemia of unspecified cell type
1443	C950 Acute leukaemia of unspecified cell type
1444	C951 Chronic leukaemia of unspecified cell type
1445	C957 Other leukaemia of unspecified cell type
1446	C959 Leukaemia, unspecified
1447	C96 Other and unspecified malignant neoplasms of lymphoid, haematopoietic and related tissue
1448	C960 Multifocal and multisystemic (disseminated) Langerhans-cell histiocytosis [Letterer-Siwe disease]
1449	C962 Malignant mast cell tumour
1450	C964 Sarcoma of dendritic cells (accessory cells)
1451	C965 Multifocal and unisystemic Langerhans-cell histiocytosis
1452	C966 Unifocal Langerhans-cell histiocytosis
1453	C967 Other specified malignant neoplasms of lymphoid, haematopoietic and related tissue
1454	C968 Histiocytic sarcoma
1455	C969 Malignant neoplasm of lymphoid, haematopoietic and related tissue, unspecified
1456	C97 Malignant neoplasms of independent (primary) multiple sites
1457	D00 Carcinoma in situ of oral cavity, oesophagus and stomach
1458	D000 Carcinoma in situ: Lip, oral cavity and pharynx
1459	D001 Carcinoma in situ: Oesophagus
1460	D002 Carcinoma in situ: Stomach
1461	D01 Carcinoma in situ of other and unspecified digestive organs
1462	D010 Carcinoma in situ: Colon
1463	D011 Carcinoma in situ: Rectosigmoid junction
1464	D012 Carcinoma in situ: Rectum
1465	D013 Carcinoma in situ: Anus and anal canal
1466	D014 Carcinoma in situ: Other and unspecified parts of intestine
1467	D015 Carcinoma in situ: Liver, gallbladder and bile ducts
1468	D017 Carcinoma in situ: Other specified digestive organs
1469	D019 Carcinoma in situ: Digestive organ, unspecified
1470	D02 Carcinoma in situ of middle ear and respiratory system
1471	D020 Carcinoma in situ: Larynx
1472	D021 Carcinoma in situ: Trachea
1473	D022 Carcinoma in situ: Bronchus and lung
1474	D023 Carcinoma in situ: Other parts of respiratory system
1475	D024 Carcinoma in situ: Respiratory system, unspecified
1476	D03 Melanoma in situ
1477	D030 Melanoma in situ of lip
1478	D031 Melanoma in situ of eyelid, including canthus
1479	D032 Melanoma in situ of ear and external auricular canal
1480	D033 Melanoma in situ of other and unspecified parts of face
1481	D034 Melanoma in situ of scalp and neck
1482	D035 Melanoma in situ of trunk
1483	D036 Melanoma in situ of upper limb, including shoulder
1484	D037 Melanoma in situ of lower limb, including hip
1485	D038 Melanoma in situ of other sites
1486	D039 Melanoma in situ, unspecified
1487	D04 Carcinoma in situ of skin
1488	D040 Carcinoma in situ: Skin of lip
1489	D041 Carcinoma in situ: Skin of eyelid, including canthus
1490	D042 Carcinoma in situ: Skin of ear and external auricular canal
1491	D043 Carcinoma in situ: Skin of other and unspecified parts of face
1492	D044 Carcinoma in situ: Skin of scalp and neck
1493	D045 Carcinoma in situ: Skin of trunk
1494	D046 Carcinoma in situ: Skin of upper limb, including shoulder
1495	D047 Carcinoma in situ: Skin of lower limb, including hip
1496	D048 Carcinoma in situ: Skin of other sites
1497	D049 Carcinoma in situ: Skin, unspecified
1498	D05 Carcinoma in situ of breast
1499	D050 Lobular carcinoma in situ
1500	D051 Intraductal carcinoma in situ
1501	D057 Other carcinoma in situ of breast
1502	D059 Carcinoma in situ of breast, unspecified
1503	D06 Carcinoma in situ of cervix uteri
1504	D060 Carcinoma in situ: Endocervix
1505	D061 Carcinoma in situ: Exocervix
1506	D067 Carcinoma in situ: Other parts of cervix
1507	D069 Carcinoma in situ: Cervix, unspecified
1508	D07 Carcinoma in situ of other and unspecified genital organs
1509	D070 Carcinoma in situ: Endometrium
1510	D071 Carcinoma in situ: Vulva
1511	D072 Carcinoma in situ: Vagina
1512	D073 Carcinoma in situ: Other and unspecified female genital organs
1513	D074 Carcinoma in situ: Penis
1514	D075 Carcinoma in situ: Prostate
1515	D076 Carcinoma in situ: Other and unspecified male genital organs
1516	D09 Carcinoma in situ of other and unspecified sites
1517	D090 Carcinoma in situ: Bladder
1518	D091 Carcinoma in situ: Other and unspecified urinary organs
1519	D092 Carcinoma in situ: Eye
1520	D093 Carcinoma in situ: Thyroid and other endocrine glands
1521	D097 Carcinoma in situ of other specified sites
1522	D099 Carcinoma in situ, unspecified
1523	D10 Benign neoplasm of mouth and pharynx
1524	D100 Benign neoplasm: Lip
1525	D101 Benign neoplasm: Tongue
1526	D102 Benign neoplasm: Floor of mouth
1527	D103 Benign neoplasm: Other and unspecified parts of mouth
1528	D104 Benign neoplasm: Tonsil
1529	D105 Benign neoplasm: Other parts of oropharynx
1530	D106 Benign neoplasm: Nasopharynx
1531	D107 Benign neoplasm: Hypopharynx
1532	D109 Benign neoplasm: Pharynx, unspecified
1533	D11 Benign neoplasm of major salivary glands
1534	D110 Benign neoplasm: Parotid gland
1535	D117 Benign neoplasm: Other major salivary glands
1536	D119 Benign neoplasm: Major salivary gland, unspecified
1537	D12 Benign neoplasm of colon, rectum, anus and anal canal
1538	D120 Benign neoplasm: Caecum
1539	D121 Benign neoplasm: Appendix
1540	D122 Benign neoplasm: Ascending colon
1541	D123 Benign neoplasm: Transverse colon
1542	D124 Benign neoplasm: Descending colon
1543	D125 Benign neoplasm: Sigmoid colon
1544	D126 Benign neoplasm: Colon, unspecified
1545	D127 Benign neoplasm: Rectosigmoid junction
1546	D128 Benign neoplasm: Rectum
1547	D129 Benign neoplasm: Anus and anal canal
1548	D13 Benign neoplasm of other and ill-defined parts of digestive system
1549	D130 Benign neoplasm: Oesophagus
1550	D131 Benign neoplasm: Stomach
1551	D132 Benign neoplasm: Duodenum
1552	D133 Benign neoplasm: Other and unspecified parts of small intestine
1553	D134 Benign neoplasm: Liver
1554	D135 Benign neoplasm: Extrahepatic bile ducts
1555	D136 Benign neoplasm: Pancreas
1556	D137 Benign neoplasm: Endocrine pancreas
1557	D139 Benign neoplasm: Ill-defined sites within the digestive system
1558	D14 Benign neoplasm of middle ear and respiratory system
1559	D140 Benign neoplasm: Middle ear, nasal cavity and accessory sinuses
1560	D141 Benign neoplasm: Larynx
1561	D142 Benign neoplasm: Trachea
1562	D143 Benign neoplasm: Bronchus and lung
1563	D144 Benign neoplasm: Respiratory system, unspecified
1564	D15 Benign neoplasm of other and unspecified intrathoracic organs
1565	D150 Benign neoplasm: Thymus
1566	D151 Benign neoplasm: Heart
1567	D152 Benign neoplasm: Mediastinum
1568	D157 Benign neoplasm: Other specified intrathoracic organs
1569	D159 Benign neoplasm: Intrathoracic organ, unspecified
1570	D16 Benign neoplasm of bone and articular cartilage
1571	D160 Benign neoplasm: Scapula and long bones of upper limb
1572	D161 Benign neoplasm: Short bones of upper limb
1573	D162 Benign neoplasm: Long bones of lower limb
1574	D163 Benign neoplasm: Short bones of lower limb
1575	D164 Benign neoplasm: Bones of skull and face
1576	D165 Benign neoplasm: Lower jaw bone
1577	D166 Benign neoplasm: Vertebral column
1578	D167 Benign neoplasm: Ribs, sternum and clavicle
1579	D168 Benign neoplasm: Pelvic bones, sacrum and coccyx
1580	D169 Benign neoplasm: Bone and articular cartilage, unspecified
1581	D17 Benign lipomatous neoplasm
1582	D170 Benign lipomatous neoplasm of skin and subcutaneous tissue of head, face and neck
1583	D171 Benign lipomatous neoplasm of skin and subcutaneous tissue of trunk
1584	D172 Benign lipomatous neoplasm of skin and subcutaneous tissue of limbs
1585	D173 Benign lipomatous neoplasm of skin and subcutaneous tissue of other and unspecified sites
1586	D174 Benign lipomatous neoplasm of intrathoracic organs
1587	D175 Benign lipomatous neoplasm of intra-abdominal organs
1588	D176 Benign lipomatous neoplasm of spermatic cord
1589	D177 Benign lipomatous neoplasm of other sites
1590	D179 Benign lipomatous neoplasm, unspecified
1591	D18 Haemangioma and lymphangioma, any site
1592	D180 Haemangioma, any site
1593	D181 Lymphangioma, any site
1594	D19 Benign neoplasm of mesothelial tissue
1595	D190 Benign neoplasm: Mesothelial tissue of pleura
1596	D191 Benign neoplasm: Mesothelial tissue of peritoneum
1597	D197 Benign neoplasm: Mesothelial tissue of other sites
1598	D199 Benign neoplasm: Mesothelial tissue, unspecified
1599	D20 Benign neoplasm of soft tissue of retroperitoneum and peritoneum
1600	D200 Benign neoplasm: Retroperitoneum
1601	D201 Benign neoplasm: Peritoneum
1602	D21 Other benign neoplasms of connective and other soft tissue
1603	D210 Benign neoplasm: Connective and other soft tissue of head, face and neck
1604	D211 Benign neoplasm: Connective and other soft tissue of upper limb, including shoulder
1605	D212 Benign neoplasm: Connective and other soft tissue of lower limb, including hip
1606	D213 Benign neoplasm: Connective and other soft tissue of thorax
1607	D214 Benign neoplasm: Connective and other soft tissue of abdomen
1608	D215 Benign neoplasm: Connective and other soft tissue of pelvis
1609	D216 Benign neoplasm: Connective and other soft tissue of trunk, unspecified
1610	D219 Benign neoplasm: Connective and other soft tissue, unspecified
1611	D22 Melanocytic naevi
1612	D220 Melanocytic naevi of lip
1613	D221 Melanocytic naevi of eyelid, including canthus
1614	D222 Melanocytic naevi of ear and external auricular canal
1615	D223 Melanocytic naevi of other and unspecified parts of face
1616	D224 Melanocytic naevi of scalp and neck
1617	D225 Melanocytic naevi of trunk
1618	D226 Melanocytic naevi of upper limb, including shoulder
1619	D227 Melanocytic naevi of lower limb, including hip
1620	D229 Melanocytic naevi, unspecified
1621	D23 Other benign neoplasms of skin
1622	D230 Benign neoplasm: Skin of lip
1623	D231 Benign neoplasm: Skin of eyelid, including canthus
1624	D232 Benign neoplasm: Skin of ear and external auricular canal
1625	D233 Benign neoplasm: Skin of other and unspecified parts of face
1626	D234 Benign neoplasm: Skin of scalp and neck
1627	D235 Benign neoplasm: Skin of trunk
1628	D236 Benign neoplasm: Skin of upper limb, including shoulder
1629	D237 Benign neoplasm: Skin of lower limb, including hip
1630	D239 Benign neoplasm: Skin, unspecified
1631	D24 Benign neoplasm of breast
1632	D25 Leiomyoma of uterus
1633	D250 Submucous leiomyoma of uterus
1634	D251 Intramural leiomyoma of uterus
1635	D252 Subserosal leiomyoma of uterus
1636	D259 Leiomyoma of uterus, unspecified
1637	D26 Other benign neoplasms of uterus
1638	D260 Other benign neoplasm: Cervix uteri
1639	D261 Other benign neoplasm: Corpus uteri
1640	D267 Other benign neoplasm: Other parts of uterus
1641	D269 Other benign neoplasm: Uterus, unspecified
1642	D27 Benign neoplasm of ovary
1643	D28 Benign neoplasm of other and unspecified female genital organs
1644	D280 Benign neoplasm: Vulva
1645	D281 Benign neoplasm: Vagina
1646	D282 Benign neoplasm: Uterine tubes and ligaments
1647	D287 Benign neoplasm: Other specified female genital organs
1648	D289 Benign neoplasm: Female genital organ, unspecified
1649	D29 Benign neoplasm of male genital organs
1650	D290 Benign neoplasm: Penis
1651	D291 Benign neoplasm: Prostate
1652	D292 Benign neoplasm: Testis
1653	D293 Benign neoplasm: Epididymis
1654	D294 Benign neoplasm: Scrotum
1655	D297 Benign neoplasm: Other male genital organs
1656	D299 Benign neoplasm: Male genital organ, unspecified
1657	D30 Benign neoplasm of urinary organs
1658	D300 Benign neoplasm: Kidney
1659	D301 Benign neoplasm: Renal pelvis
1660	D302 Benign neoplasm: Ureter
1661	D303 Benign neoplasm: Bladder
1662	D304 Benign neoplasm: Urethra
1663	D307 Benign neoplasm: Other urinary organs
1664	D309 Benign neoplasm: Urinary organ, unspecified
1665	D31 Benign neoplasm of eye and adnexa
1666	D310 Benign neoplasm: Conjunctiva
1667	D311 Benign neoplasm: Cornea
1668	D312 Benign neoplasm: Retina
1669	D313 Benign neoplasm: Choroid
1670	D314 Benign neoplasm: Ciliary body
1671	D315 Benign neoplasm: Lacrimal gland and duct
1672	D316 Benign neoplasm: Orbit, unspecified
1673	D319 Benign neoplasm: Eye, unspecified
1674	D32 Benign neoplasm of meninges
1675	D320 Benign neoplasm: Cerebral meninges
1676	D321 Benign neoplasm: Spinal meninges
1677	D329 Benign neoplasm: Meninges, unspecified
1678	D33 Benign neoplasm of brain and other parts of central nervous system
1679	D330 Benign neoplasm: Brain, supratentorial
1680	D331 Benign neoplasm: Brain, infratentorial
1681	D332 Benign neoplasm: Brain, unspecified
1682	D333 Benign neoplasm: Cranial nerves
1683	D334 Benign neoplasm: Spinal cord
1684	D337 Benign neoplasm: Other specified parts of central nervous system
1685	D339 Benign neoplasm: Central nervous system, unspecified
1686	D34 Benign neoplasm of thyroid gland
1687	D35 Benign neoplasm of other and unspecified endocrine glands
1688	D350 Benign neoplasm: Adrenal gland
1689	D351 Benign neoplasm: Parathyroid gland
1690	D352 Benign neoplasm: Pituitary gland
1691	D353 Benign neoplasm: Craniopharyngeal duct
1692	D354 Benign neoplasm: Pineal gland
1693	D355 Benign neoplasm: Carotid body
1694	D356 Benign neoplasm: Aortic body and other paraganglia
1695	D357 Benign neoplasm: Other specified endocrine glands
1696	D358 Benign neoplasm: Pluriglandular involvement
1697	D359 Benign neoplasm: Endocrine gland, unspecified
1698	D36 Benign neoplasm of other and unspecified sites
1699	D360 Benign neoplasm: Lymph nodes
1700	D361 Benign neoplasm: Peripheral nerves and autonomic nervous system
1701	D367 Benign neoplasm: Other specified sites
1702	D369 Benign neoplasm: Benign neoplasm of unspecified site
1703	D37 Neoplasm of uncertain or unknown behaviour of oral cavity and digestive organs
1704	D370 Neoplasm of uncertain or unknown behaviour: Lip, oral cavity and pharynx
1705	D371 Neoplasm of uncertain or unknown behaviour: Stomach
1706	D372 Neoplasm of uncertain or unknown behaviour: Small intestine
1707	D373 Neoplasm of uncertain or unknown behaviour: Appendix
1708	D374 Neoplasm of uncertain or unknown behaviour: Colon
1709	D375 Neoplasm of uncertain or unknown behaviour: Rectum
1710	D376 Neoplasm of uncertain or unknown behaviour: Liver, gallbladder and bile ducts
1711	D377 Neoplasm of uncertain or unknown behaviour: Other digestive organs
1712	D379 Neoplasm of uncertain or unknown behaviour: Digestive organ, unspecified
1713	D38 Neoplasm of uncertain or unknown behaviour of middle ear and respiratory and intrathoracic organs
1714	D380 Neoplasm of uncertain or unknown behaviour: Larynx
1715	D381 Neoplasm of uncertain or unknown behaviour: Trachea, bronchus and lung
1716	D382 Neoplasm of uncertain or unknown behaviour: Pleura
1717	D383 Neoplasm of uncertain or unknown behaviour: Mediastinum
1718	D384 Neoplasm of uncertain or unknown behaviour: Thymus
1719	D385 Neoplasm of uncertain or unknown behaviour: Other respiratory organs
1720	D386 Neoplasm of uncertain or unknown behaviour: Respiratory organ, unspecified
1721	D39 Neoplasm of uncertain or unknown behaviour of female genital organs
1722	D390 Neoplasm of uncertain or unknown behaviour: Uterus
1723	D391 Neoplasm of uncertain or unknown behaviour: Ovary
1724	D392 Neoplasm of uncertain or unknown behaviour: Placenta
1725	D397 Neoplasm of uncertain or unknown behaviour: Other female genital organs
1726	D399 Neoplasm of uncertain or unknown behaviour: Female genital organ, unspecified
1727	D40 Neoplasm of uncertain or unknown behaviour of male genital organs
1728	D400 Neoplasm of uncertain or unknown behaviour: Prostate
1729	D401 Neoplasm of uncertain or unknown behaviour: Testis
1730	D407 Neoplasm of uncertain or unknown behaviour: Other male genital organs
1731	D409 Neoplasm of uncertain or unknown behaviour: Male genital organ, unspecified
1732	D41 Neoplasm of uncertain or unknown behaviour of urinary organs
1733	D410 Neoplasm of uncertain or unknown behaviour: Kidney
1734	D411 Neoplasm of uncertain or unknown behaviour: Renal pelvis
1735	D412 Neoplasm of uncertain or unknown behaviour: Ureter
1736	D413 Neoplasm of uncertain or unknown behaviour: Urethra
1737	D414 Neoplasm of uncertain or unknown behaviour: Bladder
1738	D417 Neoplasm of uncertain or unknown behaviour: Other urinary organs
1739	D419 Neoplasm of uncertain or unknown behaviour: Urinary organ, unspecified
1740	D42 Neoplasm of uncertain or unknown behaviour of meninges
1741	D420 Neoplasm of uncertain or unknown behaviour: Cerebral meninges
1742	D421 Neoplasm of uncertain or unknown behaviour: Spinal meninges
1743	D429 Neoplasm of uncertain or unknown behaviour: Meninges, unspecified
1744	D43 Neoplasm of uncertain or unknown behaviour of brain and central nervous system
1745	D430 Neoplasm of uncertain or unknown behaviour: Brain, supratentorial
1746	D431 Neoplasm of uncertain or unknown behaviour: Brain, infratentorial
1747	D432 Neoplasm of uncertain or unknown behaviour: Brain, unspecified
1748	D433 Neoplasm of uncertain or unknown behaviour: Cranial nerves
1749	D434 Neoplasm of uncertain or unknown behaviour: Spinal cord
1750	D437 Neoplasm of uncertain or unknown behaviour: Other parts of central nervous system
1751	D439 Neoplasm of uncertain or unknown behaviour: Central nervous system, unspecified
1752	D44 Neoplasm of uncertain or unknown behaviour of endocrine glands
1753	D440 Neoplasm of uncertain or unknown behaviour: Thyroid gland
1754	D441 Neoplasm of uncertain or unknown behaviour: Adrenal gland
1755	D442 Neoplasm of uncertain or unknown behaviour: Parathyroid gland
1756	D443 Neoplasm of uncertain or unknown behaviour: Pituitary gland
1757	D444 Neoplasm of uncertain or unknown behaviour: Craniopharyngeal duct
1758	D445 Neoplasm of uncertain or unknown behaviour: Pineal gland
1759	D446 Neoplasm of uncertain or unknown behaviour: Carotid body
1760	D447 Neoplasm of uncertain or unknown behaviour: Aortic body and other paraganglia
1761	D448 Neoplasm of uncertain or unknown behaviour: Pluriglandular involvement
1762	D449 Neoplasm of uncertain or unknown behaviour: Endocrine gland, unspecified
1763	D45 Polycythaemia vera
1764	D46 Myelodysplastic syndromes
1765	D460 Refractory anaemia without ringed sideroblasts, so stated
1766	D461 Refractory anaemia with ringed sideroblasts
1767	D462 Refractory anaemia with excess of blasts
1768	D464 Refractory anaemia, unspecified
1769	D465 Refractory anaemia with multi-lineage dysplasia
1770	D466 Myelodysplastic syndrome with isolated del(5q) chromosomal abnormality
1771	D467 Other myelodysplastic syndromes
1772	D469 Myelodysplastic syndrome, unspecified
1773	D47 Other neoplasms of uncertain or unknown behaviour of lymphoid, haematopoietic and related tissue
1774	D470 Histiocytic and mast cell tumours of uncertain and unknown behaviour
1775	D471 Chronic myeloproliferative disease
1776	D472 Monoclonal gammopathy of undetermined significance (MGUS)
1777	D473 Essential (haemorrhagic) thrombocythaemia
1778	D474 Osteomyelofibrosis
1779	D475 Chronic eosinophilic leukaemia [hypereosinophilic syndrome]
1780	D477 Other specified neoplasms of uncertain or unknown behaviour of lymphoid, haematopoietic and related tissue
1781	D479 Neoplasm of uncertain or unknown behaviour of lymphoid, haematopoietic and related tissue, unspecified
1782	E753 Sphingolipidosis, unspecified
1783	D48 Neoplasm of uncertain or unknown behaviour of other and unspecified sites
1784	D480 Neoplasm of uncertain or unknown behaviour: Bone and articular cartilage
1785	D481 Neoplasm of uncertain or unknown behaviour: Connective and other soft tissue
1786	D482 Neoplasm of uncertain or unknown behaviour: Peripheral nerves and autonomic nervous system
1787	D483 Neoplasm of uncertain or unknown behaviour: Retroperitoneum
1788	D484 Neoplasm of uncertain or unknown behaviour: Peritoneum
1789	D485 Neoplasm of uncertain or unknown behaviour: Skin
1790	D486 Neoplasm of uncertain or unknown behaviour: Breast
1791	D487 Neoplasm of uncertain or unknown behaviour: Other specified sites
1792	D489 Neoplasm of uncertain or unknown behaviour: Neoplasm of uncertain or unknown behaviour, unspecified
1793	D50 Iron deficiency anaemia
1794	D500 Iron deficiency anaemia secondary to blood loss (chronic)
1795	D501 Sideropenic dysphagia
1796	D508 Other iron deficiency anaemias
1797	D509 Iron deficiency anaemia, unspecified
1798	D51 Vitamin B12 deficiency anaemia
1799	D510 Vitamin B12 deficiency anaemia due to intrinsic factor deficiency
1800	D511 Vitamin B12 deficiency anaemia due to selective vitamin B12 malabsorption with proteinuria
1801	D512 Transcobalamin II deficiency
1802	D513 Other dietary vitamin B12 deficiency anaemia
1803	D518 Other vitamin B12 deficiency anaemias
1804	D519 Vitamin B12 deficiency anaemia, unspecified
1805	D52 Folate deficiency anaemia
1806	D520 Dietary folate deficiency anaemia
1807	D521 Drug-induced folate deficiency anaemia
1808	D528 Other folate deficiency anaemias
1809	D529 Folate deficiency anaemia, unspecified
1810	D53 Other nutritional anaemias
1811	D530 Protein deficiency anaemia
1812	D531 Other megaloblastic anaemias, not elsewhere classified
1813	D532 Scorbutic anaemia
1814	D538 Other specified nutritional anaemias
1815	D539 Nutritional anaemia, unspecified
1816	D55 Anaemia due to enzyme disorders
1817	D550 Anaemia due to glucose-6-phosphate dehydrogenase [G6PD] deficiency
1818	D551 Anaemia due to other disorders of glutathione metabolism
1819	D552 Anaemia due to disorders of glycolytic enzymes
1820	D553 Anaemia due to disorders of nucleotide metabolism
1821	D558 Other anaemias due to enzyme disorders
1822	D559 Anaemia due to enzyme disorder, unspecified
1823	D56 Thalassaemia
1824	D560 Alpha thalassaemia
1825	D561 Beta thalassaemia
1826	D562 Delta-beta thalassaemia
1827	D563 Thalassaemia trait
1828	D564 Hereditary persistence of fetal haemoglobin [HPFH]
1829	D568 Other thalassaemias
1830	D569 Thalassaemia, unspecified
1831	D57 Sickle-cell disorders
1832	D570 Sickle-cell anaemia with crisis
1833	D571 Sickle-cell anaemia without crisis
1834	D572 Double heterozygous sickling disorders
1835	D573 Sickle-cell trait
1836	D578 Other sickle-cell disorders
1837	D58 Other hereditary haemolytic anaemias
1838	D580 Hereditary spherocytosis
1839	D581 Hereditary elliptocytosis
1840	D582 Other haemoglobinopathies
1841	D588 Other specified hereditary haemolytic anaemias
1842	D589 Hereditary haemolytic anaemia, unspecified
1843	D59 Acquired haemolytic anaemia
1844	D590 Drug-induced autoimmune haemolytic anaemia
1845	D591 Other autoimmune haemolytic anaemias
1846	D592 Drug-induced nonautoimmune haemolytic anaemia
1847	D593 Haemolytic-uraemic syndrome
1848	D594 Other nonautoimmune haemolytic anaemias
1849	D595 Paroxysmal nocturnal haemoglobinuria [Marchiafava-Micheli]
1850	D596 Haemoglobinuria due to haemolysis from other external causes
1851	D598 Other acquired haemolytic anaemias
1852	D599 Acquired haemolytic anaemia, unspecified
1853	D60 Acquired pure red cell aplasia [erythroblastopenia]
1854	D600 Chronic acquired pure red cell aplasia
1855	D601 Transient acquired pure red cell aplasia
1856	D608 Other acquired pure red cell aplasias
1857	D609 Acquired pure red cell aplasia, unspecified
1858	D61 Other aplastic anaemias
1859	D610 Constitutional aplastic anaemia
1860	D611 Drug-induced aplastic anaemia
1861	D612 Aplastic anaemia due to other external agents
1862	D613 Idiopathic aplastic anaemia
1863	D618 Other specified aplastic anaemias
1864	D619 Aplastic anaemia, unspecified
1865	D62 Acute posthaemorrhagic anaemia
1866	D63 Anaemia in chronic diseases classified elsewhere
1867	D630 Anaemia in neoplastic disease
1868	D638 Anaemia in other chronic diseases classified elsewhere
1869	D64 Other anaemias
1870	D640 Hereditary sideroblastic anaemia
1871	D641 Secondary sideroblastic anaemia due to disease
1872	D642 Secondary sideroblastic anaemia due to drugs and toxins
1873	D643 Other sideroblastic anaemias
1874	D644 Congenital dyserythropoietic anaemia
1875	D648 Other specified anaemias
1876	D649 Anaemia, unspecified
1877	D65 Disseminated intravascular coagulation [defibrination syndrome]
1878	D66 Hereditary factor VIII deficiency
1879	D67 Hereditary factor IX deficiency
1880	D68 Other coagulation defects
1881	D680 Von Willebrand disease
1882	D681 Hereditary factor XI deficiency
1883	D682 Hereditary deficiency of other clotting factors
1884	D683 Haemorrhagic disorder due to circulating anticoagulants
1885	D684 Acquired coagulation factor deficiency
1886	D685 Primary Thrombophilia
1887	D686 Other Thrombophilia
1888	D688 Other specified coagulation defects
1889	D689 Coagulation defect, unspecified
1890	D69 Purpura and other haemorrhagic conditions
1891	D690 Allergic purpura
1892	D691 Qualitative platelet defects
1893	D692 Other nonthrombocytopenic purpura
1894	D693 Idiopathic thrombocytopenic purpura
1895	D694 Other primary thrombocytopenia
1896	D695 Secondary thrombocytopenia
1897	D696 Thrombocytopenia, unspecified
1898	D698 Other specified haemorrhagic conditions
1899	D699 Haemorrhagic condition, unspecified
1900	D70 Agranulocytosis
1901	D71 Functional disorders of polymorphonuclear neutrophils
1902	D72 Other disorders of white blood cells
1903	D720 Genetic anomalies of leukocytes
1904	D721 Eosinophilia
1905	D728 Other specified disorders of white blood cells
1906	D729 Disorder of white blood cells, unspecified
1907	D73 Diseases of spleen
1908	D730 Hyposplenism
1909	D731 Hypersplenism
1910	D732 Chronic congestive splenomegaly
1911	D733 Abscess of spleen
1912	D734 Cyst of spleen
1913	D735 Infarction of spleen
1914	D738 Other diseases of spleen
1915	D739 Disease of spleen, unspecified
1916	D74 Methaemoglobinaemia
1917	D740 Congenital methaemoglobinaemia
1918	D748 Other methaemoglobinaemias
1919	D749 Methaemoglobinaemia, unspecified
1920	D75 Other diseases of blood and blood-forming organs
1921	D750 Familial erythrocytosis
1922	D751 Secondary polycythaemia
1923	D758 Other specified diseases of blood and blood-forming organs
1924	D759 Disease of blood and blood-forming organs, unspecified
1925	D76 Other specified diseases with participation of lymphoreticular and reticulohistiocytic tissue
1926	D761 Haemophagocytic lymphohistiocytosis
1927	D762 Haemophagocytic syndrome, infection-associated
1928	D763 Other histiocytosis syndromes
1929	D77 Other disorders of blood and blood-forming organs in diseases classified elsewhere
1930	D80 Immunodeficiency with predominantly antibody defects
1931	D800 Hereditary hypogammaglobulinaemia
1932	D801 Nonfamilial hypogammaglobulinaemia
1933	D802 Selective deficiency of immunoglobulin A [IgA]
1934	D803 Selective deficiency of immunoglobulin G [IgG] subclasses
1935	D804 Selective deficiency of immunoglobulin M [IgM]
1936	D805 Immunodeficiency with increased immunoglobulin M [IgM]
1937	D806 Antibody deficiency with near-normal immunoglobulins or with hyperimmunoglobulinaemia
1938	D807 Transient hypogammaglobulinaemia of infancy
1939	D808 Other immunodeficiencies with predominantly antibody defects
1940	D809 Immunodeficiency with predominantly antibody defects, unspecified
1941	D81 Combined immunodeficiencies
1942	D810 Severe combined immunodeficiency [SCID] with reticular dysgenesis
1943	E26 Hyperaldosteronism
1944	D811 Severe combined immunodeficiency [SCID] with low T- and B-cell numbers
1945	D812 Severe combined immunodeficiency [SCID] with low or normal B-cell numbers
1946	D813 Adenosine deaminase [ADA] deficiency
1947	D814 Nezelof syndrome
1948	D815 Purine nucleoside phosphorylase [PNP] deficiency
1949	D816 Major histocompatibility complex class I deficiency
1950	D817 Major histocompatibility complex class II deficiency
1951	D818 Other combined immunodeficiencies
1952	D819 Combined immunodeficiency, unspecified
1953	D82 Immunodeficiency associated with other major defects
1954	D820 Wiskott-Aldrich syndrome
1955	D821 Di George syndrome
1956	D822 Immunodeficiency with short-limbed stature
1957	D823 Immunodeficiency following hereditary defective response to Epstein-Barr virus
1958	D824 Hyperimmunoglobulin E [IgE] syndrome
1959	D828 Immunodeficiency associated with other specified major defects
1960	D829 Immunodeficiency associated with major defect, unspecified
1961	D83 Common variable immunodeficiency
1962	D830 Common variable immunodeficiency with predominant abnormalities of B-cell numbers and function
1963	D831 Common variable immunodeficiency with predominant immunoregulatory T-cell disorders
1964	D832 Common variable immunodeficiency with autoantibodies to B- or T-cells
1965	D838 Other common variable immunodeficiencies
1966	D839 Common variable immunodeficiency, unspecified
1967	D84 Other immunodeficiencies
1968	D840 Lymphocyte function antigen-1 [LFA-1] defect
1969	D841 Defects in the complement system
1970	D848 Other specified immunodeficiencies
1971	D849 Immunodeficiency, unspecified
1972	D86 Sarcoidosis
1973	D860 Sarcoidosis of lung
1974	D861 Sarcoidosis of lymph nodes
1975	D862 Sarcoidosis of lung with sarcoidosis of lymph nodes
1976	D863 Sarcoidosis of skin
1977	D868 Sarcoidosis of other and combined sites
1978	D869 Sarcoidosis, unspecified
1979	D89 Other disorders involving the immune mechanism, not elsewhere classified
1980	D890 Polyclonal hypergammaglobulinaemia
1981	D891 Cryoglobulinaemia
1982	D892 Hypergammaglobulinaemia, unspecified
1983	D893 Immune reconstitution syndrome
1984	D898 Other specified disorders involving the immune mechanism, not elsewhere classified
1985	D899 Disorder involving the immune mechanism, unspecified
1986	E00 Congenital iodine-deficiency syndrome
1987	E000 Congenital iodine-deficiency syndrome, neurological type
1988	E001 Congenital iodine-deficiency syndrome, myxoedematous type
1989	E002 Congenital iodine-deficiency syndrome, mixed type
1990	E009 Congenital iodine-deficiency syndrome, unspecified
1991	E01 Iodine-deficiency-related thyroid disorders and allied conditions
1992	E010 Iodine-deficiency-related diffuse (endemic) goitre
1993	E011 Iodine-deficiency-related multinodular (endemic) goitre
1994	E012 Iodine-deficiency-related (endemic) goitre, unspecified
1995	E018 Other iodine-deficiency-related thyroid disorders and allied conditions
1996	E02 Subclinical iodine-deficiency hypothyroidism
1997	E03 Other hypothyroidism
1998	E030 Congenital hypothyroidism with diffuse goitre
1999	E031 Congenital hypothyroidism without goitre
2000	E032 Hypothyroidism due to medicaments and other exogenous substances
2001	E033 Postinfectious hypothyroidism
2002	E034 Atrophy of thyroid (acquired)
2003	E035 Myxoedema coma
2004	E038 Other specified hypothyroidism
2005	E039 Hypothyroidism, unspecified
2006	E04 Other nontoxic goitre
2007	E040 Nontoxic diffuse goitre
2008	E041 Nontoxic single thyroid nodule
2009	E042 Nontoxic multinodular goitre
2010	E048 Other specified nontoxic goitre
2011	E049 Nontoxic goitre, unspecified
2012	E05 Thyrotoxicosis [hyperthyroidism]
2013	E050 Thyrotoxicosis with diffuse goitre
2014	E051 Thyrotoxicosis with toxic single thyroid nodule
2015	E052 Thyrotoxicosis with toxic multinodular goitre
2016	E053 Thyrotoxicosis from ectopic thyroid tissue
2017	E054 Thyrotoxicosis factitia
2018	E055 Thyroid crisis or storm
2019	E058 Other thyrotoxicosis
2020	E059 Thyrotoxicosis, unspecified
2021	E06 Thyroiditis
2022	E060 Acute thyroiditis
2023	E061 Subacute thyroiditis
2024	E062 Chronic thyroiditis with transient thyrotoxicosis
2025	E063 Autoimmune thyroiditis
2026	E064 Drug-induced thyroiditis
2027	E065 Other chronic thyroiditis
2028	E069 Thyroiditis, unspecified
2029	E07 Other disorders of thyroid
2030	E070 Hypersecretion of calcitonin
2031	E071 Dyshormogenetic goitre
2032	E078 Other specified disorders of thyroid
2033	E079 Disorder of thyroid, unspecified
2034	E10 Insulin-dependent diabetes mellitus
2035	E100 Insulin-dependent diabetes mellitus: With coma
2036	E101 Insulin-dependent diabetes mellitus: With ketoacidosis
2037	E102 Insulin-dependent diabetes mellitus: With renal complications
2038	E103 Insulin-dependent diabetes mellitus: With ophthalmic complications
2039	E104 Insulin-dependent diabetes mellitus: With neurological complications
2040	E105 Insulin-dependent diabetes mellitus: With peripheral circulatory complications
2041	E106 Insulin-dependent diabetes mellitus: With other specified complications
2042	E107 Insulin-dependent diabetes mellitus: With multiple complications
2043	E108 Insulin-dependent diabetes mellitus: With unspecified complications
2044	E109 Insulin-dependent diabetes mellitus: Without complications
2045	E11 Non-insulin-dependent diabetes mellitus
2046	E110 Non-insulin-dependent diabetes mellitus: With coma
2047	E111 Non-insulin-dependent diabetes mellitus: With ketoacidosis
2048	E112 Non-insulin-dependent diabetes mellitus: With renal complications
2049	E113 Non-insulin-dependent diabetes mellitus: With ophthalmic complications
2050	E114 Non-insulin-dependent diabetes mellitus: With neurological complications
2051	E115 Non-insulin-dependent diabetes mellitus: With peripheral circulatory complications
2052	E116 Non-insulin-dependent diabetes mellitus: With other specified complications
2053	E117 Non-insulin-dependent diabetes mellitus: With multiple complications
2054	E118 Non-insulin-dependent diabetes mellitus: With unspecified complications
2055	E119 Non-insulin-dependent diabetes mellitus: Without complications
2056	E12 Malnutrition-related diabetes mellitus
2057	E120 Malnutrition-related diabetes mellitus: With coma
2058	E121 Malnutrition-related diabetes mellitus: With ketoacidosis
2059	E122 Malnutrition-related diabetes mellitus: With renal complications
2060	E123 Malnutrition-related diabetes mellitus: With ophthalmic complications
2061	E124 Malnutrition-related diabetes mellitus: With neurological complications
2062	E125 Malnutrition-related diabetes mellitus: With peripheral circulatory complications
2063	E126 Malnutrition-related diabetes mellitus: With other specified complications
2064	E127 Malnutrition-related diabetes mellitus: With multiple complications
2065	E128 Malnutrition-related diabetes mellitus: With unspecified complications
2066	E129 Malnutrition-related diabetes mellitus: Without complications
2067	E13 Other specified diabetes mellitus
2068	E130 Other specified diabetes mellitus: With coma
2069	E131 Other specified diabetes mellitus: With ketoacidosis
2070	E132 Other specified diabetes mellitus: With renal complications
2071	E133 Other specified diabetes mellitus: With ophthalmic complications
2072	E134 Other specified diabetes mellitus: With neurological complications
2073	E135 Other specified diabetes mellitus: With peripheral circulatory complications
2074	E136 Other specified diabetes mellitus: With other specified complications
2075	E137 Other specified diabetes mellitus: With multiple complications
2076	E138 Other specified diabetes mellitus: With unspecified complications
2077	E139 Other specified diabetes mellitus: Without complications
2078	E14 Unspecified diabetes mellitus
2079	E140 Unspecified diabetes mellitus: With coma
2080	E141 Unspecified diabetes mellitus: With ketoacidosis
2081	E142 Unspecified diabetes mellitus: With renal complications
2082	E143 Unspecified diabetes mellitus: With ophthalmic complications
2083	E144 Unspecified diabetes mellitus: With neurological complications
2084	E145 Unspecified diabetes mellitus: With peripheral circulatory complications
2085	E146 Unspecified diabetes mellitus: With other specified complications
2086	E147 Unspecified diabetes mellitus: With multiple complications
2087	E148 Unspecified diabetes mellitus: With unspecified complications
2088	E149 Unspecified diabetes mellitus: Without complications
2089	E15 Nondiabetic hypoglycaemic coma
2090	E16 Other disorders of pancreatic internal secretion
2091	E160 Drug-induced hypoglycaemia without coma
2092	E161 Other hypoglycaemia
2093	E162 Hypoglycaemia, unspecified
2094	E163 Increased secretion of glucagon
2095	E164 Abnormal secretion of gastrin
2096	E168 Other specified disorders of pancreatic internal secretion
2097	E169 Disorder of pancreatic internal secretion, unspecified
2098	E20 Hypoparathyroidism
2099	E200 Idiopathic hypoparathyroidism
2100	E201 Pseudohypoparathyroidism
2101	E208 Other hypoparathyroidism
2102	E209 Hypoparathyroidism, unspecified
2103	E21 Hyperparathyroidism and other disorders of parathyroid gland
2104	E210 Primary hyperparathyroidism
2105	E211 Secondary hyperparathyroidism, not elsewhere classified
2106	E212 Other hyperparathyroidism
2107	E213 Hyperparathyroidism, unspecified
2108	E214 Other specified disorders of parathyroid gland
2109	E215 Disorder of parathyroid gland, unspecified
2110	E22 Hyperfunction of pituitary gland
2111	E220 Acromegaly and pituitary gigantism
2112	E221 Hyperprolactinaemia
2113	E222 Syndrome of inappropriate secretion of antidiuretic hormone
2114	E228 Other hyperfunction of pituitary gland
2115	E229 Hyperfunction of pituitary gland, unspecified
2116	E23 Hypofunction and other disorders of pituitary gland
2117	E230 Hypopituitarism
2118	E231 Drug-induced hypopituitarism
2119	E232 Diabetes insipidus
2120	E233 Hypothalamic dysfunction, not elsewhere classified
2121	E236 Other disorders of pituitary gland
2122	E237 Disorder of pituitary gland, unspecified
2123	E24 Cushing syndrome
2124	E240 Pituitary-dependent Cushing disease
2125	E241 Nelson syndrome
2126	E242 Drug-induced Cushing syndrome
2127	E243 Ectopic ACTH syndrome
2128	E244 Alcohol-induced pseudo-Cushing syndrome
2129	E248 Other Cushing syndrome
2130	E249 Cushing syndrome, unspecified
2131	E25 Adrenogenital disorders
2132	E250 Congenital adrenogenital disorders associated with enzyme deficiency
2133	E258 Other adrenogenital disorders
2134	E259 Adrenogenital disorder, unspecified
2135	E260 Primary hyperaldosteronism
2136	E261 Secondary hyperaldosteronism
2137	E268 Other hyperaldosteronism
2138	E269 Hyperaldosteronism, unspecified
2139	E27 Other disorders of adrenal gland
2140	E270 Other adrenocortical overactivity
2141	E271 Primary adrenocortical insufficiency
2142	E272 Addisonian crisis
2143	E273 Drug-induced adrenocortical insufficiency
2144	E274 Other and unspecified adrenocortical insufficiency
2145	E275 Adrenomedullary hyperfunction
2146	E278 Other specified disorders of adrenal gland
2147	E279 Disorder of adrenal gland, unspecified
2148	E28 Ovarian dysfunction
2149	E280 Ovarian dysfunction: Estrogen excess
2150	E281 Ovarian dysfunction: Androgen excess
2151	E282 Polycystic ovarian syndrome
2152	E283 Primary ovarian failure
2153	E288 Other ovarian dysfunction
2154	E289 Ovarian dysfunction, unspecified
2155	E29 Testicular dysfunction
2156	E290 Testicular hyperfunction
2157	E291 Testicular hypofunction
2158	E298 Other testicular dysfunction
2159	E299 Testicular dysfunction, unspecified
2160	E30 Disorders of puberty, not elsewhere classified
2161	E300 Delayed puberty
2162	E301 Precocious puberty
2163	E308 Other disorders of puberty
2164	E309 Disorder of puberty, unspecified
2165	E31 Polyglandular dysfunction
2166	E310 Autoimmune polyglandular failure
2167	E311 Polyglandular hyperfunction
2168	E318 Other polyglandular dysfunction
2169	E319 Polyglandular dysfunction, unspecified
2170	E32 Diseases of thymus
2171	E320 Persistent hyperplasia of thymus
2172	E321 Abscess of thymus
2173	E328 Other diseases of thymus
2174	E329 Disease of thymus, unspecified
2175	E34 Other endocrine disorders
2176	E340 Carcinoid syndrome
2177	E341 Other hypersecretion of intestinal hormones
2178	E342 Ectopic hormone secretion, not elsewhere classified
2179	E343 Short stature, not elsewhere classified
2180	E344 Constitutional tall stature
2181	E345 Androgen resistance syndrome
2182	E348 Other specified endocrine disorders
2183	E349 Endocrine disorder, unspecified
2184	E35 Disorders of endocrine glands in diseases classified elsewhere
2185	E350 Disorders of thyroid gland in diseases classified elsewhere
2186	E351 Disorders of adrenal glands in diseases classified elsewhere
2187	E358 Disorders of other endocrine glands in diseases classified elsewhere
2188	E40 Kwashiorkor
2189	E41 Nutritional marasmus
2190	E42 Marasmic kwashiorkor
2191	E43 Unspecified severe protein-energy malnutrition
2192	E44 Protein-energy malnutrition of moderate and mild degree
2193	E754 Neuronal ceroid lipofuscinosis
2194	E440 Moderate protein-energy malnutrition
2195	E441 Mild protein-energy malnutrition
2196	E45 Retarded development following protein-energy malnutrition
2197	E46 Unspecified protein-energy malnutrition
2198	E50 Vitamin A deficiency
2199	E500 Vitamin A deficiency with conjunctival xerosis
2200	E501 Vitamin A deficiency with Bitot spot and conjunctival xerosis
2201	E502 Vitamin A deficiency with corneal xerosis
2202	E503 Vitamin A deficiency with corneal ulceration and xerosis
2203	E504 Vitamin A deficiency with keratomalacia
2204	E505 Vitamin A deficiency with night blindness
2205	E506 Vitamin A deficiency with xerophthalmic scars of cornea
2206	E507 Other ocular manifestations of vitamin A deficiency
2207	E508 Other manifestations of vitamin A deficiency
2208	E509 Vitamin A deficiency, unspecified
2209	E51 Thiamine deficiency
2210	E511 Beriberi
2211	E512 Wernicke encephalopathy
2212	E518 Other manifestations of thiamine deficiency
2213	E519 Thiamine deficiency, unspecified
2214	E52 Niacin deficiency [pellagra]
2215	E53 Deficiency of other B group vitamins
2216	E530 Riboflavin deficiency
2217	E531 Pyridoxine deficiency
2218	E538 Deficiency of other specified B group vitamins
2219	E539 Vitamin B deficiency, unspecified
2220	E54 Ascorbic acid deficiency
2221	E55 Vitamin D deficiency
2222	E550 Rickets, active
2223	E559 Vitamin D deficiency, unspecified
2224	E56 Other vitamin deficiencies
2225	E560 Deficiency of vitamin E
2226	E561 Deficiency of vitamin K
2227	E568 Deficiency of other vitamins
2228	E569 Vitamin deficiency, unspecified
2229	E58 Dietary calcium deficiency
2230	E59 Dietary selenium deficiency
2231	E60 Dietary zinc deficiency
2232	E61 Deficiency of other nutrient elements
2233	E610 Copper deficiency
2234	E611 Iron deficiency
2235	E612 Magnesium deficiency
2236	E613 Manganese deficiency
2237	E614 Chromium deficiency
2238	E615 Molybdenum deficiency
2239	E616 Vanadium deficiency
2240	E617 Deficiency of multiple nutrient elements
2241	E618 Deficiency of other specified nutrient elements
2242	E619 Deficiency of nutrient element, unspecified
2243	E63 Other nutritional deficiencies
2244	E630 Essential fatty acid [EFA] deficiency
2245	F31 Bipolar affective disorder
2246	E631 Imbalance of constituents of food intake
2247	E638 Other specified nutritional deficiencies
2248	E639 Nutritional deficiency, unspecified
2249	E64 Sequelae of malnutrition and other nutritional deficiencies
2250	E640 Sequelae of protein-energy malnutrition
2251	E641 Sequelae of vitamin A deficiency
2252	E642 Sequelae of vitamin C deficiency
2253	E643 Sequelae of rickets
2254	E648 Sequelae of other nutritional deficiencies
2255	E649 Sequelae of unspecified nutritional deficiency
2256	E65 Localized adiposity
2257	E66 Obesity
2258	E660 Obesity due to excess calories
2259	E661 Drug-induced obesity
2260	E662 Extreme obesity with alveolar hypoventilation
2261	E668 Other obesity
2262	E669 Obesity, unspecified
2263	E67 Other hyperalimentation
2264	E670 Hypervitaminosis A
2265	E671 Hypercarotenaemia
2266	E672 Megavitamin-B6 syndrome
2267	E673 Hypervitaminosis D
2268	E678 Other specified hyperalimentation
2269	E68 Sequelae of hyperalimentation
2270	E70 Disorders of aromatic amino-acid metabolism
2271	E700 Classical phenylketonuria
2272	E701 Other hyperphenylalaninaemias
2273	E702 Disorders of tyrosine metabolism
2274	E703 Albinism
2275	E708 Other disorders of aromatic amino-acid metabolism
2276	E709 Disorder of aromatic amino-acid metabolism, unspecified
2277	E71 Disorders of branched-chain amino-acid metabolism and fatty-acid metabolism
2278	E710 Maple-syrup-urine disease
2279	E711 Other disorders of branched-chain amino-acid metabolism
2280	E712 Disorder of branched-chain amino-acid metabolism, unspecified
2281	E713 Disorders of fatty-acid metabolism
2282	E72 Other disorders of amino-acid metabolism
2283	E720 Disorders of amino-acid transport
2284	E721 Disorders of sulfur-bearing amino-acid metabolism
2285	E722 Disorders of urea cycle metabolism
2286	E723 Disorders of lysine and hydroxylysine metabolism
2287	E724 Disorders of ornithine metabolism
2288	E725 Disorders of glycine metabolism
2289	E728 Other specified disorders of amino-acid metabolism
2290	E729 Disorder of amino-acid metabolism, unspecified
2291	E73 Lactose intolerance
2292	E730 Congenital lactase deficiency
2293	E731 Secondary lactase deficiency
2294	E738 Other lactose intolerance
2295	E739 Lactose intolerance, unspecified
2296	E74 Other disorders of carbohydrate metabolism
2297	E740 Glycogen storage disease
2298	E741 Disorders of fructose metabolism
2299	E742 Disorders of galactose metabolism
2300	E743 Other disorders of intestinal carbohydrate absorption
2301	E744 Disorders of pyruvate metabolism and gluconeogenesis
2302	E748 Other specified disorders of carbohydrate metabolism
2303	E749 Disorder of carbohydrate metabolism, unspecified
2304	E75 Disorders of sphingolipid metabolism and other lipid storage disorders
2305	E750 GM2 gangliosidosis
2306	E751 Other gangliosidosis
2307	E755 Other lipid storage disorders
2308	E756 Lipid storage disorder, unspecified
2309	E76 Disorders of glycosaminoglycan metabolism
2310	E760 Mucopolysaccharidosis, type I
2311	E761 Mucopolysaccharidosis, type II
2312	E762 Other mucopolysaccharidoses
2313	E763 Mucopolysaccharidosis, unspecified
2314	E768 Other disorders of glucosaminoglycan metabolism
2315	E769 Disorder of glucosaminoglycan metabolism, unspecified
2316	E77 Disorders of glycoprotein metabolism
2317	E770 Defects in post-translational modification of lysosomal enzymes
2318	E771 Defects in glycoprotein degradation
2319	E778 Other disorders of glycoprotein metabolism
2320	E779 Disorder of glycoprotein metabolism, unspecified
2321	E78 Disorders of lipoprotein metabolism and other lipidaemias
2322	E780 Pure hypercholesterolaemia
2323	E781 Pure hyperglyceridaemia
2324	E782 Mixed hyperlipidaemia
2325	E783 Hyperchylomicronaemia
2326	E784 Other hyperlipidaemia
2327	E785 Hyperlipidaemia, unspecified
2328	E786 Lipoprotein deficiency
2329	E788 Other disorders of lipoprotein metabolism
2330	E789 Disorder of lipoprotein metabolism, unspecified
2331	E79 Disorders of purine and pyrimidine metabolism
2332	E790 Hyperuricaemia without signs of inflammatory arthritis and tophaceous disease
2333	E791 Lesch-Nyhan syndrome
2334	E798 Other disorders of purine and pyrimidine metabolism
2335	E799 Disorder of purine and pyrimidine metabolism, unspecified
2336	E80 Disorders of porphyrin and bilirubin metabolism
2337	E800 Hereditary erythropoietic porphyria
2338	E801 Porphyria cutanea tarda
2339	E802 Other porphyria
2340	E803 Defects of catalase and peroxidase
2341	E804 Gilbert syndrome
2342	E805 Crigler-Najjar syndrome
2343	E806 Other disorders of bilirubin metabolism
2344	E807 Disorder of bilirubin metabolism, unspecified
2345	E83 Disorders of mineral metabolism
2346	E830 Disorders of copper metabolism
2347	E831 Disorders of iron metabolism
2348	E832 Disorders of zinc metabolism
2349	E833 Disorders of phosphorus metabolism and phosphatases
2350	E834 Disorders of magnesium metabolism
2351	E835 Disorders of calcium metabolism
2352	E838 Other disorders of mineral metabolism
2353	E839 Disorder of mineral metabolism, unspecified
2354	E84 Cystic fibrosis
2355	E840 Cystic fibrosis with pulmonary manifestations
2356	E841 Cystic fibrosis with intestinal manifestations
2357	E848 Cystic fibrosis with other manifestations
2358	E849 Cystic fibrosis, unspecified
2359	E85 Amyloidosis
2360	E850 Non-neuropathic heredofamilial amyloidosis
2361	E851 Neuropathic heredofamilial amyloidosis
2362	E852 Heredofamilial amyloidosis, unspecified
2363	E853 Secondary systemic amyloidosis
2364	E854 Organ-limited amyloidosis
2365	E858 Other amyloidosis
2366	E859 Amyloidosis, unspecified
2367	E86 Volume depletion
2368	E87 Other disorders of fluid, electrolyte and acid-base balance
2369	E870 Hyperosmolality and hypernatraemia
2370	E871 Hypo-osmolality and hyponatraemia
2371	E872 Acidosis
2372	E873 Alkalosis
2373	E874 Mixed disorder of acid-base balance
2374	E875 Hyperkalaemia
2375	E876 Hypokalaemia
2376	E877 Fluid overload
2377	E878 Other disorders of electrolyte and fluid balance, not elsewhere classified
2378	E88 Other metabolic disorders
2379	E880 Disorders of plasma-protein metabolism, not elsewhere classified
2380	E881 Lipodystrophy, not elsewhere classified
2381	E882 Lipomatosis, not elsewhere classified
2382	E883 Tumour lysis syndrome
2383	E888 Other specified metabolic disorders
2384	E889 Metabolic disorder, unspecified
2385	E89 Postprocedural endocrine and metabolic disorders, not elsewhere classified
2386	E890 Postprocedural hypothyroidism
2387	E891 Postprocedural hypoinsulinaemia
2388	E892 Postprocedural hypoparathyroidism
2389	E893 Postprocedural hypopituitarism
2390	E894 Postprocedural ovarian failure
2391	E895 Postprocedural testicular hypofunction
2392	E896 Postprocedural adrenocortical(-medullary) hypofunction
2393	E898 Other postprocedural endocrine and metabolic disorders
2394	E899 Postprocedural endocrine and metabolic disorder, unspecified
2395	E90 Nutritional and metabolic disorders in diseases classified elsewhere
2396	F00 Dementia in Alzheimer disease
2397	F000 Dementia in Alzheimer disease with early onset
2398	F001 Dementia in Alzheimer disease with late onset
2399	F002 Dementia in Alzheimer disease, atypical or mixed type
2400	F009 Dementia in Alzheimer disease, unspecified
2401	F01 Vascular dementia
2402	F010 Vascular dementia of acute onset
2403	F011 Multi-infarct dementia
2404	F012 Subcortical vascular dementia
2405	F013 Mixed cortical and subcortical vascular dementia
2406	F018 Other vascular dementia
2407	F019 Vascular dementia, unspecified
2408	F02 Dementia in other diseases classified elsewhere
2409	F020 Dementia in Pick disease
2410	F021 Dementia in Creutzfeldt-Jakob disease
2411	F022 Dementia in Huntington disease
2412	F023 Dementia in Parkinson disease
2413	F024 Dementia in human immunodeficiency virus [HIV] disease
2414	F028 Dementia in other specified diseases classified elsewhere
2415	F03 Unspecified dementia
2416	F04 Organic amnesic syndrome, not induced by alcohol and other psychoactive substances
2417	F05 Delirium, not induced by alcohol and other psychoactive substances
2418	F050 Delirium not superimposed on dementia, so described
2419	F051 Delirium superimposed on dementia
2420	F058 Other delirium
2421	F059 Delirium, unspecified
2422	F06 Other mental disorders due to brain damage and dysfunction and to physical disease
2423	F060 Organic hallucinosis
2424	F061 Organic catatonic disorder
2425	F062 Organic delusional [schizophrenia-like] disorder
2426	F063 Organic mood [affective] disorders
2427	F064 Organic anxiety disorder
2428	F065 Organic dissociative disorder
2429	F066 Organic emotionally labile [asthenic] disorder
2430	F067 Mild cognitive disorder
2431	F068 Other specified mental disorders due to brain damage and dysfunction and to physical disease
2432	F069 Unspecified mental disorder due to brain damage and dysfunction and to physical disease
2433	F07 Personality and behavioural disorders due to brain disease, damage and dysfunction
2434	F070 Organic personality disorder
2435	F071 Postencephalitic syndrome
2436	F072 Postconcussional syndrome
2437	F078 Other organic personality and behavioural disorders due to brain disease, damage and dysfunction
2438	F079 Unspecified organic personality and behavioural disorder due to brain disease, damage and dysfunction
2439	F09 Unspecified organic or symptomatic mental disorder
2440	F10 Mental and behavioural disorders due to use of alcohol
2441	F100 Mental and behavioural disorders due to use of alcohol: Acute intoxication
2442	F101 Mental and behavioural disorders due to use of alcohol: Harmful use
2443	F102 Mental and behavioural disorders due to use of alcohol: Dependence syndrome
2444	F103 Mental and behavioural disorders due to use of alcohol: Withdrawal state
2445	F104 Mental and behavioural disorders due to use of alcohol: Withdrawal state with delirium
2446	F105 Mental and behavioural disorders due to use of alcohol: Psychotic disorder
2447	F106 Mental and behavioural disorders due to use of alcohol: Amnesic syndrome
2448	F107 Mental and behavioural disorders due to use of alcohol: Residual and late-onset psychotic disorder
2449	F522 Failure of genital response
2450	F108 Mental and behavioural disorders due to use of alcohol: Other mental and behavioural disorders
2451	F109 Mental and behavioural disorders due to use of alcohol: Unspecified mental and behavioural disorder
2452	F11 Mental and behavioural disorders due to use of opioids
2453	F110 Mental and behavioural disorders due to use of opioids: Acute intoxication
2454	F111 Mental and behavioural disorders due to use of opioids: Harmful use
2455	F112 Mental and behavioural disorders due to use of opioids: Dependence syndrome
2456	F113 Mental and behavioural disorders due to use of opioids: Withdrawal state
2457	F114 Mental and behavioural disorders due to use of opioids: Withdrawal state with delirium
2458	F115 Mental and behavioural disorders due to use of opioids: Psychotic disorder
2459	F116 Mental and behavioural disorders due to use of opioids: Amnesic syndrome
2460	F117 Mental and behavioural disorders due to use of opioids: Residual and late-onset psychotic disorder
2461	F118 Mental and behavioural disorders due to use of opioids: Other mental and behavioural disorders
2462	F119 Mental and behavioural disorders due to use of opioids: Unspecified mental and behavioural disorder
2463	F12 Mental and behavioural disorders due to use of cannabinoids
2464	F120 Mental and behavioural disorders due to use of cannabinoids: Acute intoxication
2465	F121 Mental and behavioural disorders due to use of cannabinoids: Harmful use
2466	F122 Mental and behavioural disorders due to use of cannabinoids: Dependence syndrome
2467	F123 Mental and behavioural disorders due to use of cannabinoids: Withdrawal state
2468	F124 Mental and behavioural disorders due to use of cannabinoids: Withdrawal state with delirium
2469	F125 Mental and behavioural disorders due to use of cannabinoids: Psychotic disorder
2470	F126 Mental and behavioural disorders due to use of cannabinoids: Amnesic syndrome
2471	F127 Mental and behavioural disorders due to use of cannabinoids: Residual and late-onset psychotic disorder
2472	F128 Mental and behavioural disorders due to use of cannabinoids: Other mental and behavioural disorders
2473	F129 Mental and behavioural disorders due to use of cannabinoids: Unspecified mental and behavioural disorder
2474	F13 Mental and behavioural disorders due to use of sedatives or hypnotics
2475	F130 Mental and behavioural disorders due to use of sedatives or hypnotics: Acute intoxication
2476	F131 Mental and behavioural disorders due to use of sedatives or hypnotics: Harmful use
2477	F132 Mental and behavioural disorders due to use of sedatives or hypnotics: Dependence syndrome
2478	F133 Mental and behavioural disorders due to use of sedatives or hypnotics: Withdrawal state
2479	F134 Mental and behavioural disorders due to use of sedatives or hypnotics: Withdrawal state with delirium
2480	F135 Mental and behavioural disorders due to use of sedatives or hypnotics: Psychotic disorder
2481	F136 Mental and behavioural disorders due to use of sedatives or hypnotics: Amnesic syndrome
2482	F137 Mental and behavioural disorders due to use of sedatives or hypnotics: Residual and late-onset psychotic disorder
2483	F138 Mental and behavioural disorders due to use of sedatives or hypnotics: Other mental and behavioural disorders
2484	F139 Mental and behavioural disorders due to use of sedatives or hypnotics: Unspecified mental and behavioural disorder
2485	F14 Mental and behavioural disorders due to use of cocaine
2486	F140 Mental and behavioural disorders due to use of cocaine: Acute intoxication
2487	F141 Mental and behavioural disorders due to use of cocaine: Harmful use
2488	F142 Mental and behavioural disorders due to use of cocaine: Dependence syndrome
2489	F143 Mental and behavioural disorders due to use of cocaine: Withdrawal state
2490	G30 Alzheimer disease
2491	F144 Mental and behavioural disorders due to use of cocaine: Withdrawal state with delirium
2492	F145 Mental and behavioural disorders due to use of cocaine: Psychotic disorder
2493	F146 Mental and behavioural disorders due to use of cocaine: Amnesic syndrome
2494	F147 Mental and behavioural disorders due to use of cocaine: Residual and late-onset psychotic disorder
2495	F148 Mental and behavioural disorders due to use of cocaine: Other mental and behavioural disorders
2496	F149 Mental and behavioural disorders due to use of cocaine: Unspecified mental and behavioural disorder
2497	F15 Mental and behavioural disorders due to use of other stimulants, including caffeine
2498	F150 Mental and behavioural disorders due to use of other stimulants, including caffeine: Acute intoxication
2499	F151 Mental and behavioural disorders due to use of other stimulants, including caffeine: Harmful use
2500	F152 Mental and behavioural disorders due to use of other stimulants, including caffeine: Dependence syndrome
2501	F153 Mental and behavioural disorders due to use of other stimulants, including caffeine: Withdrawal state
2502	F154 Mental and behavioural disorders due to use of other stimulants, including caffeine: Withdrawal state with delirium
2503	F155 Mental and behavioural disorders due to use of other stimulants, including caffeine: Psychotic disorder
2504	F156 Mental and behavioural disorders due to use of other stimulants, including caffeine: Amnesic syndrome
2505	F157 Mental and behavioural disorders due to use of other stimulants, including caffeine: Residual and late-onset psychotic disorder
2506	F158 Mental and behavioural disorders due to use of other stimulants, including caffeine: Other mental and behavioural disorders
2507	F159 Mental and behavioural disorders due to use of other stimulants, including caffeine: Unspecified mental and behavioural disorder
2508	F16 Mental and behavioural disorders due to use of hallucinogens
2509	F160 Mental and behavioural disorders due to use of hallucinogens: Acute intoxication
2510	F161 Mental and behavioural disorders due to use of hallucinogens: Harmful use
2511	F162 Mental and behavioural disorders due to use of hallucinogens: Dependence syndrome
2512	F163 Mental and behavioural disorders due to use of hallucinogens: Withdrawal state
2513	F523 Orgasmic dysfunction
2514	F164 Mental and behavioural disorders due to use of hallucinogens: Withdrawal state with delirium
2515	F165 Mental and behavioural disorders due to use of hallucinogens: Psychotic disorder
2516	F166 Mental and behavioural disorders due to use of hallucinogens: Amnesic syndrome
2517	F167 Mental and behavioural disorders due to use of hallucinogens: Residual and late-onset psychotic disorder
2518	F168 Mental and behavioural disorders due to use of hallucinogens: Other mental and behavioural disorders
2519	F169 Mental and behavioural disorders due to use of hallucinogens: Unspecified mental and behavioural disorder
2520	F17 Mental and behavioural disorders due to use of tobacco
2521	F170 Mental and behavioural disorders due to use of tobacco: Acute intoxication
2522	F171 Mental and behavioural disorders due to use of tobacco: Harmful use
2523	F172 Mental and behavioural disorders due to use of tobacco: Dependence syndrome
2524	F173 Mental and behavioural disorders due to use of tobacco: Withdrawal state
2525	F174 Mental and behavioural disorders due to use of tobacco: Withdrawal state with delirium
2526	F175 Mental and behavioural disorders due to use of tobacco: Psychotic disorder
2527	F176 Mental and behavioural disorders due to use of tobacco: Amnesic syndrome
2528	F177 Mental and behavioural disorders due to use of tobacco: Residual and late-onset psychotic disorder
2529	F178 Mental and behavioural disorders due to use of tobacco: Other mental and behavioural disorders
2530	F179 Mental and behavioural disorders due to use of tobacco: Unspecified mental and behavioural disorder
2531	F18 Mental and behavioural disorders due to use of volatile solvents
2532	F180 Mental and behavioural disorders due to use of volatile solvents: Acute intoxication
2533	F181 Mental and behavioural disorders due to use of volatile solvents: Harmful use
2534	F182 Mental and behavioural disorders due to use of volatile solvents: Dependence syndrome
2535	F183 Mental and behavioural disorders due to use of volatile solvents: Withdrawal state
2536	F184 Mental and behavioural disorders due to use of volatile solvents: Withdrawal state with delirium
2537	F185 Mental and behavioural disorders due to use of volatile solvents: Psychotic disorder
2538	F186 Mental and behavioural disorders due to use of volatile solvents: Amnesic syndrome
2539	F187 Mental and behavioural disorders due to use of volatile solvents: Residual and late-onset psychotic disorder
2540	F188 Mental and behavioural disorders due to use of volatile solvents: Other mental and behavioural disorders
2541	F189 Mental and behavioural disorders due to use of volatile solvents: Unspecified mental and behavioural disorder
2542	F19 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances
2543	F190 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Acute intoxication
2544	F191 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Harmful use
2545	F192 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Dependence syndrome
2546	F193 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Withdrawal state
2547	F194 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Withdrawal state with delirium
2548	F195 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Psychotic disorder
2549	F196 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Amnesic syndrome
2550	F197 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Residual and late-onset psychotic disorder
2551	F198 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Other mental and behavioural disorders
2552	G80 Cerebral palsy
2553	F199 Mental and behavioural disorders due to multiple drug use and use of other psychoactive substances: Unspecified mental and behavioural disorder
2554	F20 Schizophrenia
2555	F200 Paranoid schizophrenia
2556	F201 Hebephrenic schizophrenia
2557	F202 Catatonic schizophrenia
2558	F203 Undifferentiated schizophrenia
2559	F204 Post-schizophrenic depression
2560	F205 Residual schizophrenia
2561	F206 Simple schizophrenia
2562	F208 Other schizophrenia
2563	F209 Schizophrenia, unspecified
2564	F21 Schizotypal disorder
2565	F22 Persistent delusional disorders
2566	F220 Delusional disorder
2567	F228 Other persistent delusional disorders
2568	F229 Persistent delusional disorder, unspecified
2569	F23 Acute and transient psychotic disorders
2570	F230 Acute polymorphic psychotic disorder without symptoms of schizophrenia
2571	F231 Acute polymorphic psychotic disorder with symptoms of schizophrenia
2572	F232 Acute schizophrenia-like psychotic disorder
2573	F233 Other acute predominantly delusional psychotic disorders
2574	F238 Other acute and transient psychotic disorders
2575	F239 Acute and transient psychotic disorder, unspecified
2576	F24 Induced delusional disorder
2577	F25 Schizoaffective disorders
2578	F250 Schizoaffective disorder, manic type
2579	F251 Schizoaffective disorder, depressive type
2580	F252 Schizoaffective disorder, mixed type
2581	F258 Other schizoaffective disorders
2582	F259 Schizoaffective disorder, unspecified
2583	F28 Other nonorganic psychotic disorders
2584	F29 Unspecified nonorganic psychosis
2585	F30 Manic episode
2586	F300 Hypomania
2587	F301 Mania without psychotic symptoms
2588	F302 Mania with psychotic symptoms
2589	F308 Other manic episodes
2590	F309 Manic episode, unspecified
2697	F525 Nonorganic vaginismus
2591	F310 Bipolar affective disorder, current episode hypomanic
2592	F311 Bipolar affective disorder, current episode manic without psychotic symptoms
2593	F312 Bipolar affective disorder, current episode manic with psychotic symptoms
2594	F313 Bipolar affective disorder, current episode mild or moderate depression
2595	F314 Bipolar affective disorder, current episode severe depression without psychotic symptoms
2596	F315 Bipolar affective disorder, current episode severe depression with psychotic symptoms
2597	F316 Bipolar affective disorder, current episode mixed
2598	F317 Bipolar affective disorder, currently in remission
2599	F318 Other bipolar affective disorders
2600	F319 Bipolar affective disorder, unspecified
2601	F32 Depressive episode
2602	F320 Mild depressive episode
2603	F321 Moderate depressive episode
2604	F322 Severe depressive episode without psychotic symptoms
2605	F323 Severe depressive episode with psychotic symptoms
2606	F328 Other depressive episodes
2607	F329 Depressive episode, unspecified
2608	F33 Recurrent depressive disorder
2609	F330 Recurrent depressive disorder, current episode mild
2610	F331 Recurrent depressive disorder, current episode moderate
2611	F332 Recurrent depressive disorder, current episode severe without psychotic symptoms
2612	F333 Recurrent depressive disorder, current episode severe with psychotic symptoms
2613	F334 Recurrent depressive disorder, currently in remission
2614	F338 Other recurrent depressive disorders
2615	F339 Recurrent depressive disorder, unspecified
2616	F34 Persistent mood [affective] disorders
2617	F340 Cyclothymia
2618	F341 Dysthymia
2619	F348 Other persistent mood [affective] disorders
2620	F349 Persistent mood [affective] disorder, unspecified
2621	F38 Other mood [affective] disorders
2622	F380 Other single mood [affective] disorders
2623	F381 Other recurrent mood [affective] disorders
2624	F388 Other specified mood [affective] disorders
2625	F39 Unspecified mood [affective] disorder
2626	F40 Phobic anxiety disorders
2627	F400 Agoraphobia
2628	F401 Social phobias
2629	F402 Specific (isolated) phobias
2630	F408 Other phobic anxiety disorders
2631	F409 Phobic anxiety disorder, unspecified
2632	F41 Other anxiety disorders
2633	F410 Panic disorder [episodic paroxysmal anxiety]
2634	F411 Generalized anxiety disorder
2635	F412 Mixed anxiety and depressive disorder
2636	F413 Other mixed anxiety disorders
2637	F418 Other specified anxiety disorders
2638	F419 Anxiety disorder, unspecified
2639	F42 Obsessive-compulsive disorder
2640	F420 Predominantly obsessional thoughts or ruminations
2641	F421 Predominantly compulsive acts [obsessional rituals]
2642	F422 Mixed obsessional thoughts and acts
2643	F428 Other obsessive-compulsive disorders
2644	F429 Obsessive-compulsive disorder, unspecified
2645	F43 Reaction to severe stress, and adjustment disorders
2646	F430 Acute stress reaction
2647	F431 Post-traumatic stress disorder
2648	F432 Adjustment disorders
2649	F438 Other reactions to severe stress
2650	F439 Reaction to severe stress, unspecified
2651	F44 Dissociative [conversion] disorders
2652	F440 Dissociative amnesia
2653	F441 Dissociative fugue
2654	F442 Dissociative stupor
2655	F443 Trance and possession disorders
2656	F444 Dissociative motor disorders
2657	F445 Dissociative convulsions
2658	F446 Dissociative anaesthesia and sensory loss
2659	F447 Mixed dissociative [conversion] disorders
2660	F448 Other dissociative [conversion] disorders
2661	F449 Dissociative [conversion] disorder, unspecified
2662	F45 Somatoform disorders
2663	F450 Somatization disorder
2664	F451 Undifferentiated somatoform disorder
2665	F452 Hypochondriacal disorder
2666	F453 Somatoform autonomic dysfunction
2667	F454 Persistent somatoform pain disorder
2668	F458 Other somatoform disorders
2669	F459 Somatoform disorder, unspecified
2670	F48 Other neurotic disorders
2671	F480 Neurasthenia
2672	F481 Depersonalization-derealization syndrome
2673	F488 Other specified neurotic disorders
2674	F489 Neurotic disorder, unspecified
2675	F50 Eating disorders
2676	F500 Anorexia nervosa
2677	F501 Atypical anorexia nervosa
2678	F502 Bulimia nervosa
2679	F503 Atypical bulimia nervosa
2680	F504 Overeating associated with other psychological disturbances
2681	F505 Vomiting associated with other psychological disturbances
2682	F508 Other eating disorders
2683	F509 Eating disorder, unspecified
2684	F51 Nonorganic sleep disorders
2685	F510 Nonorganic insomnia
2686	F511 Nonorganic hypersomnia
2687	F512 Nonorganic disorder of the sleep-wake schedule
2688	F513 Sleepwalking [somnambulism]
2689	F514 Sleep terrors [night terrors]
2690	F515 Nightmares
2691	F518 Other nonorganic sleep disorders
2692	F519 Nonorganic sleep disorder, unspecified
2693	F52 Sexual dysfunction, not caused by organic disorder or disease
2694	F520 Lack or loss of sexual desire
2695	F521 Sexual aversion and lack of sexual enjoyment
2696	F524 Premature ejaculation
2698	F526 Nonorganic dyspareunia
2699	F527 Excessive sexual drive
2700	F528 Other sexual dysfunction, not caused by organic disorder or disease
2701	F529 Unspecified sexual dysfunction, not caused by organic disorder or disease
2702	F53 Mental and behavioural disorders associated with the puerperium, not elsewhere classified
2703	F530 Mild mental and behavioural disorders associated with the puerperium, not elsewhere classified
2704	F531 Severe mental and behavioural disorders associated with the puerperium, not elsewhere classified
2705	F538 Other mental and behavioural disorders associated with the puerperium, not elsewhere classified
2706	F539 Puerperal mental disorder, unspecified
2707	F54 Psychological and behavioural factors associated with disorders or diseases classified elsewhere
2708	F55 Abuse of non-dependence-producing substances
2709	F59 Unspecified behavioural syndromes associated with physiological disturbances and physical factors
2710	F60 Specific personality disorders
2711	F600 Paranoid personality disorder
2712	F601 Schizoid personality disorder
2713	F602 Dissocial personality disorder
2714	F603 Emotionally unstable personality disorder
2715	F604 Histrionic personality disorder
2716	F605 Anankastic personality disorder
2717	F606 Anxious [avoidant] personality disorder
2718	F607 Dependent personality disorder
2719	F608 Other specific personality disorders
2720	F609 Personality disorder, unspecified
2721	F61 Mixed and other personality disorders
2722	F62 Enduring personality changes, not attributable to brain damage and disease
2723	F620 Enduring personality change after catastrophic experience
2724	F621 Enduring personality change after psychiatric illness
2725	F628 Other enduring personality changes
2726	F629 Enduring personality change, unspecified
2727	F63 Habit and impulse disorders
2728	F630 Pathological gambling
2729	F631 Pathological fire-setting [pyromania]
2730	F632 Pathological stealing [kleptomania]
2731	F633 Trichotillomania
2732	F638 Other habit and impulse disorders
2733	F639 Habit and impulse disorder, unspecified
2734	F64 Gender identity disorders
2735	F640 Transsexualism
2736	F641 Dual-role transvestism
2737	F642 Gender identity disorder of childhood
2738	F648 Other gender identity disorders
2739	F649 Gender identity disorder, unspecified
2740	F65 Disorders of sexual preference
2741	F650 Fetishism
2742	F651 Fetishistic transvestism
2743	F652 Exhibitionism
2744	F653 Voyeurism
2745	F654 Paedophilia
2746	F655 Sadomasochism
2747	F656 Multiple disorders of sexual preference
2748	F658 Other disorders of sexual preference
2749	F659 Disorder of sexual preference, unspecified
2750	F66 Psychological and behavioural disorders associated with sexual development and orientation
2751	F660 Sexual maturation disorder
2752	F661 Egodystonic sexual orientation
2753	F662 Sexual relationship disorder
2754	F668 Other psychosexual development disorders
2755	F669 Psychosexual development disorder, unspecified
2756	F68 Other disorders of adult personality and behaviour
2757	F680 Elaboration of physical symptoms for psychological reasons
2758	F681 Intentional production or feigning of symptoms or disabilities, either physical or psychological [factitious disorder]
2759	F688 Other specified disorders of adult personality and behaviour
2760	F69 Unspecified disorder of adult personality and behaviour
2761	F70 Mild mental retardation
2762	F700 Mild mental retardation: With the statement of no, or minimal, impairment of behaviour
2763	F701 Mild mental retardation: Significant impairment of behaviour requiring attention or treatment
2764	F708 Mild mental retardation: Other impairments of behaviour
2765	F709 Mild mental retardation: Without mention of impairment of behaviour
2766	F71 Moderate mental retardation
2767	F710 Moderate mental retardation: With the statement of no, or minimal, impairment of behaviour
2768	F711 Moderate mental retardation: Significant impairment of behaviour requiring attention or treatment
2769	F718 Moderate mental retardation: Other impairments of behaviour
2770	F719 Moderate mental retardation: Without mention of impairment of behaviour
2771	F72 Severe mental retardation
2772	F720 Severe mental retardation: With the statement of no, or minimal, impairment of behaviour
2773	F721 Severe mental retardation: Significant impairment of behaviour requiring attention or treatment
2774	F728 Severe mental retardation: Other impairments of behaviour
2775	F729 Severe mental retardation: Without mention of impairment of behaviour
2776	F73 Profound mental retardation
2777	F730 Profound mental retardation: With the statement of no, or minimal, impairment of behaviour
2778	F731 Profound mental retardation: Significant impairment of behaviour requiring attention or treatment
2779	F738 Profound mental retardation: Other impairments of behaviour
2780	F739 Profound mental retardation: Without mention of impairment of behaviour
2781	F78 Other mental retardation
2782	F780 Other mental retardation: With the statement of no, or minimal, impairment of behaviour
2783	F781 Other mental retardation: Significant impairment of behaviour requiring attention or treatment
2784	F788 Other mental retardation: Other impairments of behaviour
2785	F789 Other mental retardation: Without mention of impairment of behaviour
2786	F79 Unspecified mental retardation
2887	G048 Other encephalitis, myelitis and encephalomyelitis
2787	F790 Unspecified mental retardation: With the statement of no, or minimal, impairment of behaviour
2788	F791 Unspecified mental retardation: Significant impairment of behaviour requiring attention or treatment
2789	F798 Unspecified mental retardation: Other impairments of behaviour
2790	F799 Unspecified mental retardation: Without mention of impairment of behaviour
2791	F80 Specific developmental disorders of speech and language
2792	F800 Specific speech articulation disorder
2793	F801 Expressive language disorder
2794	F802 Receptive language disorder
2795	F803 Acquired aphasia with epilepsy [Landau-Kleffner]
2796	F808 Other developmental disorders of speech and language
2797	F809 Developmental disorder of speech and language, unspecified
2798	F81 Specific developmental disorders of scholastic skills
2799	F810 Specific reading disorder
2800	F811 Specific spelling disorder
2801	F812 Specific disorder of arithmetical skills
2802	F813 Mixed disorder of scholastic skills
2803	F818 Other developmental disorders of scholastic skills
2804	F819 Developmental disorder of scholastic skills, unspecified
2805	F82 Specific developmental disorder of motor function
2806	F83 Mixed specific developmental disorders
2807	F84 Pervasive developmental disorders
2808	F840 Childhood autism
2809	F841 Atypical autism
2810	F842 Rett syndrome
2811	F843 Other childhood disintegrative disorder
2812	F844 Overactive disorder associated with mental retardation and stereotyped movements
2813	F845 Asperger syndrome
2814	F848 Other pervasive developmental disorders
2815	F849 Pervasive developmental disorder, unspecified
2816	F88 Other disorders of psychological development
2817	F89 Unspecified disorder of psychological development
2818	F90 Hyperkinetic disorders
2819	F900 Disturbance of activity and attention
2820	F901 Hyperkinetic conduct disorder
2821	F908 Other hyperkinetic disorders
2822	F909 Hyperkinetic disorder, unspecified
2823	F91 Conduct disorders
2824	F910 Conduct disorder confined to the family context
2825	F911 Unsocialized conduct disorder
2826	F912 Socialized conduct disorder
2827	F913 Oppositional defiant disorder
2828	F918 Other conduct disorders
2829	F919 Conduct disorder, unspecified
2830	F92 Mixed disorders of conduct and emotions
2831	F920 Depressive conduct disorder
2832	F928 Other mixed disorders of conduct and emotions
2833	F929 Mixed disorder of conduct and emotions, unspecified
2834	F93 Emotional disorders with onset specific to childhood
2835	F930 Separation anxiety disorder of childhood
2836	F931 Phobic anxiety disorder of childhood
2837	F932 Social anxiety disorder of childhood
2838	F933 Sibling rivalry disorder
2839	F938 Other childhood emotional disorders
2840	F939 Childhood emotional disorder, unspecified
2841	F94 Disorders of social functioning with onset specific to childhood and adolescence
2842	F940 Elective mutism
2843	F941 Reactive attachment disorder of childhood
2844	F942 Disinhibited attachment disorder of childhood
2845	F948 Other childhood disorders of social functioning
2846	F949 Childhood disorder of social functioning, unspecified
2847	F95 Tic disorders
2848	F950 Transient tic disorder
2849	F951 Chronic motor or vocal tic disorder
2850	F952 Combined vocal and multiple motor tic disorder [de la Tourette]
2851	F958 Other tic disorders
2852	F959 Tic disorder, unspecified
2853	F98 Other behavioural and emotional disorders with onset usually occurring in childhood and adolescence
2854	F980 Nonorganic enuresis
2855	F981 Nonorganic encopresis
2856	F982 Feeding disorder of infancy and childhood
2857	F983 Pica of infancy and childhood
2858	F984 Stereotyped movement disorders
2859	F985 Stuttering [stammering]
2860	F986 Cluttering
2861	F988 Other specified behavioural and emotional disorders with onset usually occurring in childhood and adolescence
2862	F989 Unspecified behavioural and emotional disorders with onset usually occurring in childhood and adolescence
2863	F99 Mental disorder, not otherwise specified
2864	G00 Bacterial meningitis, not elsewhere classified
2865	G000 Haemophilus meningitis
2866	G001 Pneumococcal meningitis
2867	G002 Streptococcal meningitis
2868	G003 Staphylococcal meningitis
2869	G008 Other bacterial meningitis
2870	G009 Bacterial meningitis, unspecified
2871	G01 Meningitis in bacterial diseases classified elsewhere
2872	G02 Meningitis in other infectious and parasitic diseases classified elsewhere
2873	G020 Meningitis in viral diseases classified elsewhere
2874	G021 Meningitis in mycoses
2875	G028 Meningitis in other specified infectious and parasitic diseases classified elsewhere
2876	G03 Meningitis due to other and unspecified causes
2877	G030 Nonpyogenic meningitis
2878	G031 Chronic meningitis
2879	G032 Benign recurrent meningitis [Mollaret]
2880	G038 Meningitis due to other specified causes
2881	G039 Meningitis, unspecified
2882	G04 Encephalitis, myelitis and encephalomyelitis
2883	G040 Acute disseminated encephalitis
2884	G041 Tropical spastic paraplegia
2885	G042 Bacterial meningoencephalitis and meningomyelitis, not elsewhere classified
2886	H102 Other acute conjunctivitis
2888	G049 Encephalitis, myelitis and encephalomyelitis, unspecified
2889	G05 Encephalitis, myelitis and encephalomyelitis in diseases classified elsewhere
2890	G050 Encephalitis, myelitis and encephalomyelitis in bacterial diseases classified elsewhere
2891	G051 Encephalitis, myelitis and encephalomyelitis in viral diseases classified elsewhere
2892	G052 Encephalitis, myelitis and encephalomyelitis in other infectious and parasitic diseases classified elsewhere
2893	G058 Encephalitis, myelitis and encephalomyelitis in other diseases classified elsewhere
2894	G06 Intracranial and intraspinal abscess and granuloma
2895	G060 Intracranial abscess and granuloma
2896	G061 Intraspinal abscess and granuloma
2897	G062 Extradural and subdural abscess, unspecified
2898	G07 Intracranial and intraspinal abscess and granuloma in diseases classified elsewhere
2899	G08 Intracranial and intraspinal phlebitis and thrombophlebitis
2900	G09 Sequelae of inflammatory diseases of central nervous system
2901	G10 Huntington disease
2902	G11 Hereditary ataxia
2903	G110 Congenital nonprogressive ataxia
2904	G111 Early-onset cerebellar ataxia
2905	G112 Late-onset cerebellar ataxia
2906	G113 Cerebellar ataxia with defective DNA repair
2907	G114 Hereditary spastic paraplegia
2908	G118 Other hereditary ataxias
2909	G119 Hereditary ataxia, unspecified
2910	G12 Spinal muscular atrophy and related syndromes
2911	G120 Infantile spinal muscular atrophy, type I [Werdnig-Hoffman]
2912	G121 Other inherited spinal muscular atrophy
2913	G122 Motor neuron disease
2914	G128 Other spinal muscular atrophies and related syndromes
2915	G129 Spinal muscular atrophy, unspecified
2916	G13 Systemic atrophies primarily affecting central nervous system in diseases classified elsewhere
2917	G130 Paraneoplastic neuromyopathy and neuropathy
2918	G131 Other systemic atrophy primarily affecting central nervous system in neoplastic disease
2919	G132 Systemic atrophy primarily affecting central nervous system in myxoedema
2920	G138 Systemic atrophy primarily affecting central nervous system in other diseases classified elsewhere
2921	G14 Postpolio syndrome
2922	G20 Parkinson disease
2923	G21 Secondary parkinsonism
2924	G210 Malignant neuroleptic syndrome
2925	G211 Other drug-induced secondary parkinsonism
2926	G212 Secondary parkinsonism due to other external agents
2927	G213 Postencephalitic parkinsonism
2928	G214 Vascular parkinsonism
2929	G218 Other secondary parkinsonism
2930	G219 Secondary parkinsonism, unspecified
2931	G22 Parkinsonism in diseases classified elsewhere
2932	G23 Other degenerative diseases of basal ganglia
2933	G230 Hallervorden-Spatz disease
2934	G231 Progressive supranuclear ophthalmoplegia [Steele-Richardson-Olszewski]
2935	G232 Striatonigral degeneration
2936	G238 Other specified degenerative diseases of basal ganglia
2937	G239 Degenerative disease of basal ganglia, unspecified
2938	G24 Dystonia
2939	G240 Drug-induced dystonia
2940	G241 Idiopathic familial dystonia
2941	G242 Idiopathic nonfamilial dystonia
2942	G243 Spasmodic torticollis
2943	G244 Idiopathic orofacial dystonia
2944	G245 Blepharospasm
2945	G248 Other dystonia
2946	G249 Dystonia, unspecified
2947	G25 Other extrapyramidal and movement disorders
2948	G250 Essential tremor
2949	G251 Drug-induced tremor
2950	G252 Other specified forms of tremor
2951	G253 Myoclonus
2952	G254 Drug-induced chorea
2953	G255 Other chorea
2954	G256 Drug-induced tics and other tics of organic origin
2955	G258 Other specified extrapyramidal and movement disorders
2956	G259 Extrapyramidal and movement disorder, unspecified
2957	G26 Extrapyramidal and movement disorders in diseases classified elsewhere
2958	G300 Alzheimer disease with early onset
2959	G301 Alzheimer disease with late onset
2960	G308 Other Alzheimer disease
2961	G309 Alzheimer disease, unspecified
2962	G31 Other degenerative diseases of nervous system, not elsewhere classified
2963	G310 Circumscribed brain atrophy
2964	G311 Senile degeneration of brain, not elsewhere classified
2965	G312 Degeneration of nervous system due to alcohol
2966	G318 Other specified degenerative diseases of nervous system
2967	G319 Degenerative disease of nervous system, unspecified
2968	G32 Other degenerative disorders of nervous system in diseases classified elsewhere
2969	G320 Subacute combined degeneration of spinal cord in diseases classified elsewhere
2970	G328 Other specified degenerative disorders of nervous system in diseases classified elsewhere
2971	G35 Multiple sclerosis
2972	G36 Other acute disseminated demyelination
2973	G360 Neuromyelitis optica [Devic]
2974	G361 Acute and subacute haemorrhagic leukoencephalitis [Hurst]
2975	G368 Other specified acute disseminated demyelination
2976	G369 Acute disseminated demyelination, unspecified
2977	G37 Other demyelinating diseases of central nervous system
2978	G370 Diffuse sclerosis
2979	G371 Central demyelination of corpus callosum
2980	G372 Central pontine myelinolysis
2981	G373 Acute transverse myelitis in demyelinating disease of central nervous system
2982	G374 Subacute necrotizing myelitis
2983	G375 Concentric sclerosis [Baló]
2984	G378 Other specified demyelinating diseases of central nervous system
2985	G379 Demyelinating disease of central nervous system, unspecified
2986	G40 Epilepsy
2987	G400 Localization-related (focal)(partial) idiopathic epilepsy and epileptic syndromes with seizures of localized onset
2988	G401 Localization-related (focal)(partial) symptomatic epilepsy and epileptic syndromes with simple partial seizures
2989	G402 Localization-related (focal)(partial) symptomatic epilepsy and epileptic syndromes with complex partial seizures
2990	G403 Generalized idiopathic epilepsy and epileptic syndromes
2991	G404 Other generalized epilepsy and epileptic syndromes
2992	G405 Special epileptic syndromes
2993	G406 Grand mal seizures, unspecified (with or without petit mal)
2994	G407 Petit mal, unspecified, without grand mal seizures
2995	G408 Other epilepsy
2996	G409 Epilepsy, unspecified
2997	G41 Status epilepticus
2998	G410 Grand mal status epilepticus
2999	G411 Petit mal status epilepticus
3000	G412 Complex partial status epilepticus
3001	G418 Other status epilepticus
3002	G419 Status epilepticus, unspecified
3003	G43 Migraine
3004	G430 Migraine without aura [common migraine]
3005	G431 Migraine with aura [classical migraine]
3006	G432 Status migrainosus
3007	G433 Complicated migraine
3008	G438 Other migraine
3009	G439 Migraine, unspecified
3010	G44 Other headache syndromes
3011	G440 Cluster headache syndrome
3012	G441 Vascular headache, not elsewhere classified
3013	G442 Tension-type headache
3014	G443 Chronic post-traumatic headache
3015	G444 Drug-induced headache, not elsewhere classified
3016	G448 Other specified headache syndromes
3017	G45 Transient cerebral ischaemic attacks and related syndromes
3018	G450 Vertebro-basilar artery syndrome
3019	G451 Carotid artery syndrome (hemispheric)
3020	G452 Multiple and bilateral precerebral artery syndromes
3021	G453 Amaurosis fugax
3022	G454 Transient global amnesia
3023	G458 Other transient cerebral ischaemic attacks and related syndromes
3024	G459 Transient cerebral ischaemic attack, unspecified
3025	G46 Vascular syndromes of brain in cerebrovascular diseases
3026	G460 Middle cerebral artery syndrome
3027	G461 Anterior cerebral artery syndrome
3028	G462 Posterior cerebral artery syndrome
3029	G463 Brain stem stroke syndrome
3030	G464 Cerebellar stroke syndrome
3031	G465 Pure motor lacunar syndrome
3032	G466 Pure sensory lacunar syndrome
3033	G467 Other lacunar syndromes
3034	G468 Other vascular syndromes of brain in cerebrovascular diseases
3035	G47 Sleep disorders
3036	G470 Disorders of initiating and maintaining sleep [insomnias]
3037	G471 Disorders of excessive somnolence [hypersomnias]
3038	G472 Disorders of the sleep-wake schedule
3039	G473 Sleep apnoea
3040	G474 Narcolepsy and cataplexy
3041	G478 Other sleep disorders
3042	G479 Sleep disorder, unspecified
3043	G50 Disorders of trigeminal nerve
3044	G500 Trigeminal neuralgia
3045	G501 Atypical facial pain
3046	G508 Other disorders of trigeminal nerve
3047	G509 Disorder of trigeminal nerve, unspecified
3048	G51 Facial nerve disorders
3049	G510 Bell palsy
3050	G511 Geniculate ganglionitis
3051	G512 Melkersson syndrome
3052	G513 Clonic hemifacial spasm
3053	G514 Facial myokymia
3054	G518 Other disorders of facial nerve
3055	G519 Disorder of facial nerve, unspecified
3056	G52 Disorders of other cranial nerves
3057	G520 Disorders of olfactory nerve
3058	G521 Disorders of glossopharyngeal nerve
3059	G522 Disorders of vagus nerve
3060	G523 Disorders of hypoglossal nerve
3061	G527 Disorders of multiple cranial nerves
3062	G528 Disorders of other specified cranial nerves
3063	G529 Cranial nerve disorder, unspecified
3064	G53 Cranial nerve disorders in diseases classified elsewhere
3065	G530 Postzoster neuralgia
3066	G531 Multiple cranial nerve palsies in infectious and parasitic diseases classified elsewhere
3067	G532 Multiple cranial nerve palsies in sarcoidosis
3068	G533 Multiple cranial nerve palsies in neoplastic disease
3069	G538 Other cranial nerve disorders in other diseases classified elsewhere
3070	G54 Nerve root and plexus disorders
3071	G540 Brachial plexus disorders
3072	G541 Lumbosacral plexus disorders
3073	G542 Cervical root disorders, not elsewhere classified
3074	G543 Thoracic root disorders, not elsewhere classified
3075	G544 Lumbosacral root disorders, not elsewhere classified
3076	G545 Neuralgic amyotrophy
3077	G546 Phantom limb syndrome with pain
3078	G547 Phantom limb syndrome without pain
3079	G548 Other nerve root and plexus disorders
3080	G549 Nerve root and plexus disorder, unspecified
3081	G55 Nerve root and plexus compressions in diseases classified elsewhere
3082	G550 Nerve root and plexus compressions in neoplastic disease
3083	G551 Nerve root and plexus compressions in intervertebral disc disorders
3084	G552 Nerve root and plexus compressions in spondylosis
3085	G553 Nerve root and plexus compressions in other dorsopathies
3086	H101 Acute atopic conjunctivitis
3087	G558 Nerve root and plexus compressions in other diseases classified elsewhere
3088	G56 Mononeuropathies of upper limb
3089	G560 Carpal tunnel syndrome
3090	G561 Other lesions of median nerve
3091	G562 Lesion of ulnar nerve
3092	G563 Lesion of radial nerve
3093	G564 Causalgia
3094	G568 Other mononeuropathies of upper limb
3095	G569 Mononeuropathy of upper limb, unspecified
3096	G57 Mononeuropathies of lower limb
3097	G570 Lesion of sciatic nerve
3098	G571 Meralgia paraesthetica
3099	G572 Lesion of femoral nerve
3100	G573 Lesion of lateral popliteal nerve
3101	G574 Lesion of medial popliteal nerve
3102	G575 Tarsal tunnel syndrome
3103	G576 Lesion of plantar nerve
3104	G578 Other mononeuropathies of lower limb
3105	G579 Mononeuropathy of lower limb, unspecified
3106	G58 Other mononeuropathies
3107	G580 Intercostal neuropathy
3108	G587 Mononeuritis multiplex
3109	G588 Other specified mononeuropathies
3110	G589 Mononeuropathy, unspecified
3111	G59 Mononeuropathy in diseases classified elsewhere
3112	G590 Diabetic mononeuropathy
3113	G598 Other mononeuropathies in diseases classified elsewhere
3114	G60 Hereditary and idiopathic neuropathy
3115	G600 Hereditary motor and sensory neuropathy
3116	G601 Refsum disease
3117	G602 Neuropathy in association with hereditary ataxia
3118	G603 Idiopathic progressive neuropathy
3119	G608 Other hereditary and idiopathic neuropathies
3120	G609 Hereditary and idiopathic neuropathy, unspecified
3121	G61 Inflammatory polyneuropathy
3122	G610 Guillain-Barré syndrome
3123	G611 Serum neuropathy
3124	G618 Other inflammatory polyneuropathies
3125	G619 Inflammatory polyneuropathy, unspecified
3126	G62 Other polyneuropathies
3127	G620 Drug-induced polyneuropathy
3128	G621 Alcoholic polyneuropathy
3129	G622 Polyneuropathy due to other toxic agents
3130	G628 Other specified polyneuropathies
3131	G629 Polyneuropathy, unspecified
3132	G63 Polyneuropathy in diseases classified elsewhere
3133	G630 Polyneuropathy in infectious and parasitic diseases classified elsewhere
3134	G631 Polyneuropathy in neoplastic disease
3135	G632 Diabetic polyneuropathy
3136	G633 Polyneuropathy in other endocrine and metabolic diseases
3137	G634 Polyneuropathy in nutritional deficiency
3138	G635 Polyneuropathy in systemic connective tissue disorders
3139	G636 Polyneuropathy in other musculoskeletal disorders
3140	G638 Polyneuropathy in other diseases classified elsewhere
3141	G64 Other disorders of peripheral nervous system
3142	G70 Myasthenia gravis and other myoneural disorders
3143	G700 Myasthenia gravis
3144	G701 Toxic myoneural disorders
3145	G702 Congenital and developmental myasthenia
3146	G708 Other specified myoneural disorders
3147	G709 Myoneural disorder, unspecified
3148	G71 Primary disorders of muscles
3149	G710 Muscular dystrophy
3150	G711 Myotonic disorders
3151	G712 Congenital myopathies
3152	G713 Mitochondrial myopathy, not elsewhere classified
3153	G718 Other primary disorders of muscles
3154	G719 Primary disorder of muscle, unspecified
3155	G72 Other myopathies
3156	G720 Drug-induced myopathy
3157	G721 Alcoholic myopathy
3158	G722 Myopathy due to other toxic agents
3159	G723 Periodic paralysis
3160	G724 Inflammatory myopathy, not elsewhere classified
3161	G728 Other specified myopathies
3162	G729 Myopathy, unspecified
3163	G73 Disorders of myoneural junction and muscle in diseases classified elsewhere
3164	G730 Myasthenic syndromes in endocrine diseases
3165	G731 Lambert-Eaton syndrome
3166	G732 Other myasthenic syndromes in neoplastic disease
3167	G733 Myasthenic syndromes in other diseases classified elsewhere
3168	G734 Myopathy in infectious and parasitic diseases classified elsewhere
3169	G735 Myopathy in endocrine diseases
3170	G736 Myopathy in metabolic diseases
3171	G737 Myopathy in other diseases classified elsewhere
3172	G800 Spastic quadriplegic cerebral palsy
3173	G801 Spastic diplegic cerebral palsy
3174	G802 Spastic hemiplegic cerebral palsy
3175	G803 Dyskinetic cerebral palsy
3176	G804 Ataxic cerebral palsy
3177	G808 Other cerebral palsy
3178	G809 Cerebral palsy, unspecified
3179	G81 Hemiplegia
3180	G810 Flaccid hemiplegia
3181	G811 Spastic hemiplegia
3182	G819 Hemiplegia, unspecified
3183	G82 Paraplegia and tetraplegia
3184	G820 Flaccid paraplegia
3185	G821 Spastic paraplegia
3186	G822 Paraplegia, unspecified
3187	G823 Flaccid tetraplegia
3188	G824 Spastic tetraplegia
3189	G825 Tetraplegia, unspecified
3190	G83 Other paralytic syndromes
3191	G830 Diplegia of upper limbs
3192	G831 Monoplegia of lower limb
3193	G832 Monoplegia of upper limb
3194	G833 Monoplegia, unspecified
3195	G834 Cauda equina syndrome
3196	G838 Other specified paralytic syndromes
3197	G839 Paralytic syndrome, unspecified
3198	G90 Disorders of autonomic nervous system
3303	H104 Chronic conjunctivitis
3199	G900 Idiopathic peripheral autonomic neuropathy
3200	G901 Familial dysautonomia [Riley-Day]
3201	G902 Horner syndrome
3202	G903 Multi-system degeneration
3203	G904 Autonomic dysreflexia
3204	G908 Other disorders of autonomic nervous system
3205	G909 Disorder of autonomic nervous system, unspecified
3206	G91 Hydrocephalus
3207	G910 Communicating hydrocephalus
3208	G911 Obstructive hydrocephalus
3209	G912 Normal-pressure hydrocephalus
3210	G913 Post-traumatic hydrocephalus, unspecified
3211	G918 Other hydrocephalus
3212	G919 Hydrocephalus, unspecified
3213	G92 Toxic encephalopathy
3214	G93 Other disorders of brain
3215	G930 Cerebral cysts
3216	G931 Anoxic brain damage, not elsewhere classified
3217	G932 Benign intracranial hypertension
3218	G933 Postviral fatigue syndrome
3219	G934 Encephalopathy, unspecified
3220	G935 Compression of brain
3221	G936 Cerebral oedema
3222	G937 Reye syndrome
3223	G938 Other specified disorders of brain
3224	G939 Disorder of brain, unspecified
3225	G94 Other disorders of brain in diseases classified elsewhere
3226	G940 Hydrocephalus in infectious and parasitic diseases classified elsewhere
3227	G941 Hydrocephalus in neoplastic disease
3228	G942 Hydrocephalus in other diseases classified elsewhere
3229	G948 Other specified disorders of brain in diseases classified elsewhere
3230	G95 Other diseases of spinal cord
3231	G950 Syringomyelia and syringobulbia
3232	G951 Vascular myelopathies
3233	G952 Cord compression, unspecified
3234	G958 Other specified diseases of spinal cord
3235	G959 Disease of spinal cord, unspecified
3236	G96 Other disorders of central nervous system
3237	G960 Cerebrospinal fluid leak
3238	G961 Disorders of meninges, not elsewhere classified
3239	G968 Other specified disorders of central nervous system
3240	G969 Disorder of central nervous system, unspecified
3241	G97 Postprocedural disorders of nervous system, not elsewhere classified
3242	G970 Cerebrospinal fluid leak from spinal puncture
3243	G971 Other reaction to spinal and lumbar puncture
3244	G972 Intracranial hypotension following ventricular shunting
3245	G978 Other postprocedural disorders of nervous system
3246	G979 Postprocedural disorder of nervous system, unspecified
3247	G98 Other disorders of nervous system, not elsewhere classified
3248	G99 Other disorders of nervous system in diseases classified elsewhere
3249	G990 Autonomic neuropathy in endocrine and metabolic diseases
3250	G991 Other disorders of autonomic nervous system in other diseases classified elsewhere
3251	G992 Myelopathy in diseases classified elsewhere
3252	G998 Other specified disorders of nervous system in diseases classified elsewhere
3253	H00 Hordeolum and chalazion
3254	H000 Hordeolum and other deep inflammation of eyelid
3255	H001 Chalazion
3256	H01 Other inflammation of eyelid
3257	H010 Blepharitis
3258	H011 Noninfectious dermatoses of eyelid
3259	H018 Other specified inflammation of eyelid
3260	H019 Inflammation of eyelid, unspecified
3261	H02 Other disorders of eyelid
3262	H020 Entropion and trichiasis of eyelid
3263	H021 Ectropion of eyelid
3264	H022 Lagophthalmos
3265	H023 Blepharochalasis
3266	H024 Ptosis of eyelid
3267	H025 Other disorders affecting eyelid function
3268	H026 Xanthelasma of eyelid
3269	H027 Other degenerative disorders of eyelid and periocular area
3270	H028 Other specified disorders of eyelid
3271	H029 Disorder of eyelid, unspecified
3272	H03 Disorders of eyelid in diseases classified elsewhere
3273	H030 Parasitic infestation of eyelid in diseases classified elsewhere
3274	H031 Involvement of eyelid in other infectious diseases classified elsewhere
3275	H038 Involvement of eyelid in other diseases classified elsewhere
3276	H04 Disorders of lacrimal system
3277	H040 Dacryoadenitis
3278	H041 Other disorders of lacrimal gland
3279	H042 Epiphora
3280	H043 Acute and unspecified inflammation of lacrimal passages
3281	H044 Chronic inflammation of lacrimal passages
3282	H045 Stenosis and insufficiency of lacrimal passages
3283	H046 Other changes in lacrimal passages
3284	H048 Other disorders of lacrimal system
3285	H049 Disorder of lacrimal system, unspecified
3286	H05 Disorders of orbit
3287	H050 Acute inflammation of orbit
3288	H051 Chronic inflammatory disorders of orbit
3289	H052 Exophthalmic conditions
3290	H053 Deformity of orbit
3291	H054 Enophthalmos
3292	H055 Retained (old) foreign body following penetrating wound of orbit
3293	H058 Other disorders of orbit
3294	H059 Disorder of orbit, unspecified
3295	H06 Disorders of lacrimal system and orbit in diseases classified elsewhere
3296	H060 Disorders of lacrimal system in diseases classified elsewhere
3297	H061 Parasitic infestation of orbit in diseases classified elsewhere
3298	H062 Dysthyroid exophthalmos
3299	H063 Other disorders of orbit in diseases classified elsewhere
3300	H10 Conjunctivitis
3301	H100 Mucopurulent conjunctivitis
3302	H103 Acute conjunctivitis, unspecified
3304	H105 Blepharoconjunctivitis
3305	H108 Other conjunctivitis
3306	H109 Conjunctivitis, unspecified
3307	H11 Other disorders of conjunctiva
3308	H110 Pterygium
3309	H111 Conjunctival degenerations and deposits
3310	H112 Conjunctival scars
3311	H113 Conjunctival haemorrhage
3312	H114 Other conjunctival vascular disorders and cysts
3313	H118 Other specified disorders of conjunctiva
3314	H119 Disorder of conjunctiva, unspecified
3315	H13 Disorders of conjunctiva in diseases classified elsewhere
3316	H130 Filarial infection of conjunctiva
3317	H131 Conjunctivitis in infectious and parasitic diseases classified elsewhere
3318	H132 Conjunctivitis in other diseases classified elsewhere
3319	H133 Ocular pemphigoid
3320	H138 Other disorders of conjunctiva in diseases classified elsewhere
3321	H15 Disorders of sclera
3322	H150 Scleritis
3323	H151 Episcleritis
3324	H158 Other disorders of sclera
3325	H159 Disorder of sclera, unspecified
3326	H16 Keratitis
3327	H160 Corneal ulcer
3328	H161 Other superficial keratitis without conjunctivitis
3329	H162 Keratoconjunctivitis
3330	H163 Interstitial and deep keratitis
3331	H164 Corneal neovascularization
3332	H168 Other keratitis
3333	H169 Keratitis, unspecified
3334	H17 Corneal scars and opacities
3335	H170 Adherent leukoma
3336	H171 Other central corneal opacity
3337	H178 Other corneal scars and opacities
3338	H179 Corneal scar and opacity, unspecified
3339	H18 Other disorders of cornea
3340	H180 Corneal pigmentations and deposits
3341	H181 Bullous keratopathy
3342	H182 Other corneal oedema
3343	H183 Changes in corneal membranes
3344	H184 Corneal degeneration
3345	H185 Hereditary corneal dystrophies
3346	H186 Keratoconus
3347	H187 Other corneal deformities
3348	H188 Other specified disorders of cornea
3349	H189 Disorder of cornea, unspecified
3350	H19 Disorders of sclera and cornea in diseases classified elsewhere
3351	H190 Scleritis and episcleritis in diseases classified elsewhere
3352	H191 Herpesviral keratitis and keratoconjunctivitis
3353	H192 Keratitis and keratoconjunctivitis in other infectious and parasitic diseases classified elsewhere
3354	H193 Keratitis and keratoconjunctivitis in other diseases classified elsewhere
3355	H198 Other disorders of sclera and cornea in diseases classified elsewhere
3356	H20 Iridocyclitis
3357	H200 Acute and subacute iridocyclitis
3358	H201 Chronic iridocyclitis
3359	H202 Lens-induced iridocyclitis
3360	H208 Other iridocyclitis
3361	H209 Iridocyclitis, unspecified
3362	H21 Other disorders of iris and ciliary body
3363	H210 Hyphaema
3364	H211 Other vascular disorders of iris and ciliary body
3365	H212 Degeneration of iris and ciliary body
3366	H213 Cyst of iris, ciliary body and anterior chamber
3367	H214 Pupillary membranes
3368	H215 Other adhesions and disruptions of iris and ciliary body
3369	H218 Other specified disorders of iris and ciliary body
3370	H219 Disorder of iris and ciliary body, unspecified
3371	H22 Disorders of iris and ciliary body in diseases classified elsewhere
3372	H220 Iridocyclitis in infectious and parasitic diseases classified elsewhere
3373	H221 Iridocyclitis in other diseases classified elsewhere
3374	H228 Other disorders of iris and ciliary body in diseases classified elsewhere
3375	H25 Senile cataract
3376	H250 Senile incipient cataract
3377	H251 Senile nuclear cataract
3378	H252 Senile cataract, morgagnian type
3379	H258 Other senile cataract
3380	H259 Senile cataract, unspecified
3381	H26 Other cataract
3382	H260 Infantile, juvenile and presenile cataract
3383	H261 Traumatic cataract
3384	H262 Complicated cataract
3385	H263 Drug-induced cataract
3386	H264 After-cataract
3387	H268 Other specified cataract
3388	H269 Cataract, unspecified
3389	H27 Other disorders of lens
3390	H270 Aphakia
3391	H271 Dislocation of lens
3392	H278 Other specified disorders of lens
3393	H279 Disorder of lens, unspecified
3394	H28 Cataract and other disorders of lens in diseases classified elsewhere
3395	H280 Diabetic cataract
3396	H281 Cataract in other endocrine, nutritional and metabolic diseases
3397	H282 Cataract in other diseases classified elsewhere
3398	H288 Other disorders of lens in diseases classified elsewhere
3399	H30 Chorioretinal inflammation
3400	H300 Focal chorioretinal inflammation
3401	H301 Disseminated chorioretinal inflammation
3402	H302 Posterior cyclitis
3403	H308 Other chorioretinal inflammations
3404	H309 Chorioretinal inflammation, unspecified
3405	H31 Other disorders of choroid
3406	H310 Chorioretinal scars
3407	H311 Choroidal degeneration
3408	H312 Hereditary choroidal dystrophy
3409	H313 Choroidal haemorrhage and rupture
3410	H314 Choroidal detachment
3411	H318 Other specified disorders of choroid
3412	H319 Disorder of choroid, unspecified
3522	H525 Disorders of accommodation
3413	H32 Chorioretinal disorders in diseases classified elsewhere
3414	H320 Chorioretinal inflammation in infectious and parasitic diseases classified elsewhere
3415	H328 Other chorioretinal disorders in diseases classified elsewhere
3416	H33 Retinal detachments and breaks
3417	H330 Retinal detachment with retinal break
3418	H331 Retinoschisis and retinal cysts
3419	H332 Serous retinal detachment
3420	H333 Retinal breaks without detachment
3421	H334 Traction detachment of retina
3422	H335 Other retinal detachments
3423	H34 Retinal vascular occlusions
3424	H340 Transient retinal artery occlusion
3425	H341 Central retinal artery occlusion
3426	H342 Other retinal artery occlusions
3427	H348 Other retinal vascular occlusions
3428	H349 Retinal vascular occlusion, unspecified
3429	H35 Other retinal disorders
3430	H350 Background retinopathy and retinal vascular changes
3431	H351 Retinopathy of prematurity
3432	H352 Other proliferative retinopathy
3433	H353 Degeneration of macula and posterior pole
3434	H354 Peripheral retinal degeneration
3435	H355 Hereditary retinal dystrophy
3436	H356 Retinal haemorrhage
3437	H357 Separation of retinal layers
3438	H358 Other specified retinal disorders
3439	H359 Retinal disorder, unspecified
3440	H36 Retinal disorders in diseases classified elsewhere
3441	H360 Diabetic retinopathy
3442	H368 Other retinal disorders in diseases classified elsewhere
3443	H40 Glaucoma
3444	H400 Glaucoma suspect
3445	H401 Primary open-angle glaucoma
3446	H402 Primary angle-closure glaucoma
3447	H403 Glaucoma secondary to eye trauma
3448	H404 Glaucoma secondary to eye inflammation
3449	H405 Glaucoma secondary to other eye disorders
3450	H406 Glaucoma secondary to drugs
3451	H408 Other glaucoma
3452	H409 Glaucoma, unspecified
3453	H42 Glaucoma in diseases classified elsewhere
3454	H420 Glaucoma in endocrine, nutritional and metabolic diseases
3455	H428 Glaucoma in other diseases classified elsewhere
3456	H43 Disorders of vitreous body
3457	H430 Vitreous prolapse
3458	H431 Vitreous haemorrhage
3459	H432 Crystalline deposits in vitreous body
3460	H433 Other vitreous opacities
3461	H438 Other disorders of vitreous body
3462	H439 Disorder of vitreous body, unspecified
3463	H44 Disorders of globe
3464	H440 Purulent endophthalmitis
3465	H441 Other endophthalmitis
3466	H442 Degenerative myopia
3467	H443 Other degenerative disorders of globe
3468	H444 Hypotony of eye
3469	H445 Degenerated conditions of globe
3470	H446 Retained (old) intraocular foreign body, magnetic
3471	H447 Retained (old) intraocular foreign body, nonmagnetic
3472	H448 Other disorders of globe
3473	H449 Disorder of globe, unspecified
3474	H45 Disorders of vitreous body and globe in diseases classified elsewhere
3475	H450 Vitreous haemorrhage in diseases classified elsewhere
3476	H451 Endophthalmitis in diseases classified elsewhere
3477	H458 Other disorders of vitreous body and globe in diseases classified elsewhere
3478	H46 Optic neuritis
3479	H47 Other disorders of optic [2nd] nerve and visual pathways
3480	H470 Disorders of optic nerve, not elsewhere classified
3481	H471 Papilloedema, unspecified
3482	H472 Optic atrophy
3483	H473 Other disorders of optic disc
3484	H474 Disorders of optic chiasm
3485	H475 Disorders of other visual pathways
3486	H476 Disorders of visual cortex
3487	H477 Disorder of visual pathways, unspecified
3488	H48 Disorders of optic [2nd] nerve and visual pathways in diseases classified elsewhere
3489	H480 Optic atrophy in diseases classified elsewhere
3490	H481 Retrobulbar neuritis in diseases classified elsewhere
3491	H488 Other disorders of optic nerve and visual pathways in diseases classified elsewhere
3492	H49 Paralytic strabismus
3493	H490 Third [oculomotor] nerve palsy
3494	H491 Fourth [trochlear] nerve palsy
3495	H492 Sixth [abducent] nerve palsy
3496	H493 Total (external) ophthalmoplegia
3497	H494 Progressive external ophthalmoplegia
3498	H498 Other paralytic strabismus
3499	H499 Paralytic strabismus, unspecified
3500	H50 Other strabismus
3501	H500 Convergent concomitant strabismus
3502	H501 Divergent concomitant strabismus
3503	H502 Vertical strabismus
3504	H503 Intermittent heterotropia
3505	H504 Other and unspecified heterotropia
3506	H505 Heterophoria
3507	H506 Mechanical strabismus
3508	H508 Other specified strabismus
3509	H509 Strabismus, unspecified
3510	H51 Other disorders of binocular movement
3511	H510 Palsy of conjugate gaze
3512	H511 Convergence insufficiency and excess
3513	H512 Internuclear ophthalmoplegia
3514	H518 Other specified disorders of binocular movement
3515	H519 Disorder of binocular movement, unspecified
3516	H52 Disorders of refraction and accommodation
3517	H520 Hypermetropia
3518	H521 Myopia
3519	H522 Astigmatism
3520	H523 Anisometropia and aniseikonia
3521	H524 Presbyopia
3523	H526 Other disorders of refraction
3524	H527 Disorder of refraction, unspecified
3525	H53 Visual disturbances
3526	H530 Amblyopia ex anopsia
3527	H531 Subjective visual disturbances
3528	H532 Diplopia
3529	H533 Other disorders of binocular vision
3530	H534 Visual field defects
3531	H535 Colour vision deficiencies
3532	H536 Night blindness
3533	H538 Other visual disturbances
3534	H539 Visual disturbance, unspecified
3535	H54 Visual impairment including blindness (binocular or monocular)
3536	H540 Blindness, binocular
3537	H541 Severe visual impairment, binocular
3538	H542 Moderate visual impairment, binocular
3539	H543 Mild or no visual impairment, binocular
3540	H544 Blindness, monocular
3541	H545 Severe visual impairment, monocular
3542	H546 Moderate visual impairment, monocular
3543	H549 Unspecified visual impairment (binocular)
3544	H55 Nystagmus and other irregular eye movements
3545	H57 Other disorders of eye and adnexa
3546	H570 Anomalies of pupillary function
3547	H571 Ocular pain
3548	H578 Other specified disorders of eye and adnexa
3549	H579 Disorder of eye and adnexa, unspecified
3550	H58 Other disorders of eye and adnexa in diseases classified elsewhere
3551	H580 Anomalies of pupillary function in diseases classified elsewhere
3552	H581 Visual disturbances in diseases classified elsewhere
3553	H588 Other specified disorders of eye and adnexa in diseases classified elsewhere
3554	H59 Postprocedural disorders of eye and adnexa, not elsewhere classified
3555	H590 Keratopathy (bullous aphakic) following cataract surgery
3556	H598 Other postprocedural disorders of eye and adnexa
3557	H599 Postprocedural disorder of eye and adnexa, unspecified
3558	H60 Otitis externa
3559	H600 Abscess of external ear
3560	H601 Cellulitis of external ear
3561	H602 Malignant otitis externa
3562	H603 Other infective otitis externa
3563	H604 Cholesteatoma of external ear
3564	H605 Acute otitis externa, noninfective
3565	H608 Other otitis externa
3566	H609 Otitis externa, unspecified
3567	H61 Other disorders of external ear
3568	H610 Perichondritis of external ear
3569	H611 Noninfective disorders of pinna
3570	H612 Impacted cerumen
3571	H613 Acquired stenosis of external ear canal
3572	H618 Other specified disorders of external ear
3573	H619 Disorder of external ear, unspecified
3574	H62 Disorders of external ear in diseases classified elsewhere
3575	H620 Otitis externa in bacterial diseases classified elsewhere
3576	H621 Otitis externa in viral diseases classified elsewhere
3577	H622 Otitis externa in mycoses
3578	H623 Otitis externa in other infectious and parasitic diseases classified elsewhere
3579	H624 Otitis externa in other diseases classified elsewhere
3580	H628 Other disorders of external ear in diseases classified elsewhere
3581	H65 Nonsuppurative otitis media
3582	H650 Acute serous otitis media
3583	H651 Other acute nonsuppurative otitis media
3584	H652 Chronic serous otitis media
3585	H653 Chronic mucoid otitis media
3586	H654 Other chronic nonsuppurative otitis media
3587	H659 Nonsuppurative otitis media, unspecified
3588	H66 Suppurative and unspecified otitis media
3589	H660 Acute suppurative otitis media
3590	H661 Chronic tubotympanic suppurative otitis media
3591	H662 Chronic atticoantral suppurative otitis media
3592	H663 Other chronic suppurative otitis media
3593	H664 Suppurative otitis media, unspecified
3594	H669 Otitis media, unspecified
3595	H67 Otitis media in diseases classified elsewhere
3596	H670 Otitis media in bacterial diseases classified elsewhere
3597	H671 Otitis media in viral diseases classified elsewhere
3598	H678 Otitis media in other diseases classified elsewhere
3599	H68 Eustachian salpingitis and obstruction
3600	H680 Eustachian salpingitis
3601	H681 Obstruction of Eustachian tube
3602	H69 Other disorders of Eustachian tube
3603	H690 Patulous Eustachian tube
3604	H698 Other specified disorders of Eustachian tube
3605	H699 Eustachian tube disorder, unspecified
3606	H70 Mastoiditis and related conditions
3607	H700 Acute mastoiditis
3608	H701 Chronic mastoiditis
3609	H702 Petrositis
3610	H708 Other mastoiditis and related conditions
3611	H709 Mastoiditis, unspecified
3612	H71 Cholesteatoma of middle ear
3613	H72 Perforation of tympanic membrane
3614	H720 Central perforation of tympanic membrane
3615	H721 Attic perforation of tympanic membrane
3616	H722 Other marginal perforations of tympanic membrane
3617	H728 Other perforations of tympanic membrane
3618	H729 Perforation of tympanic membrane, unspecified
3619	H73 Other disorders of tympanic membrane
3620	H730 Acute myringitis
3621	H731 Chronic myringitis
3622	H738 Other specified disorders of tympanic membrane
3623	H739 Disorder of tympanic membrane, unspecified
3624	H74 Other disorders of middle ear and mastoid
3625	H740 Tympanosclerosis
3626	H741 Adhesive middle ear disease
3627	H742 Discontinuity and dislocation of ear ossicles
3628	H743 Other acquired abnormalities of ear ossicles
3629	H744 Polyp of middle ear
3630	H748 Other specified disorders of middle ear and mastoid
3631	H749 Disorder of middle ear and mastoid, unspecified
3632	H75 Other disorders of middle ear and mastoid in diseases classified elsewhere
3633	H750 Mastoiditis in infectious and parasitic diseases classified elsewhere
3634	H758 Other specified disorders of middle ear and mastoid in diseases classified elsewhere
3635	H80 Otosclerosis
3636	H800 Otosclerosis involving oval window, nonobliterative
3637	H801 Otosclerosis involving oval window, obliterative
3638	H802 Cochlear otosclerosis
3639	H808 Other otosclerosis
3640	H809 Otosclerosis, unspecified
3641	H81 Disorders of vestibular function
3642	H810 Ménière disease
3643	H811 Benign paroxysmal vertigo
3644	H812 Vestibular neuronitis
3645	H813 Other peripheral vertigo
3646	H814 Vertigo of central origin
3647	H818 Other disorders of vestibular function
3648	H819 Disorder of vestibular function, unspecified
3649	H82 Vertiginous syndromes in diseases classified elsewhere
3650	H83 Other diseases of inner ear
3651	H830 Labyrinthitis
3652	H831 Labyrinthine fistula
3653	H832 Labyrinthine dysfunction
3654	H833 Noise effects on inner ear
3655	H838 Other specified diseases of inner ear
3656	H839 Disease of inner ear, unspecified
3657	H90 Conductive and sensorineural hearing loss
3658	H900 Conductive hearing loss, bilateral
3659	H901 Conductive hearing loss, unilateral with unrestricted hearing on the contralateral side
3660	H902 Conductive hearing loss, unspecified
3661	H903 Sensorineural hearing loss, bilateral
3662	H904 Sensorineural hearing loss, unilateral with unrestricted hearing on the contralateral side
3663	H905 Sensorineural hearing loss, unspecified
3664	H906 Mixed conductive and sensorineural hearing loss, bilateral
3665	H907 Mixed conductive and sensorineural hearing loss, unilateral with unrestricted hearing on the contralateral side
3666	H908 Mixed conductive and sensorineural hearing loss, unspecified
3667	H91 Other hearing loss
3668	H910 Ototoxic hearing loss
3669	H911 Presbycusis
3670	H912 Sudden idiopathic hearing loss
3671	H913 Deaf mutism, not elsewhere classified
3672	H918 Other specified hearing loss
3673	H919 Hearing loss, unspecified
3674	H92 Otalgia and effusion of ear
3675	H920 Otalgia
3676	H921 Otorrhoea
3677	H922 Otorrhagia
3678	H93 Other disorders of ear, not elsewhere classified
3679	H930 Degenerative and vascular disorders of ear
3680	H931 Tinnitus
3681	H932 Other abnormal auditory perceptions
3682	H933 Disorders of acoustic nerve
3683	H938 Other specified disorders of ear
3684	H939 Disorder of ear, unspecified
3685	H94 Other disorders of ear in diseases classified elsewhere
3686	H940 Acoustic neuritis in infectious and parasitic diseases classified elsewhere
3687	H948 Other specified disorders of ear in diseases classified elsewhere
3688	H95 Postprocedural disorders of ear and mastoid process, not elsewhere classified
3689	H950 Recurrent cholesteatoma of postmastoidectomy cavity
3690	H951 Other disorders following mastoidectomy
3691	H958 Other postprocedural disorders of ear and mastoid process
3692	H959 Postprocedural disorder of ear and mastoid process, unspecified
3693	I00 Rheumatic fever without mention of heart involvement
3694	I01 Rheumatic fever with heart involvement
3695	I010 Acute rheumatic pericarditis
3696	I011 Acute rheumatic endocarditis
3697	I012 Acute rheumatic myocarditis
3698	I018 Other acute rheumatic heart disease
3699	I019 Acute rheumatic heart disease, unspecified
3700	I02 Rheumatic chorea
3701	I020 Rheumatic chorea with heart involvement
3702	I029 Rheumatic chorea without heart involvement
3703	I05 Rheumatic mitral valve diseases
3704	I050 Mitral stenosis
3705	I051 Rheumatic mitral insufficiency
3706	I052 Mitral stenosis with insufficiency
3707	I058 Other mitral valve diseases
3708	I059 Mitral valve disease, unspecified
3709	I06 Rheumatic aortic valve diseases
3710	I060 Rheumatic aortic stenosis
3711	I061 Rheumatic aortic insufficiency
3712	I062 Rheumatic aortic stenosis with insufficiency
3713	I068 Other rheumatic aortic valve diseases
3714	I069 Rheumatic aortic valve disease, unspecified
3715	I07 Rheumatic tricuspid valve diseases
3716	I070 Tricuspid stenosis
3717	I071 Tricuspid insufficiency
3718	I072 Tricuspid stenosis with insufficiency
3719	I078 Other tricuspid valve diseases
3720	I079 Tricuspid valve disease, unspecified
3721	I08 Multiple valve diseases
3722	I080 Disorders of both mitral and aortic valves
3723	I081 Disorders of both mitral and tricuspid valves
3724	I082 Disorders of both aortic and tricuspid valves
3725	I083 Combined disorders of mitral, aortic and tricuspid valves
3726	I088 Other multiple valve diseases
3727	I089 Multiple valve disease, unspecified
3728	I09 Other rheumatic heart diseases
3729	I090 Rheumatic myocarditis
3730	I091 Rheumatic diseases of endocardium, valve unspecified
3731	I092 Chronic rheumatic pericarditis
3732	I098 Other specified rheumatic heart diseases
3733	I099 Rheumatic heart disease, unspecified
3734	I10 Essential (primary) hypertension
3735	I11 Hypertensive heart disease
3736	I110 Hypertensive heart disease with (congestive) heart failure
3737	I119 Hypertensive heart disease without (congestive) heart failure
3738	I12 Hypertensive renal disease
3739	I120 Hypertensive renal disease with renal failure
3740	I129 Hypertensive renal disease without renal failure
3741	I13 Hypertensive heart and renal disease
3742	I130 Hypertensive heart and renal disease with (congestive) heart failure
3743	I131 Hypertensive heart and renal disease with renal failure
3744	I132 Hypertensive heart and renal disease with both (congestive) heart failure and renal failure
3745	I139 Hypertensive heart and renal disease, unspecified
3746	I15 Secondary hypertension
3747	I150 Renovascular hypertension
3748	I151 Hypertension secondary to other renal disorders
3749	I152 Hypertension secondary to endocrine disorders
3750	I158 Other secondary hypertension
3751	I159 Secondary hypertension, unspecified
3752	I20 Angina pectoris
3753	I200 Unstable angina
3754	I201 Angina pectoris with documented spasm
3755	I208 Other forms of angina pectoris
3756	I209 Angina pectoris, unspecified
3757	I21 Acute myocardial infarction
3758	I210 Acute transmural myocardial infarction of anterior wall
3759	I211 Acute transmural myocardial infarction of inferior wall
3760	I212 Acute transmural myocardial infarction of other sites
3761	I213 Acute transmural myocardial infarction of unspecified site
3762	I214 Acute subendocardial myocardial infarction
3763	I219 Acute myocardial infarction, unspecified
3764	I22 Subsequent myocardial infarction
3765	I220 Subsequent myocardial infarction of anterior wall
3766	I221 Subsequent myocardial infarction of inferior wall
3767	I228 Subsequent myocardial infarction of other sites
3768	I229 Subsequent myocardial infarction of unspecified site
3769	I23 Certain current complications following acute myocardial infarction
3770	I230 Haemopericardium as current complication following acute myocardial infarction
3771	I231 Atrial septal defect as current complication following acute myocardial infarction
3772	I232 Ventricular septal defect as current complication following acute myocardial infarction
3773	I233 Rupture of cardiac wall without haemopericardium as current complication following acute myocardial infarction
3774	I234 Rupture of chordae tendineae as current complication following acute myocardial infarction
3775	I235 Rupture of papillary muscle as current complication following acute myocardial infarction
3776	I236 Thrombosis of atrium, auricular appendage, and ventricle as current complications following acute myocardial infarction
3777	I238 Other current complications following acute myocardial infarction
3778	I24 Other acute ischaemic heart diseases
3779	I240 Coronary thrombosis not resulting in myocardial infarction
3780	I241 Dressler syndrome
3781	I248 Other forms of acute ischaemic heart disease
3782	I249 Acute ischaemic heart disease, unspecified
3783	I25 Chronic ischaemic heart disease
3784	I250 Atherosclerotic cardiovascular disease, so described
3785	I251 Atherosclerotic heart disease
3786	I252 Old myocardial infarction
3787	I253 Aneurysm of heart
3788	I254 Coronary artery aneurysm
3789	I255 Ischaemic cardiomyopathy
3790	I256 Silent myocardial ischaemia
3791	I258 Other forms of chronic ischaemic heart disease
3792	I259 Chronic ischaemic heart disease, unspecified
3793	I26 Pulmonary embolism
3794	I260 Pulmonary embolism with mention of acute cor pulmonale
3795	I269 Pulmonary embolism without mention of acute cor pulmonale
3796	I27 Other pulmonary heart diseases
3797	I270 Primary pulmonary hypertension
3798	I271 Kyphoscoliotic heart disease
3799	I272 Other secondary pulmonary hypertension
3800	I278 Other specified pulmonary heart diseases
3801	I279 Pulmonary heart disease, unspecified
3802	I28 Other diseases of pulmonary vessels
3803	I280 Arteriovenous fistula of pulmonary vessels
3804	I281 Aneurysm of pulmonary artery
3805	I288 Other specified diseases of pulmonary vessels
3806	I289 Disease of pulmonary vessels, unspecified
3807	I30 Acute pericarditis
3808	I300 Acute nonspecific idiopathic pericarditis
3809	I301 Infective pericarditis
3810	I308 Other forms of acute pericarditis
3811	I309 Acute pericarditis, unspecified
3812	I31 Other diseases of pericardium
3813	I310 Chronic adhesive pericarditis
3814	I311 Chronic constrictive pericarditis
3815	I312 Haemopericardium, not elsewhere classified
3816	I313 Pericardial effusion (noninflammatory)
3817	I318 Other specified diseases of pericardium
3818	I319 Disease of pericardium, unspecified
3819	I32 Pericarditis in diseases classified elsewhere
3820	I320 Pericarditis in bacterial diseases classified elsewhere
3821	I321 Pericarditis in other infectious and parasitic diseases classified elsewhere
3822	I328 Pericarditis in other diseases classified elsewhere
3823	I33 Acute and subacute endocarditis
3824	I330 Acute and subacute infective endocarditis
3825	I339 Acute endocarditis, unspecified
3826	I34 Nonrheumatic mitral valve disorders
3827	I340 Mitral (valve) insufficiency
3828	I341 Mitral (valve) prolapse
3829	I342 Nonrheumatic mitral (valve) stenosis
3830	I348 Other nonrheumatic mitral valve disorders
3831	I349 Nonrheumatic mitral valve disorder, unspecified
3832	I35 Nonrheumatic aortic valve disorders
3833	I350 Aortic (valve) stenosis
3834	I351 Aortic (valve) insufficiency
3835	I352 Aortic (valve) stenosis with insufficiency
3836	I358 Other aortic valve disorders
3837	I359 Aortic valve disorder, unspecified
3838	I36 Nonrheumatic tricuspid valve disorders
3839	I360 Nonrheumatic tricuspid (valve) stenosis
3840	I361 Nonrheumatic tricuspid (valve) insufficiency
3841	I362 Nonrheumatic tricuspid (valve) stenosis with insufficiency
3842	I368 Other nonrheumatic tricuspid valve disorders
3843	I369 Nonrheumatic tricuspid valve disorder, unspecified
3844	I37 Pulmonary valve disorders
3845	I370 Pulmonary valve stenosis
3846	I371 Pulmonary valve insufficiency
3847	I372 Pulmonary valve stenosis with insufficiency
3848	I378 Other pulmonary valve disorders
3849	I379 Pulmonary valve disorder, unspecified
3850	I38 Endocarditis, valve unspecified
3851	I39 Endocarditis and heart valve disorders in diseases classified elsewhere
3852	I390 Mitral valve disorders in diseases classified elsewhere
3853	I391 Aortic valve disorders in diseases classified elsewhere
3854	I392 Tricuspid valve disorders in diseases classified elsewhere
3855	I393 Pulmonary valve disorders in diseases classified elsewhere
3856	I394 Multiple valve disorders in diseases classified elsewhere
3857	I398 Endocarditis, valve unspecified, in diseases classified elsewhere
3858	I40 Acute myocarditis
3859	I400 Infective myocarditis
3860	I401 Isolated myocarditis
3861	I408 Other acute myocarditis
3862	I409 Acute myocarditis, unspecified
3863	I41 Myocarditis in diseases classified elsewhere
3864	I410 Myocarditis in bacterial diseases classified elsewhere
3865	I411 Myocarditis in viral diseases classified elsewhere
3866	I412 Myocarditis in other infectious and parasitic diseases classified elsewhere
3867	I418 Myocarditis in other diseases classified elsewhere
3868	I42 Cardiomyopathy
3869	I420 Dilated cardiomyopathy
3870	I421 Obstructive hypertrophic cardiomyopathy
3871	I422 Other hypertrophic cardiomyopathy
3872	I423 Endomyocardial (eosinophilic) disease
3873	I424 Endocardial fibroelastosis
3874	I425 Other restrictive cardiomyopathy
3875	I426 Alcoholic cardiomyopathy
3876	I427 Cardiomyopathy due to drugs and other external agents
3877	I428 Other cardiomyopathies
3878	I429 Cardiomyopathy, unspecified
3879	I43 Cardiomyopathy in diseases classified elsewhere
3880	I430 Cardiomyopathy in infectious and parasitic diseases classified elsewhere
3881	I431 Cardiomyopathy in metabolic diseases
3882	I432 Cardiomyopathy in nutritional diseases
3883	I438 Cardiomyopathy in other diseases classified elsewhere
3884	I44 Atrioventricular and left bundle-branch block
3885	I440 Atrioventricular block, first degree
3886	I441 Atrioventricular block, second degree
3887	I442 Atrioventricular block, complete
3888	I443 Other and unspecified atrioventricular block
3889	I444 Left anterior fascicular block
3890	I445 Left posterior fascicular block
3891	I446 Other and unspecified fascicular block
3892	I447 Left bundle-branch block, unspecified
3893	I45 Other conduction disorders
3894	I450 Right fascicular block
3895	I451 Other and unspecified right bundle-branch block
3896	I452 Bifascicular block
3897	I453 Trifascicular block
3898	I454 Nonspecific intraventricular block
3899	I455 Other specified heart block
3900	I456 Pre-excitation syndrome
3901	I458 Other specified conduction disorders
3902	I459 Conduction disorder, unspecified
3903	I46 Cardiac arrest
3904	I460 Cardiac arrest with successful resuscitation
3905	I461 Sudden cardiac death, so described
3906	I469 Cardiac arrest, unspecified
3907	I47 Paroxysmal tachycardia
3908	I470 Re-entry ventricular arrhythmia
3909	I471 Supraventricular tachycardia
3910	I472 Ventricular tachycardia
3911	I479 Paroxysmal tachycardia, unspecified
3912	I48 Atrial fibrillation and flutter
3913	I49 Other cardiac arrhythmias
3914	I490 Ventricular fibrillation and flutter
3915	I491 Atrial premature depolarization
3916	I492 Junctional premature depolarization
3917	I493 Ventricular premature depolarization
3918	I494 Other and unspecified premature depolarization
3919	I495 Sick sinus syndrome
3920	I498 Other specified cardiac arrhythmias
3921	I499 Cardiac arrhythmia, unspecified
3922	I50 Heart failure
3923	I500 Congestive heart failure
3924	I501 Left ventricular failure
3925	I509 Heart failure, unspecified
3926	I51 Complications and ill-defined descriptions of heart disease
3927	I510 Cardiac septal defect, acquired
3928	K900 Coeliac disease
3929	I511 Rupture of chordae tendineae, not elsewhere classified
3930	I512 Rupture of papillary muscle, not elsewhere classified
3931	J661 Flax-dresser disease
3932	K010 Embedded teeth
3933	I513 Intracardiac thrombosis, not elsewhere classified
3934	I514 Myocarditis, unspecified
3935	I515 Myocardial degeneration
3936	I516 Cardiovascular disease, unspecified
3937	I517 Cardiomegaly
3938	I518 Other ill-defined heart diseases
3939	I519 Heart disease, unspecified
3940	I52 Other heart disorders in diseases classified elsewhere
3941	I520 Other heart disorders in bacterial diseases classified elsewhere
3942	I521 Other heart disorders in other infectious and parasitic diseases classified elsewhere
3943	I528 Other heart disorders in other diseases classified elsewhere
3944	I60 Subarachnoid haemorrhage
3945	I600 Subarachnoid haemorrhage from carotid siphon and bifurcation
3946	I601 Subarachnoid haemorrhage from middle cerebral artery
3947	I602 Subarachnoid haemorrhage from anterior communicating artery
3948	I603 Subarachnoid haemorrhage from posterior communicating artery
3949	I604 Subarachnoid haemorrhage from basilar artery
3950	I605 Subarachnoid haemorrhage from vertebral artery
3951	I606 Subarachnoid haemorrhage from other intracranial arteries
3952	I607 Subarachnoid haemorrhage from intracranial artery, unspecified
3953	I608 Other subarachnoid haemorrhage
3954	I609 Subarachnoid haemorrhage, unspecified
3955	I61 Intracerebral haemorrhage
3956	I610 Intracerebral haemorrhage in hemisphere, subcortical
3957	I611 Intracerebral haemorrhage in hemisphere, cortical
3958	I612 Intracerebral haemorrhage in hemisphere, unspecified
3959	I613 Intracerebral haemorrhage in brain stem
3960	I614 Intracerebral haemorrhage in cerebellum
3961	I615 Intracerebral haemorrhage, intraventricular
3962	I616 Intracerebral haemorrhage, multiple localized
3963	I618 Other intracerebral haemorrhage
3964	I619 Intracerebral haemorrhage, unspecified
3965	I62 Other nontraumatic intracranial haemorrhage
3966	I620 Subdural haemorrhage (acute)(nontraumatic)
3967	I621 Nontraumatic extradural haemorrhage
3968	I629 Intracranial haemorrhage (nontraumatic), unspecified
3969	I63 Cerebral infarction
3970	I630 Cerebral infarction due to thrombosis of precerebral arteries
3971	I631 Cerebral infarction due to embolism of precerebral arteries
3972	I632 Cerebral infarction due to unspecified occlusion or stenosis of precerebral arteries
3973	I633 Cerebral infarction due to thrombosis of cerebral arteries
3974	I634 Cerebral infarction due to embolism of cerebral arteries
3975	I635 Cerebral infarction due to unspecified occlusion or stenosis of cerebral arteries
3976	I636 Cerebral infarction due to cerebral venous thrombosis, nonpyogenic
3977	I638 Other cerebral infarction
3978	I639 Cerebral infarction, unspecified
3979	I64 Stroke, not specified as haemorrhage or infarction
3980	I65 Occlusion and stenosis of precerebral arteries, not resulting in cerebral infarction
3981	I650 Occlusion and stenosis of vertebral artery
3982	I651 Occlusion and stenosis of basilar artery
3983	I652 Occlusion and stenosis of carotid artery
3984	I653 Occlusion and stenosis of multiple and bilateral precerebral arteries
3985	I658 Occlusion and stenosis of other precerebral artery
3986	I659 Occlusion and stenosis of unspecified precerebral artery
3987	I66 Occlusion and stenosis of cerebral arteries, not resulting in cerebral infarction
3988	I660 Occlusion and stenosis of middle cerebral artery
3989	I661 Occlusion and stenosis of anterior cerebral artery
3990	I662 Occlusion and stenosis of posterior cerebral artery
3991	I663 Occlusion and stenosis of cerebellar arteries
3992	I664 Occlusion and stenosis of multiple and bilateral cerebral arteries
3993	I668 Occlusion and stenosis of other cerebral artery
3994	I669 Occlusion and stenosis of unspecified cerebral artery
3995	I67 Other cerebrovascular diseases
3996	I670 Dissection of cerebral arteries, nonruptured
3997	I671 Cerebral aneurysm, nonruptured
3998	I672 Cerebral atherosclerosis
3999	I673 Progressive vascular leukoencephalopathy
4000	I674 Hypertensive encephalopathy
4001	I675 Moyamoya disease
4002	I676 Nonpyogenic thrombosis of intracranial venous system
4003	I677 Cerebral arteritis, not elsewhere classified
4004	I678 Other specified cerebrovascular diseases
4005	I679 Cerebrovascular disease, unspecified
4006	I68 Cerebrovascular disorders in diseases classified elsewhere
4007	I680 Cerebral amyloid angiopathy
4008	I681 Cerebral arteritis in infectious and parasitic diseases classified elsewhere
4009	I682 Cerebral arteritis in other diseases classified elsewhere
4010	I688 Other cerebrovascular disorders in diseases classified elsewhere
4011	I69 Sequelae of cerebrovascular disease
4012	I690 Sequelae of subarachnoid haemorrhage
4013	I691 Sequelae of intracerebral haemorrhage
4014	I692 Sequelae of other nontraumatic intracranial haemorrhage
4015	I693 Sequelae of cerebral infarction
4016	I694 Sequelae of stroke, not specified as haemorrhage or infarction
4017	I698 Sequelae of other and unspecified cerebrovascular diseases
4018	I70 Atherosclerosis
4019	I700 Atherosclerosis of aorta
4020	I701 Atherosclerosis of renal artery
4021	I702 Atherosclerosis of arteries of extremities
4022	I708 Atherosclerosis of other arteries
4023	I709 Generalized and unspecified atherosclerosis
4024	I71 Aortic aneurysm and dissection
4025	I710 Dissection of aorta [any part]
4026	I711 Thoracic aortic aneurysm, ruptured
4027	I712 Thoracic aortic aneurysm, without mention of rupture
4028	I713 Abdominal aortic aneurysm, ruptured
4029	I714 Abdominal aortic aneurysm, without mention of rupture
4030	I715 Thoracoabdominal aortic aneurysm, ruptured
4031	I716 Thoracoabdominal aortic aneurysm, without mention of rupture
4032	I718 Aortic aneurysm of unspecified site, ruptured
4033	I719 Aortic aneurysm of unspecified site, without mention of rupture
4034	I72 Other aneurysm and dissection
4035	I720 Aneurysm and dissection of carotid artery
4036	I721 Aneurysm and dissection of artery of upper extremity
4037	I722 Aneurysm and dissection of renal artery
4038	I723 Aneurysm and dissection of iliac artery
4039	I724 Aneurysm and dissection of artery of lower extremity
4040	I725 Aneurysm and dissection of other precerebral arteries
4041	I728 Aneurysm and dissection of other specified arteries
4042	I729 Aneurysm and dissection of unspecified site
4043	I73 Other peripheral vascular diseases
4044	I730 Raynaud syndrome
4045	I731 Thromboangiitis obliterans [Buerger]
4046	I738 Other specified peripheral vascular diseases
4047	I739 Peripheral vascular disease, unspecified
4048	I74 Arterial embolism and thrombosis
4049	I740 Embolism and thrombosis of abdominal aorta
4050	I741 Embolism and thrombosis of other and unspecified parts of aorta
4051	I742 Embolism and thrombosis of arteries of upper extremities
4052	I743 Embolism and thrombosis of arteries of lower extremities
4053	I744 Embolism and thrombosis of arteries of extremities, unspecified
4054	I745 Embolism and thrombosis of iliac artery
4055	I748 Embolism and thrombosis of other arteries
4056	I749 Embolism and thrombosis of unspecified artery
4057	I77 Other disorders of arteries and arterioles
4058	I770 Arteriovenous fistula, acquired
4059	I771 Stricture of artery
4060	I772 Rupture of artery
4061	I773 Arterial fibromuscular dysplasia
4062	I774 Coeliac artery compression syndrome
4063	I775 Necrosis of artery
4064	I776 Arteritis, unspecified
4065	I778 Other specified disorders of arteries and arterioles
4066	I779 Disorder of arteries and arterioles, unspecified
4067	I78 Diseases of capillaries
4068	I780 Hereditary haemorrhagic telangiectasia
4069	I781 Naevus, non-neoplastic
4070	I788 Other diseases of capillaries
4071	I789 Disease of capillaries, unspecified
4072	I79 Disorders of arteries, arterioles and capillaries in diseases classified elsewhere
4073	I790 Aneurysm of aorta in diseases classified elsewhere
4074	I791 Aortitis in diseases classified elsewhere
4075	I792 Peripheral angiopathy in diseases classified elsewhere
4076	I798 Other disorders of arteries, arterioles and capillaries in diseases classified elsewhere
4077	I80 Phlebitis and thrombophlebitis
4078	I800 Phlebitis and thrombophlebitis of superficial vessels of lower extremities
4079	I801 Phlebitis and thrombophlebitis of femoral vein
4080	I802 Phlebitis and thrombophlebitis of other deep vessels of lower extremities
4081	I803 Phlebitis and thrombophlebitis of lower extremities, unspecified
4082	I808 Phlebitis and thrombophlebitis of other sites
4083	I809 Phlebitis and thrombophlebitis of unspecified site
4084	I81 Portal vein thrombosis
4085	I82 Other venous embolism and thrombosis
4086	I820 Budd-Chiari syndrome
4087	I821 Thrombophlebitis migrans
4088	I822 Embolism and thrombosis of vena cava
4089	I823 Embolism and thrombosis of renal vein
4090	I828 Embolism and thrombosis of other specified veins
4091	I829 Embolism and thrombosis of unspecified vein
4092	I83 Varicose veins of lower extremities
4093	I830 Varicose veins of lower extremities with ulcer
4094	I831 Varicose veins of lower extremities with inflammation
4095	I832 Varicose veins of lower extremities with both ulcer and inflammation
4096	I839 Varicose veins of lower extremities without ulcer or inflammation
4097	I84 Haemorrhoids
4098	I840 Internal thrombosed haemorrhoids
4099	I841 Internal haemorrhoids with other complications
4100	I842 Internal haemorrhoids without complication
4101	I843 External thrombosed haemorrhoids
4102	I844 External haemorrhoids with other complications
4103	I845 External haemorrhoids without complication
4104	I846 Residual haemorrhoidal skin tags
4105	I847 Unspecified thrombosed haemorrhoids
4106	I848 Unspecified haemorrhoids with other complications
4107	I849 Unspecified haemorrhoids without complication
4108	I85 Oesophageal varices
4109	I850 Oesophageal varices with bleeding
4110	I859 Oesophageal varices without bleeding
4111	I86 Varicose veins of other sites
4112	I860 Sublingual varices
4113	I861 Scrotal varices
4114	I862 Pelvic varices
4115	I863 Vulval varices
4116	I864 Gastric varices
4117	I868 Varicose veins of other specified sites
4118	I87 Other disorders of veins
4119	I870 Postthrombotic syndrome
4120	I871 Compression of vein
4121	I872 Venous insufficiency (chronic)(peripheral)
4122	I878 Other specified disorders of veins
4123	I879 Disorder of vein, unspecified
4124	I88 Nonspecific lymphadenitis
4125	I880 Nonspecific mesenteric lymphadenitis
4126	I881 Chronic lymphadenitis, except mesenteric
4127	I888 Other nonspecific lymphadenitis
4445	K020 Caries limited to enamel
4128	I889 Nonspecific lymphadenitis, unspecified
4129	I89 Other noninfective disorders of lymphatic vessels and lymph nodes
4130	I890 Lymphoedema, not elsewhere classified
4131	I891 Lymphangitis
4132	I898 Other specified noninfective disorders of lymphatic vessels and lymph nodes
4133	I899 Noninfective disorder of lymphatic vessels and lymph nodes, unspecified
4134	I95 Hypotension
4135	I950 Idiopathic hypotension
4136	I951 Orthostatic hypotension
4137	I952 Hypotension due to drugs
4138	I958 Other hypotension
4139	I959 Hypotension, unspecified
4140	I97 Postprocedural disorders of circulatory system, not elsewhere classified
4141	I970 Postcardiotomy syndrome
4142	I971 Other functional disturbances following cardiac surgery
4143	I972 Postmastectomy lymphoedema syndrome
4144	I978 Other postprocedural disorders of circulatory system, not elsewhere classified
4145	I979 Postprocedural disorder of circulatory system, unspecified
4146	I98 Other disorders of circulatory system in diseases classified elsewhere
4147	I980 Cardiovascular syphilis
4148	I981 Cardiovascular disorders in other infectious and parasitic diseases classified elsewhere
4149	I982 Oesophageal varices without bleeding in diseases classified elsewhere
4150	I983 Oesophageal varices with bleeding in diseases classified elsewhere
4151	I988 Other specified disorders of circulatory system in diseases classified elsewhere
4152	I99 Other and unspecified disorders of circulatory system
4153	J00 Acute nasopharyngitis [common cold]
4154	J01 Acute sinusitis
4155	J010 Acute maxillary sinusitis
4156	J011 Acute frontal sinusitis
4157	J012 Acute ethmoidal sinusitis
4158	J013 Acute sphenoidal sinusitis
4159	J014 Acute pansinusitis
4160	J018 Other acute sinusitis
4161	J019 Acute sinusitis, unspecified
4162	J02 Acute pharyngitis
4163	J020 Streptococcal pharyngitis
4164	J028 Acute pharyngitis due to other specified organisms
4165	J029 Acute pharyngitis, unspecified
4166	J03 Acute tonsillitis
4167	J030 Streptococcal tonsillitis
4168	J038 Acute tonsillitis due to other specified organisms
4169	J039 Acute tonsillitis, unspecified
4170	J04 Acute laryngitis and tracheitis
4171	J040 Acute laryngitis
4172	J041 Acute tracheitis
4173	J042 Acute laryngotracheitis
4174	J05 Acute obstructive laryngitis [croup] and epiglottitis
4175	J050 Acute obstructive laryngitis [croup]
4176	J051 Acute epiglottitis
4177	J06 Acute upper respiratory infections of multiple and unspecified sites
4178	J060 Acute laryngopharyngitis
4179	J068 Other acute upper respiratory infections of multiple sites
4180	J069 Acute upper respiratory infection, unspecified
4181	J09 Influenza due to certain identified influenza virus
4182	J10 Influenza due to other identified influenza virus
4183	J100 Influenza with pneumonia, other influenza virus identified
4184	J101 Influenza with other respiratory manifestations, other influenza virus identified
4185	J108 Influenza with other manifestations, other influenza virus identified
4186	J11 Influenza, virus not identified
4187	J110 Influenza with pneumonia, virus not identified
4188	J111 Influenza with other respiratory manifestations, virus not identified
4189	J118 Influenza with other manifestations, virus not identified
4190	J12 Viral pneumonia, not elsewhere classified
4191	J120 Adenoviral pneumonia
4192	J121 Respiratory syncytial virus pneumonia
4193	J122 Parainfluenza virus pneumonia
4194	J123 Human metapneumovirus pneumonia
4195	J128 Other viral pneumonia
4196	J129 Viral pneumonia, unspecified
4197	J13 Pneumonia due to Streptococcus pneumoniae
4198	J14 Pneumonia due to Haemophilus influenzae
4199	J15 Bacterial pneumonia, not elsewhere classified
4200	J150 Pneumonia due to Klebsiella pneumoniae
4201	J151 Pneumonia due to Pseudomonas
4202	J152 Pneumonia due to staphylococcus
4203	J153 Pneumonia due to streptococcus, group B
4204	J154 Pneumonia due to other streptococci
4205	J155 Pneumonia due to Escherichia coli
4206	J156 Pneumonia due to other aerobic Gram-negative bacteria
4207	J157 Pneumonia due to Mycoplasma pneumoniae
4208	J158 Other bacterial pneumonia
4209	J159 Bacterial pneumonia, unspecified
4210	J16 Pneumonia due to other infectious organisms, not elsewhere classified
4211	J160 Chlamydial pneumonia
4212	J168 Pneumonia due to other specified infectious organisms
4213	J17 Pneumonia in diseases classified elsewhere
4214	J170 Pneumonia in bacterial diseases classified elsewhere
4215	J171 Pneumonia in viral diseases classified elsewhere
4216	J172 Pneumonia in mycoses
4217	J173 Pneumonia in parasitic diseases
4218	J178 Pneumonia in other diseases classified elsewhere
4219	J18 Pneumonia, organism unspecified
4220	J180 Bronchopneumonia, unspecified
4221	J181 Lobar pneumonia, unspecified
4222	J182 Hypostatic pneumonia, unspecified
4223	J188 Other pneumonia, organism unspecified
4224	J189 Pneumonia, unspecified
4225	J20 Acute bronchitis
4226	J200 Acute bronchitis due to Mycoplasma pneumoniae
4227	J201 Acute bronchitis due to Haemophilus influenzae
4228	J662 Cannabinosis
4229	J202 Acute bronchitis due to streptococcus
4230	J203 Acute bronchitis due to coxsackievirus
4231	J204 Acute bronchitis due to parainfluenza virus
4232	J205 Acute bronchitis due to respiratory syncytial virus
4233	J206 Acute bronchitis due to rhinovirus
4234	J207 Acute bronchitis due to echovirus
4235	J208 Acute bronchitis due to other specified organisms
4236	J209 Acute bronchitis, unspecified
4237	J21 Acute bronchiolitis
4238	J210 Acute bronchiolitis due to respiratory syncytial virus
4239	J211 Acute bronchiolitis due to human metapneumovirus
4240	J218 Acute bronchiolitis due to other specified organisms
4241	J219 Acute bronchiolitis, unspecified
4242	J22 Unspecified acute lower respiratory infection
4243	J30 Vasomotor and allergic rhinitis
4244	J300 Vasomotor rhinitis
4245	J301 Allergic rhinitis due to pollen
4246	J302 Other seasonal allergic rhinitis
4247	J303 Other allergic rhinitis
4248	J304 Allergic rhinitis, unspecified
4249	J31 Chronic rhinitis, nasopharyngitis and pharyngitis
4250	J310 Chronic rhinitis
4251	J311 Chronic nasopharyngitis
4252	J312 Chronic pharyngitis
4253	J32 Chronic sinusitis
4254	J320 Chronic maxillary sinusitis
4255	J321 Chronic frontal sinusitis
4256	J322 Chronic ethmoidal sinusitis
4257	J323 Chronic sphenoidal sinusitis
4258	J324 Chronic pansinusitis
4259	J328 Other chronic sinusitis
4260	J329 Chronic sinusitis, unspecified
4261	J33 Nasal polyp
4262	J330 Polyp of nasal cavity
4263	J331 Polypoid sinus degeneration
4264	J338 Other polyp of sinus
4265	J339 Nasal polyp, unspecified
4266	J34 Other disorders of nose and nasal sinuses
4267	J340 Abscess, furuncle and carbuncle of nose
4268	J341 Cyst and mucocele of nose and nasal sinus
4269	J342 Deviated nasal septum
4270	J343 Hypertrophy of nasal turbinates
4271	J348 Other specified disorders of nose and nasal sinuses
4272	J35 Chronic diseases of tonsils and adenoids
4273	J350 Chronic tonsillitis
4274	J351 Hypertrophy of tonsils
4275	J352 Hypertrophy of adenoids
4276	J353 Hypertrophy of tonsils with hypertrophy of adenoids
4277	J358 Other chronic diseases of tonsils and adenoids
4278	J359 Chronic disease of tonsils and adenoids, unspecified
4279	J36 Peritonsillar abscess
4280	J37 Chronic laryngitis and laryngotracheitis
4281	J370 Chronic laryngitis
4282	J371 Chronic laryngotracheitis
4283	J38 Diseases of vocal cords and larynx, not elsewhere classified
4284	J380 Paralysis of vocal cords and larynx
4285	J381 Polyp of vocal cord and larynx
4286	J382 Nodules of vocal cords
4287	J383 Other diseases of vocal cords
4288	J384 Oedema of larynx
4289	J385 Laryngeal spasm
4290	J386 Stenosis of larynx
4291	J387 Other diseases of larynx
4292	J39 Other diseases of upper respiratory tract
4293	J390 Retropharyngeal and parapharyngeal abscess
4294	J391 Other abscess of pharynx
4295	J392 Other diseases of pharynx
4296	J393 Upper respiratory tract hypersensitivity reaction, site unspecified
4297	J398 Other specified diseases of upper respiratory tract
4298	J399 Disease of upper respiratory tract, unspecified
4299	J40 Bronchitis, not specified as acute or chronic
4300	J41 Simple and mucopurulent chronic bronchitis
4301	J410 Simple chronic bronchitis
4302	J411 Mucopurulent chronic bronchitis
4303	J418 Mixed simple and mucopurulent chronic bronchitis
4304	J42 Unspecified chronic bronchitis
4305	J43 Emphysema
4306	J430 MacLeod syndrome
4307	J431 Panlobular emphysema
4308	J432 Centrilobular emphysema
4309	J438 Other emphysema
4310	J439 Emphysema, unspecified
4311	J44 Other chronic obstructive pulmonary disease
4312	J440 Chronic obstructive pulmonary disease with acute lower respiratory infection
4313	J441 Chronic obstructive pulmonary disease with acute exacerbation, unspecified
4314	J448 Other specified chronic obstructive pulmonary disease
4315	J449 Chronic obstructive pulmonary disease, unspecified
4316	J45 Asthma
4317	J450 Predominantly allergic asthma
4318	J451 Nonallergic asthma
4319	J458 Mixed asthma
4320	J459 Asthma, unspecified
4321	J46 Status asthmaticus
4322	J47 Bronchiectasis
4323	J60 Coalworker pneumoconiosis
4324	J61 Pneumoconiosis due to asbestos and other mineral fibres
4325	J62 Pneumoconiosis due to dust containing silica
4326	J620 Pneumoconiosis due to talc dust
4327	J628 Pneumoconiosis due to other dust containing silica
4328	J63 Pneumoconiosis due to other inorganic dusts
4329	J630 Aluminosis (of lung)
4330	J631 Bauxite fibrosis (of lung)
4331	J632 Berylliosis
4332	J633 Graphite fibrosis (of lung)
4333	J634 Siderosis
4334	J635 Stannosis
4335	J638 Pneumoconiosis due to other specified inorganic dusts
4336	J64 Unspecified pneumoconiosis
4337	J65 Pneumoconiosis associated with tuberculosis
4338	J66 Airway disease due to specific organic dust
4339	J660 Byssinosis
4340	J668 Airway disease due to other specific organic dusts
4341	J67 Hypersensitivity pneumonitis due to organic dust
4342	J670 Farmer lung
4343	J671 Bagassosis
4344	J672 Bird fancier lung
4345	J673 Suberosis
4346	J674 Maltworker lung
4347	J675 Mushroom-worker lung
4348	J676 Maple-bark-stripper lung
4349	J677 Air-conditioner and humidifier lung
4350	J678 Hypersensitivity pneumonitis due to other organic dusts
4351	J679 Hypersensitivity pneumonitis due to unspecified organic dust
4352	J68 Respiratory conditions due to inhalation of chemicals, gases, fumes and vapours
4353	J680 Bronchitis and pneumonitis due to chemicals, gases, fumes and vapours
4354	J681 Pulmonary oedema due to chemicals, gases, fumes and vapours
4355	J682 Upper respiratory inflammation due to chemicals, gases, fumes and vapours, not elsewhere classified
4356	J683 Other acute and subacute respiratory conditions due to chemicals, gases, fumes and vapours
4357	J684 Chronic respiratory conditions due to chemicals, gases, fumes and vapours
4358	J688 Other respiratory conditions due to chemicals, gases, fumes and vapours
4359	J689 Unspecified respiratory condition due to chemicals, gases, fumes and vapours
4360	J69 Pneumonitis due to solids and liquids
4361	J690 Pneumonitis due to food and vomit
4362	J691 Pneumonitis due to oils and essences
4363	J698 Pneumonitis due to other solids and liquids
4364	J70 Respiratory conditions due to other external agents
4365	J700 Acute pulmonary manifestations due to radiation
4366	J701 Chronic and other pulmonary manifestations due to radiation
4367	J702 Acute drug-induced interstitial lung disorders
4368	J703 Chronic drug-induced interstitial lung disorders
4369	J704 Drug-induced interstitial lung disorders, unspecified
4370	J708 Respiratory conditions due to other specified external agents
4371	J709 Respiratory conditions due to unspecified external agent
4372	J80 Adult respiratory distress syndrome
4373	J81 Pulmonary oedema
4374	J82 Pulmonary eosinophilia, not elsewhere classified
4375	J84 Other interstitial pulmonary diseases
4376	J840 Alveolar and parietoalveolar conditions
4377	J841 Other interstitial pulmonary diseases with fibrosis
4378	J848 Other specified interstitial pulmonary diseases
4379	J849 Interstitial pulmonary disease, unspecified
4380	J85 Abscess of lung and mediastinum
4381	J850 Gangrene and necrosis of lung
4382	J851 Abscess of lung with pneumonia
4383	J852 Abscess of lung without pneumonia
4384	J853 Abscess of mediastinum
4385	J86 Pyothorax
4386	J860 Pyothorax with fistula
4387	J869 Pyothorax without fistula
4388	J90 Pleural effusion, not elsewhere classified
4389	J91 Pleural effusion in conditions classified elsewhere
4390	J92 Pleural plaque
4391	J920 Pleural plaque with presence of asbestos
4392	J929 Pleural plaque without asbestos
4393	J93 Pneumothorax
4394	J930 Spontaneous tension pneumothorax
4395	J931 Other spontaneous pneumothorax
4396	J938 Other pneumothorax
4397	J939 Pneumothorax, unspecified
4398	J94 Other pleural conditions
4399	J940 Chylous effusion
4400	J941 Fibrothorax
4401	J942 Haemothorax
4402	J948 Other specified pleural conditions
4403	J949 Pleural condition, unspecified
4404	J95 Postprocedural respiratory disorders, not elsewhere classified
4405	J950 Tracheostomy malfunction
4406	J951 Acute pulmonary insufficiency following thoracic surgery
4407	J952 Acute pulmonary insufficiency following nonthoracic surgery
4408	J953 Chronic pulmonary insufficiency following surgery
4409	J954 Mendelson syndrome
4410	J955 Postprocedural subglottic stenosis
4411	J958 Other postprocedural respiratory disorders
4412	J959 Postprocedural respiratory disorder, unspecified
4413	J96 Respiratory failure, not elsewhere classified
4414	J960 Acute respiratory failure
4415	J961 Chronic respiratory failure
4416	J969 Respiratory failure, unspecified
4417	J98 Other respiratory disorders
4418	J980 Diseases of bronchus, not elsewhere classified
4419	J981 Pulmonary collapse
4420	J982 Interstitial emphysema
4421	J983 Compensatory emphysema
4422	J984 Other disorders of lung
4423	J985 Diseases of mediastinum, not elsewhere classified
4424	J986 Disorders of diaphragm
4425	J988 Other specified respiratory disorders
4426	J989 Respiratory disorder, unspecified
4427	J99 Respiratory disorders in diseases classified elsewhere
4428	J990 Rheumatoid lung disease
4429	J991 Respiratory disorders in other diffuse connective tissue disorders
4430	J998 Respiratory disorders in other diseases classified elsewhere
4431	K00 Disorders of tooth development and eruption
4432	K000 Anodontia
4433	K001 Supernumerary teeth
4434	K002 Abnormalities of size and form of teeth
4435	K003 Mottled teeth
4436	K004 Disturbances in tooth formation
4437	K005 Hereditary disturbances in tooth structure, not elsewhere classified
4438	K006 Disturbances in tooth eruption
4439	K007 Teething syndrome
4440	K008 Other disorders of tooth development
4441	K009 Disorder of tooth development, unspecified
4442	K01 Embedded and impacted teeth
4443	K011 Impacted teeth
4444	K02 Dental caries
4446	K021 Caries of dentine
4447	K022 Caries of cementum
4448	K023 Arrested dental caries
4449	K024 Odontoclasia
4450	K028 Other dental caries
4451	K029 Dental caries, unspecified
4452	K03 Other diseases of hard tissues of teeth
4453	K030 Excessive attrition of teeth
4454	K031 Abrasion of teeth
4455	K032 Erosion of teeth
4456	K033 Pathological resorption of teeth
4457	K034 Hypercementosis
4458	K035 Ankylosis of teeth
4459	K036 Deposits [accretions] on teeth
4460	K037 Posteruptive colour changes of dental hard tissues
4461	K038 Other specified diseases of hard tissues of teeth
4462	K039 Disease of hard tissues of teeth, unspecified
4463	K04 Diseases of pulp and periapical tissues
4464	K040 Pulpitis
4465	K041 Necrosis of pulp
4466	K042 Pulp degeneration
4467	K043 Abnormal hard tissue formation in pulp
4468	K044 Acute apical periodontitis of pulpal origin
4469	K045 Chronic apical periodontitis
4470	K046 Periapical abscess with sinus
4471	K047 Periapical abscess without sinus
4472	K048 Radicular cyst
4473	K049 Other and unspecified diseases of pulp and periapical tissues
4474	K05 Gingivitis and periodontal diseases
4475	K050 Acute gingivitis
4476	K051 Chronic gingivitis
4477	K052 Acute periodontitis
4478	K053 Chronic periodontitis
4479	K054 Periodontosis
4480	K055 Other periodontal diseases
4481	K056 Periodontal disease, unspecified
4482	K06 Other disorders of gingiva and edentulous alveolar ridge
4483	K060 Gingival recession
4484	K061 Gingival enlargement
4485	K062 Gingival and edentulous alveolar ridge lesions associated with trauma
4486	K068 Other specified disorders of gingiva and edentulous alveolar ridge
4487	K069 Disorder of gingiva and edentulous alveolar ridge, unspecified
4488	K07 Dentofacial anomalies [including malocclusion]
4489	K070 Major anomalies of jaw size
4490	K071 Anomalies of jaw-cranial base relationship
4491	K072 Anomalies of dental arch relationship
4492	K073 Anomalies of tooth position
4493	K074 Malocclusion, unspecified
4494	K075 Dentofacial functional abnormalities
4495	K076 Temporomandibular joint disorders
4496	K078 Other dentofacial anomalies
4497	K079 Dentofacial anomaly, unspecified
4498	K08 Other disorders of teeth and supporting structures
4499	K080 Exfoliation of teeth due to systemic causes
4500	K081 Loss of teeth due to accident, extraction or local periodontal disease
4501	K082 Atrophy of edentulous alveolar ridge
4502	K083 Retained dental root
4503	K088 Other specified disorders of teeth and supporting structures
4504	K089 Disorder of teeth and supporting structures, unspecified
4505	K09 Cysts of oral region, not elsewhere classified
4506	K090 Developmental odontogenic cysts
4507	K091 Developmental (nonodontogenic) cysts of oral region
4508	K092 Other cysts of jaw
4509	K098 Other cysts of oral region, not elsewhere classified
4510	K099 Cyst of oral region, unspecified
4511	K10 Other diseases of jaws
4512	K100 Developmental disorders of jaws
4513	K101 Giant cell granuloma, central
4514	K102 Inflammatory conditions of jaws
4515	K103 Alveolitis of jaws
4516	K108 Other specified diseases of jaws
4517	K109 Disease of jaws, unspecified
4518	K11 Diseases of salivary glands
4519	K110 Atrophy of salivary gland
4520	K111 Hypertrophy of salivary gland
4521	K112 Sialoadenitis
4522	K113 Abscess of salivary gland
4523	K114 Fistula of salivary gland
4524	K115 Sialolithiasis
4525	K116 Mucocele of salivary gland
4526	K117 Disturbances of salivary secretion
4527	K118 Other diseases of salivary glands
4528	K119 Disease of salivary gland, unspecified
4529	K12 Stomatitis and related lesions
4530	K120 Recurrent oral aphthae
4531	K121 Other forms of stomatitis
4532	K122 Cellulitis and abscess of mouth
4533	K123 Oral mucositis (ulcerative)
4534	K13 Other diseases of lip and oral mucosa
4535	K130 Diseases of lips
4536	K131 Cheek and lip biting
4537	K132 Leukoplakia and other disturbances of oral epithelium, including tongue
4538	K133 Hairy leukoplakia
4539	K134 Granuloma and granuloma-like lesions of oral mucosa
4540	K135 Oral submucous fibrosis
4541	K136 Irritative hyperplasia of oral mucosa
4542	K137 Other and unspecified lesions of oral mucosa
4543	K14 Diseases of tongue
4544	K140 Glossitis
4545	K141 Geographic tongue
4546	K142 Median rhomboid glossitis
4547	K143 Hypertrophy of tongue papillae
4548	K144 Atrophy of tongue papillae
4549	K145 Plicated tongue
4550	K146 Glossodynia
4551	K148 Other diseases of tongue
4552	K149 Disease of tongue, unspecified
4553	K20 Oesophagitis
4554	K21 Gastro-oesophageal reflux disease
4555	K210 Gastro-oesophageal reflux disease with oesophagitis
4556	K626 Ulcer of anus and rectum
4557	K219 Gastro-oesophageal reflux disease without oesophagitis
4558	K22 Other diseases of oesophagus
4559	K220 Achalasia of cardia
4560	K221 Ulcer of oesophagus
4561	K222 Oesophageal obstruction
4562	K223 Perforation of oesophagus
4563	K224 Dyskinesia of oesophagus
4564	K225 Diverticulum of oesophagus, acquired
4565	K226 Gastro-oesophageal laceration-haemorrhage syndrome
4566	K227 Barrett oesophagus
4567	K228 Other specified diseases of oesophagus
4568	K229 Disease of oesophagus, unspecified
4569	K23 Disorders of oesophagus in diseases classified elsewhere
4570	K230 Tuberculous oesophagitis
4571	K231 Megaoesophagus in Chagas disease
4572	K238 Disorders of oesophagus in other diseases classified elsewhere
4573	K25 Gastric ulcer
4574	K250 Gastric ulcer: Acute with haemorrhage
4575	K251 Gastric ulcer: Acute with perforation
4576	K252 Gastric ulcer: Acute with both haemorrhage and perforation
4577	K253 Gastric ulcer: Acute without haemorrhage or perforation
4578	K254 Gastric ulcer: Chronic or unspecified with haemorrhage
4579	K255 Gastric ulcer: Chronic or unspecified with perforation
4580	K256 Gastric ulcer: Chronic or unspecified with both haemorrhage and perforation
4581	K257 Gastric ulcer: Chronic without haemorrhage or perforation
4582	K259 Gastric ulcer: Unspecified as acute or chronic, without haemorrhage or perforation
4583	K26 Duodenal ulcer
4584	K260 Duodenal ulcer: Acute with haemorrhage
4585	K261 Duodenal ulcer: Acute with perforation
4586	K262 Duodenal ulcer: Acute with both haemorrhage and perforation
4587	K263 Duodenal ulcer: Acute without haemorrhage or perforation
4588	K264 Duodenal ulcer: Chronic or unspecified with haemorrhage
4589	K265 Duodenal ulcer: Chronic or unspecified with perforation
4590	K266 Duodenal ulcer: Chronic or unspecified with both haemorrhage and perforation
4591	K267 Duodenal ulcer: Chronic without haemorrhage or perforation
4592	K269 Duodenal ulcer: Unspecified as acute or chronic, without haemorrhage or perforation
4593	K27 Peptic ulcer, site unspecified
4594	K270 Peptic ulcer, site unspecified: Acute with haemorrhage
4595	K271 Peptic ulcer, site unspecified: Acute with perforation
4596	K272 Peptic ulcer, site unspecified: Acute with both haemorrhage and perforation
4597	K273 Peptic ulcer, site unspecified: Acute without haemorrhage or perforation
4598	K274 Peptic ulcer, site unspecified: Chronic or unspecified with haemorrhage
4599	K275 Peptic ulcer, site unspecified: Chronic or unspecified with perforation
4600	K276 Peptic ulcer, site unspecified: Chronic or unspecified with both haemorrhage and perforation
4601	K277 Peptic ulcer, site unspecified: Chronic without haemorrhage or perforation
4602	K279 Peptic ulcer, site unspecified: Unspecified as acute or chronic, without haemorrhage or perforation
4603	K28 Gastrojejunal ulcer
4604	K280 Gastrojejunal ulcer: Acute with haemorrhage
4605	K281 Gastrojejunal ulcer: Acute with perforation
4606	K282 Gastrojejunal ulcer: Acute with both haemorrhage and perforation
4607	K283 Gastrojejunal ulcer: Acute without haemorrhage or perforation
4608	K284 Gastrojejunal ulcer: Chronic or unspecified with haemorrhage
4609	K285 Gastrojejunal ulcer: Chronic or unspecified with perforation
4610	K286 Gastrojejunal ulcer: Chronic or unspecified with both haemorrhage and perforation
4611	K287 Gastrojejunal ulcer: Chronic without haemorrhage or perforation
4612	K289 Gastrojejunal ulcer: Unspecified as acute or chronic, without haemorrhage or perforation
4613	K29 Gastritis and duodenitis
4614	K290 Acute haemorrhagic gastritis
4615	K291 Other acute gastritis
4616	K292 Alcoholic gastritis
4617	K293 Chronic superficial gastritis
4618	K294 Chronic atrophic gastritis
4619	K295 Chronic gastritis, unspecified
4620	K296 Other gastritis
4621	K297 Gastritis, unspecified
4622	K298 Duodenitis
4623	K299 Gastroduodenitis, unspecified
4624	K30 Dyspepsia
4625	K31 Other diseases of stomach and duodenum
4626	K310 Acute dilatation of stomach
4627	K311 Adult hypertrophic pyloric stenosis
4628	K312 Hourglass stricture and stenosis of stomach
4629	K313 Pylorospasm, not elsewhere classified
4630	K314 Gastric diverticulum
4631	K315 Obstruction of duodenum
4632	K316 Fistula of stomach and duodenum
4633	K317 Polyp of stomach and duodenum
4634	K318 Other specified diseases of stomach and duodenum
4635	K319 Disease of stomach and duodenum, unspecified
4636	K35 Acute appendicitis
4637	K352 Acute appendicitis with generalized peritonitis
4638	K353 Acute appendicitis with localized peritonitis
4639	K358 Acute appendicitis, other and unspecified
4640	K36 Other appendicitis
4641	K37 Unspecified appendicitis
4642	K38 Other diseases of appendix
4643	K380 Hyperplasia of appendix
4644	K381 Appendicular concretions
4645	K382 Diverticulum of appendix
4646	K383 Fistula of appendix
4647	K388 Other specified diseases of appendix
4648	K389 Disease of appendix, unspecified
4649	K40 Inguinal hernia
4650	K400 Bilateral inguinal hernia, with obstruction, without gangrene
4651	K401 Bilateral inguinal hernia, with gangrene
4652	K402 Bilateral inguinal hernia, without obstruction or gangrene
4653	K403 Unilateral or unspecified inguinal hernia, with obstruction, without gangrene
4654	K404 Unilateral or unspecified inguinal hernia, with gangrene
4870	K835 Biliary cyst
4655	K409 Unilateral or unspecified inguinal hernia, without obstruction or gangrene
4656	K41 Femoral hernia
4657	K410 Bilateral femoral hernia, with obstruction, without gangrene
4658	K411 Bilateral femoral hernia, with gangrene
4659	K412 Bilateral femoral hernia, without obstruction or gangrene
4660	K413 Unilateral or unspecified femoral hernia, with obstruction, without gangrene
4661	K414 Unilateral or unspecified femoral hernia, with gangrene
4662	K419 Unilateral or unspecified femoral hernia, without obstruction or gangrene
4663	K42 Umbilical hernia
4664	K420 Umbilical hernia with obstruction, without gangrene
4665	K421 Umbilical hernia with gangrene
4666	K429 Umbilical hernia without obstruction or gangrene
4667	K43 Ventral hernia
4668	K430 Ventral hernia with obstruction, without gangrene
4669	K431 Ventral hernia with gangrene
4670	K439 Ventral hernia without obstruction or gangrene
4671	K44 Diaphragmatic hernia
4672	K440 Diaphragmatic hernia with obstruction, without gangrene
4673	K441 Diaphragmatic hernia with gangrene
4674	K449 Diaphragmatic hernia without obstruction or gangrene
4675	K45 Other abdominal hernia
4676	K450 Other specified abdominal hernia with obstruction, without gangrene
4677	K451 Other specified abdominal hernia with gangrene
4678	K458 Other specified abdominal hernia without obstruction or gangrene
4679	K46 Unspecified abdominal hernia
4680	K460 Unspecified abdominal hernia with obstruction, without gangrene
4681	K461 Unspecified abdominal hernia with gangrene
4682	K469 Unspecified abdominal hernia without obstruction or gangrene
4683	K50 Crohn disease [regional enteritis]
4684	K500 Crohn disease of small intestine
4685	K501 Crohn disease of large intestine
4686	K508 Other Crohn disease
4687	K509 Crohn disease, unspecified
4688	K51 Ulcerative colitis
4689	K510 Ulcerative (chronic) pancolitis
4690	K512 Ulcerative (chronic) proctitis
4691	K513 Ulcerative (chronic) rectosigmoiditis
4692	K514 Inflammatory polyps
4693	K515 Left sided colitis
4694	K518 Other ulcerative colitis
4695	K519 Ulcerative colitis, unspecified
4696	K52 Other noninfective gastroenteritis and colitis
4697	K520 Gastroenteritis and colitis due to radiation
4698	K521 Toxic gastroenteritis and colitis
4699	K522 Allergic and dietetic gastroenteritis and colitis
4700	K523 Indeterminate colitis
4701	K528 Other specified noninfective gastroenteritis and colitis
4702	K529 Noninfective gastroenteritis and colitis, unspecified
4703	K55 Vascular disorders of intestine
4704	K550 Acute vascular disorders of intestine
4705	K551 Chronic vascular disorders of intestine
4706	K552 Angiodysplasia of colon
4707	K558 Other vascular disorders of intestine
4708	K559 Vascular disorder of intestine, unspecified
4709	K56 Paralytic ileus and intestinal obstruction without hernia
4710	K560 Paralytic ileus
4711	K561 Intussusception
4712	K562 Volvulus
4713	K563 Gallstone ileus
4714	K564 Other impaction of intestine
4715	K565 Intestinal adhesions [bands] with obstruction
4716	K566 Other and unspecified intestinal obstruction
4717	K567 Ileus, unspecified
4718	K57 Diverticular disease of intestine
4719	K570 Diverticular disease of small intestine with perforation and abscess
4720	K571 Diverticular disease of small intestine without perforation or abscess
4721	K572 Diverticular disease of large intestine with perforation and abscess
4722	K573 Diverticular disease of large intestine without perforation or abscess
4723	K574 Diverticular disease of both small and large intestine with perforation and abscess
4724	K575 Diverticular disease of both small and large intestine without perforation or abscess
4725	K578 Diverticular disease of intestine, part unspecified, with perforation and abscess
4726	K579 Diverticular disease of intestine, part unspecified, without perforation or abscess
4727	K58 Irritable bowel syndrome
4728	K580 Irritable bowel syndrome with diarrhoea
4729	K589 Irritable bowel syndrome without diarrhoea
4730	K59 Other functional intestinal disorders
4731	K590 Constipation
4732	K591 Functional diarrhoea
4733	K592 Neurogenic bowel, not elsewhere classified
4734	K593 Megacolon, not elsewhere classified
4735	K594 Anal spasm
4736	K598 Other specified functional intestinal disorders
4737	K599 Functional intestinal disorder, unspecified
4738	K60 Fissure and fistula of anal and rectal regions
4739	K600 Acute anal fissure
4740	K601 Chronic anal fissure
4741	K602 Anal fissure, unspecified
4742	K603 Anal fistula
4743	K604 Rectal fistula
4744	K605 Anorectal fistula
4745	K61 Abscess of anal and rectal regions
4746	K610 Anal abscess
4747	K611 Rectal abscess
4748	K612 Anorectal abscess
4749	K613 Ischiorectal abscess
4750	K614 Intrasphincteric abscess
4751	K62 Other diseases of anus and rectum
4752	K620 Anal polyp
4753	K621 Rectal polyp
4754	K622 Anal prolapse
4755	K623 Rectal prolapse
4756	K624 Stenosis of anus and rectum
4757	K625 Haemorrhage of anus and rectum
4758	K627 Radiation proctitis
4759	K628 Other specified diseases of anus and rectum
4760	K629 Disease of anus and rectum, unspecified
4761	K63 Other diseases of intestine
4762	K630 Abscess of intestine
4763	K631 Perforation of intestine (nontraumatic)
4764	K632 Fistula of intestine
4765	K633 Ulcer of intestine
4766	K634 Enteroptosis
4767	K635 Polyp of colon
4768	K638 Other specified diseases of intestine
4769	K639 Disease of intestine, unspecified
4770	K65 Peritonitis
4771	K650 Acute peritonitis
4772	K658 Other peritonitis
4773	K659 Peritonitis, unspecified
4774	K66 Other disorders of peritoneum
4775	K660 Peritoneal adhesions
4776	K661 Haemoperitoneum
4777	K668 Other specified disorders of peritoneum
4778	K669 Disorder of peritoneum, unspecified
4779	K67 Disorders of peritoneum in infectious diseases classified elsewhere
4780	K670 Chlamydial peritonitis
4781	K671 Gonococcal peritonitis
4782	K672 Syphilitic peritonitis
4783	K673 Tuberculous peritonitis
4784	K678 Other disorders of peritoneum in infectious diseases classified elsewhere
4785	K70 Alcoholic liver disease
4786	K700 Alcoholic fatty liver
4787	K701 Alcoholic hepatitis
4788	K702 Alcoholic fibrosis and sclerosis of liver
4789	K703 Alcoholic cirrhosis of liver
4790	K704 Alcoholic hepatic failure
4791	K709 Alcoholic liver disease, unspecified
4792	K71 Toxic liver disease
4793	K710 Toxic liver disease with cholestasis
4794	K711 Toxic liver disease with hepatic necrosis
4795	K712 Toxic liver disease with acute hepatitis
4796	K713 Toxic liver disease with chronic persistent hepatitis
4797	K714 Toxic liver disease with chronic lobular hepatitis
4798	K715 Toxic liver disease with chronic active hepatitis
4799	K716 Toxic liver disease with hepatitis, not elsewhere classified
4800	K717 Toxic liver disease with fibrosis and cirrhosis of liver
4801	K718 Toxic liver disease with other disorders of liver
4802	K719 Toxic liver disease, unspecified
4803	K72 Hepatic failure, not elsewhere classified
4804	K720 Acute and subacute hepatic failure
4805	K721 Chronic hepatic failure
4806	K729 Hepatic failure, unspecified
4807	K73 Chronic hepatitis, not elsewhere classified
4808	K730 Chronic persistent hepatitis, not elsewhere classified
4809	K731 Chronic lobular hepatitis, not elsewhere classified
4810	K732 Chronic active hepatitis, not elsewhere classified
4811	K738 Other chronic hepatitis, not elsewhere classified
4812	K739 Chronic hepatitis, unspecified
4813	K74 Fibrosis and cirrhosis of liver
4814	K740 Hepatic fibrosis
4815	K741 Hepatic sclerosis
4816	K742 Hepatic fibrosis with hepatic sclerosis
4817	K743 Primary biliary cirrhosis
4818	K744 Secondary biliary cirrhosis
4819	K745 Biliary cirrhosis, unspecified
4820	K746 Other and unspecified cirrhosis of liver
4821	K75 Other inflammatory liver diseases
4822	K750 Abscess of liver
4823	K751 Phlebitis of portal vein
4824	K752 Nonspecific reactive hepatitis
4825	K753 Granulomatous hepatitis, not elsewhere classified
4826	K754 Autoimmune hepatitis
4827	K758 Other specified inflammatory liver diseases
4828	K759 Inflammatory liver disease, unspecified
4829	K76 Other diseases of liver
4830	K760 Fatty (change of) liver, not elsewhere classified
4831	K761 Chronic passive congestion of liver
4832	K762 Central haemorrhagic necrosis of liver
4833	K763 Infarction of liver
4834	K764 Peliosis hepatis
4835	K765 Hepatic veno-occlusive disease
4836	K766 Portal hypertension
4837	K767 Hepatorenal syndrome
4838	K768 Other specified diseases of liver
4839	K769 Liver disease, unspecified
4840	K77 Liver disorders in diseases classified elsewhere
4841	K770 Liver disorders in infectious and parasitic diseases classified elsewhere
4842	K778 Liver disorders in other diseases classified elsewhere
4843	K80 Cholelithiasis
4844	K800 Calculus of gallbladder with acute cholecystitis
4845	K801 Calculus of gallbladder with other cholecystitis
4846	K802 Calculus of gallbladder without cholecystitis
4847	K803 Calculus of bile duct with cholangitis
4848	K804 Calculus of bile duct with cholecystitis
4849	K805 Calculus of bile duct without cholangitis or cholecystitis
4850	K808 Other cholelithiasis
4851	K81 Cholecystitis
4852	K810 Acute cholecystitis
4853	K811 Chronic cholecystitis
4854	K818 Other cholecystitis
4855	K819 Cholecystitis, unspecified
4856	K82 Other diseases of gallbladder
4857	K820 Obstruction of gallbladder
4858	K821 Hydrops of gallbladder
4859	K822 Perforation of gallbladder
4860	K823 Fistula of gallbladder
4861	K824 Cholesterolosis of gallbladder
4862	K828 Other specified diseases of gallbladder
4863	K829 Disease of gallbladder, unspecified
4864	K83 Other diseases of biliary tract
4865	K830 Cholangitis
4866	K831 Obstruction of bile duct
4867	K832 Perforation of bile duct
4868	K833 Fistula of bile duct
4869	K834 Spasm of sphincter of Oddi
4871	K838 Other specified diseases of biliary tract
4872	K839 Disease of biliary tract, unspecified
4873	K85 Acute pancreatitis
4874	K850 Idiopathic acute pancreatitis
4875	K851 Biliary acute pancreatitis
4876	K852 Alcohol-induced acute pancreatitis
4877	K853 Drug-induced acute pancreatitis
4878	K858 Other acute pancreatitis
4879	K859 Acute pancreatitis, unspecified
4880	K86 Other diseases of pancreas
4881	K860 Alcohol-induced chronic pancreatitis
4882	K861 Other chronic pancreatitis
4883	K862 Cyst of pancreas
4884	K863 Pseudocyst of pancreas
4885	K868 Other specified diseases of pancreas
4886	K869 Disease of pancreas, unspecified
4887	K87 Disorders of gallbladder, biliary tract and pancreas in diseases classified elsewhere
4888	K870 Disorders of gallbladder and biliary tract in diseases classified elsewhere
4889	K871 Disorders of pancreas in diseases classified elsewhere
4890	K90 Intestinal malabsorption
4891	K901 Tropical sprue
4892	K902 Blind loop syndrome, not elsewhere classified
4893	K903 Pancreatic steatorrhoea
4894	K904 Malabsorption due to intolerance, not elsewhere classified
4895	K908 Other intestinal malabsorption
4896	K909 Intestinal malabsorption, unspecified
4897	K91 Postprocedural disorders of digestive system, not elsewhere classified
4898	K910 Vomiting following gastrointestinal surgery
4899	K911 Postgastric surgery syndromes
4900	K912 Postsurgical malabsorption, not elsewhere classified
4901	K913 Postoperative intestinal obstruction
4902	K914 Colostomy and enterostomy malfunction
4903	K915 Postcholecystectomy syndrome
4904	K918 Other postprocedural disorders of digestive system, not elsewhere classified
4905	K919 Postprocedural disorder of digestive system, unspecified
4906	K92 Other diseases of digestive system
4907	K920 Haematemesis
4908	K921 Melaena
4909	K922 Gastrointestinal haemorrhage, unspecified
4910	K928 Other specified diseases of digestive system
4911	K929 Disease of digestive system, unspecified
4912	K93 Disorders of other digestive organs in diseases classified elsewhere
4913	K930 Tuberculous disorders of intestines, peritoneum and mesenteric glands
4914	K931 Megacolon in Chagas disease
4915	K938 Disorders of other specified digestive organs in diseases classified elsewhere
4916	L00 Staphylococcal scalded skin syndrome
4917	L01 Impetigo
4918	L010 Impetigo [any organism] [any site]
4919	L011 Impetiginization of other dermatoses
4920	L02 Cutaneous abscess, furuncle and carbuncle
4921	L020 Cutaneous abscess, furuncle and carbuncle of face
4922	L021 Cutaneous abscess, furuncle and carbuncle of neck
4923	L022 Cutaneous abscess, furuncle and carbuncle of trunk
4924	L023 Cutaneous abscess, furuncle and carbuncle of buttock
4925	L024 Cutaneous abscess, furuncle and carbuncle of limb
4926	L028 Cutaneous abscess, furuncle and carbuncle of other sites
4927	L029 Cutaneous abscess, furuncle and carbuncle, unspecified
4928	L03 Cellulitis
4929	L030 Cellulitis of finger and toe
4930	L031 Cellulitis of other parts of limb
4931	L032 Cellulitis of face
4932	L033 Cellulitis of trunk
4933	L038 Cellulitis of other sites
4934	L039 Cellulitis, unspecified
4935	L04 Acute lymphadenitis
4936	L040 Acute lymphadenitis of face, head and neck
4937	L041 Acute lymphadenitis of trunk
4938	L042 Acute lymphadenitis of upper limb
4939	L043 Acute lymphadenitis of lower limb
4940	L048 Acute lymphadenitis of other sites
4941	L049 Acute lymphadenitis, unspecified
4942	L05 Pilonidal cyst
4943	L050 Pilonidal cyst with abscess
4944	L059 Pilonidal cyst without abscess
4945	L08 Other local infections of skin and subcutaneous tissue
4946	L080 Pyoderma
4947	L081 Erythrasma
4948	L088 Other specified local infections of skin and subcutaneous tissue
4949	L089 Local infection of skin and subcutaneous tissue, unspecified
4950	L10 Pemphigus
4951	L100 Pemphigus vulgaris
4952	L101 Pemphigus vegetans
4953	L102 Pemphigus foliaceus
4954	L103 Brazilian pemphigus [fogo selvagem]
4955	L104 Pemphigus erythematosus
4956	L105 Drug-induced pemphigus
4957	L108 Other pemphigus
4958	L109 Pemphigus, unspecified
4959	L11 Other acantholytic disorders
4960	L110 Acquired keratosis follicularis
4961	L111 Transient acantholytic dermatosis [Grover]
4962	L118 Other specified acantholytic disorders
4963	L119 Acantholytic disorder, unspecified
4964	L12 Pemphigoid
4965	L120 Bullous pemphigoid
4966	L121 Cicatricial pemphigoid
4967	L122 Chronic bullous disease of childhood
4968	L123 Acquired epidermolysis bullosa
4969	L128 Other pemphigoid
4970	L129 Pemphigoid, unspecified
4971	L13 Other bullous disorders
4972	L130 Dermatitis herpetiformis
4973	L131 Subcorneal pustular dermatitis
4974	L138 Other specified bullous disorders
4975	L139 Bullous disorder, unspecified
4976	L506 Contact urticaria
4977	L508 Other urticaria
4978	L14 Bullous disorders in diseases classified elsewhere
4979	L20 Atopic dermatitis
4980	L200 Besnier prurigo
4981	L208 Other atopic dermatitis
4982	L209 Atopic dermatitis, unspecified
4983	L21 Seborrhoeic dermatitis
4984	L210 Seborrhoea capitis
4985	L211 Seborrhoeic infantile dermatitis
4986	L218 Other seborrhoeic dermatitis
4987	L219 Seborrhoeic dermatitis, unspecified
4988	L22 Diaper [napkin] dermatitis
4989	L23 Allergic contact dermatitis
4990	L230 Allergic contact dermatitis due to metals
4991	L231 Allergic contact dermatitis due to adhesives
4992	L232 Allergic contact dermatitis due to cosmetics
4993	L233 Allergic contact dermatitis due to drugs in contact with skin
4994	L234 Allergic contact dermatitis due to dyes
4995	L235 Allergic contact dermatitis due to other chemical products
4996	L236 Allergic contact dermatitis due to food in contact with skin
4997	L237 Allergic contact dermatitis due to plants, except food
4998	L238 Allergic contact dermatitis due to other agents
4999	L239 Allergic contact dermatitis, unspecified cause
5000	L24 Irritant contact dermatitis
5001	L240 Irritant contact dermatitis due to detergents
5002	L241 Irritant contact dermatitis due to oils and greases
5003	L242 Irritant contact dermatitis due to solvents
5004	L243 Irritant contact dermatitis due to cosmetics
5005	L244 Irritant contact dermatitis due to drugs in contact with skin
5006	L245 Irritant contact dermatitis due to other chemical products
5007	L246 Irritant contact dermatitis due to food in contact with skin
5008	L247 Irritant contact dermatitis due to plants, except food
5009	L248 Irritant contact dermatitis due to other agents
5010	L249 Irritant contact dermatitis, unspecified cause
5011	L25 Unspecified contact dermatitis
5012	L250 Unspecified contact dermatitis due to cosmetics
5013	L251 Unspecified contact dermatitis due to drugs in contact with skin
5014	L252 Unspecified contact dermatitis due to dyes
5015	L253 Unspecified contact dermatitis due to other chemical products
5016	L254 Unspecified contact dermatitis due to food in contact with skin
5017	L255 Unspecified contact dermatitis due to plants, except food
5018	L258 Unspecified contact dermatitis due to other agents
5019	L259 Unspecified contact dermatitis, unspecified cause
5020	L26 Exfoliative dermatitis
5021	L27 Dermatitis due to substances taken internally
5022	L270 Generalized skin eruption due to drugs and medicaments
5023	L271 Localized skin eruption due to drugs and medicaments
5024	L272 Dermatitis due to ingested food
5025	L278 Dermatitis due to other substances taken internally
5026	L279 Dermatitis due to unspecified substance taken internally
5027	L28 Lichen simplex chronicus and prurigo
5028	L280 Lichen simplex chronicus
5029	L281 Prurigo nodularis
5030	L282 Other prurigo
5031	L29 Pruritus
5032	L290 Pruritus ani
5033	L291 Pruritus scroti
5034	L292 Pruritus vulvae
5035	L293 Anogenital pruritus, unspecified
5036	L298 Other pruritus
5037	L299 Pruritus, unspecified
5038	L30 Other dermatitis
5039	L300 Nummular dermatitis
5040	L301 Dyshidrosis [pompholyx]
5041	L302 Cutaneous autosensitization
5042	L303 Infective dermatitis
5043	L304 Erythema intertrigo
5044	L305 Pityriasis alba
5045	L308 Other specified dermatitis
5046	L309 Dermatitis, unspecified
5047	L40 Psoriasis
5048	L400 Psoriasis vulgaris
5049	L401 Generalized pustular psoriasis
5050	L402 Acrodermatitis continua
5051	L403 Pustulosis palmaris et plantaris
5052	L404 Guttate psoriasis
5053	L405 Arthropathic psoriasis
5054	L408 Other psoriasis
5055	L409 Psoriasis, unspecified
5056	L41 Parapsoriasis
5057	L410 Pityriasis lichenoides et varioliformis acuta
5058	L411 Pityriasis lichenoides chronica
5059	L412 Lymphomatoid papulosis
5060	L413 Small plaque parapsoriasis
5061	L414 Large plaque parapsoriasis
5062	L415 Retiform parapsoriasis
5063	L418 Other parapsoriasis
5064	L419 Parapsoriasis, unspecified
5065	L42 Pityriasis rosea
5066	L43 Lichen planus
5067	L430 Hypertrophic lichen planus
5068	L431 Bullous lichen planus
5069	L432 Lichenoid drug reaction
5070	L433 Subacute (active) lichen planus
5071	L438 Other lichen planus
5072	L439 Lichen planus, unspecified
5073	L44 Other papulosquamous disorders
5074	L440 Pityriasis rubra pilaris
5075	L441 Lichen nitidus
5076	L442 Lichen striatus
5077	L443 Lichen ruber moniliformis
5078	L444 Infantile papular acrodermatitis [Giannotti-Crosti]
5079	L448 Other specified papulosquamous disorders
5080	L449 Papulosquamous disorder, unspecified
5081	L45 Papulosquamous disorders in diseases classified elsewhere
5082	L50 Urticaria
5083	L500 Allergic urticaria
5084	L501 Idiopathic urticaria
5085	L502 Urticaria due to cold and heat
5086	L503 Dermatographic urticaria
5087	L504 Vibratory urticaria
5088	L505 Cholinergic urticaria
5089	L509 Urticaria, unspecified
5090	L51 Erythema multiforme
5091	L510 Nonbullous erythema multiforme
5092	L511 Bullous erythema multiforme
5093	L512 Toxic epidermal necrolysis [Lyell]
5094	L518 Other erythema multiforme
5095	L519 Erythema multiforme, unspecified
5096	L52 Erythema nodosum
5097	L53 Other erythematous conditions
5098	L530 Toxic erythema
5099	L531 Erythema annulare centrifugum
5100	L532 Erythema marginatum
5101	L533 Other chronic figurate erythema
5102	L538 Other specified erythematous conditions
5103	L539 Erythematous condition, unspecified
5104	L54 Erythema in diseases classified elsewhere
5105	L540 Erythema marginatum in acute rheumatic fever
5106	L548 Erythema in other diseases classified elsewhere
5107	L55 Sunburn
5108	L550 Sunburn of first degree
5109	L551 Sunburn of second degree
5110	L552 Sunburn of third degree
5111	L558 Other sunburn
5112	L559 Sunburn, unspecified
5113	L56 Other acute skin changes due to ultraviolet radiation
5114	L560 Drug phototoxic response
5115	L561 Drug photoallergic response
5116	L562 Photocontact dermatitis [berloque dermatitis]
5117	L563 Solar urticaria
5118	L564 Polymorphous light eruption
5119	L568 Other specified acute skin changes due to ultraviolet radiation
5120	L569 Acute skin change due to ultraviolet radiation, unspecified
5121	L57 Skin changes due to chronic exposure to nonionizing radiation
5122	L570 Actinic keratosis
5123	L571 Actinic reticuloid
5124	L572 Cutis rhomboidalis nuchae
5125	L573 Poikiloderma of Civatte
5126	L574 Cutis laxa senilis
5127	L575 Actinic granuloma
5128	L578 Other skin changes due to chronic exposure to nonionizing radiation
5129	L579 Skin changes due to chronic exposure to nonionizing radiation, unspecified
5130	L58 Radiodermatitis
5131	L580 Acute radiodermatitis
5132	L581 Chronic radiodermatitis
5133	L589 Radiodermatitis, unspecified
5134	L59 Other disorders of skin and subcutaneous tissue related to radiation
5135	L590 Erythema ab igne [dermatitis ab igne]
5136	L598 Other specified disorders of skin and subcutaneous tissue related to radiation
5137	L599 Disorder of skin and subcutaneous tissue related to radiation, unspecified
5138	L60 Nail disorders
5139	L600 Ingrowing nail
5140	L601 Onycholysis
5141	L602 Onychogryphosis
5142	L603 Nail dystrophy
5143	L604 Beau lines
5144	L605 Yellow nail syndrome
5145	L608 Other nail disorders
5146	L609 Nail disorder, unspecified
5147	L62 Nail disorders in diseases classified elsewhere
5148	L620 Clubbed nail pachydermoperiostosis
5149	L628 Nail disorders in other diseases classified elsewhere
5150	L63 Alopecia areata
5151	L630 Alopecia (capitis) totalis
5152	L631 Alopecia universalis
5153	L632 Ophiasis
5154	L638 Other alopecia areata
5155	L639 Alopecia areata, unspecified
5156	L64 Androgenic alopecia
5157	L640 Drug-induced androgenic alopecia
5158	L648 Other androgenic alopecia
5159	L649 Androgenic alopecia, unspecified
5160	L65 Other nonscarring hair loss
5161	L650 Telogen effluvium
5162	L651 Anagen effluvium
5163	L652 Alopecia mucinosa
5164	L658 Other specified nonscarring hair loss
5165	L659 Nonscarring hair loss, unspecified
5166	L66 Cicatricial alopecia [scarring hair loss]
5167	L660 Pseudopelade
5168	L661 Lichen planopilaris
5169	L662 Folliculitis decalvans
5170	L663 Perifolliculitis capitis abscedens
5171	L664 Folliculitis ulerythematosa reticulata
5172	L668 Other cicatricial alopecia
5173	L669 Cicatricial alopecia, unspecified
5174	L67 Hair colour and hair shaft abnormalities
5175	L670 Trichorrhexis nodosa
5176	L671 Variations in hair colour
5177	L678 Other hair colour and hair shaft abnormalities
5178	L679 Hair colour and hair shaft abnormality, unspecified
5179	L68 Hypertrichosis
5180	L680 Hirsutism
5181	L681 Acquired hypertrichosis lanuginosa
5182	L682 Localized hypertrichosis
5183	L683 Polytrichia
5184	L688 Other hypertrichosis
5185	L689 Hypertrichosis, unspecified
5186	L70 Acne
5187	L700 Acne vulgaris
5188	L701 Acne conglobata
5189	L702 Acne varioliformis
5190	L703 Acne tropica
5191	L704 Infantile acne
5192	L705 Acné excoriée des jeunes filles
5193	L708 Other acne
5194	L709 Acne, unspecified
5195	L71 Rosacea
5196	L710 Perioral dermatitis
5197	L711 Rhinophyma
5198	L718 Other rosacea
5199	L719 Rosacea, unspecified
5200	L72 Follicular cysts of skin and subcutaneous tissue
5201	L720 Epidermal cyst
5202	L721 Trichilemmal cyst
5203	L722 Steatocystoma multiplex
5204	L728 Other follicular cysts of skin and subcutaneous tissue
5205	L729 Follicular cyst of skin and subcutaneous tissue, unspecified
5206	L73 Other follicular disorders
5207	L730 Acne keloid
5208	L731 Pseudofolliculitis barbae
5209	L732 Hidradenitis suppurativa
5210	L738 Other specified follicular disorders
5211	L739 Follicular disorder, unspecified
5212	L74 Eccrine sweat disorders
5213	L740 Miliaria rubra
5214	L741 Miliaria crystallina
5215	L742 Miliaria profunda
5216	L743 Miliaria, unspecified
5217	L744 Anhidrosis
5218	L748 Other eccrine sweat disorders
5219	L749 Eccrine sweat disorder, unspecified
5220	L75 Apocrine sweat disorders
5221	L750 Bromhidrosis
5222	L751 Chromhidrosis
5223	L752 Apocrine miliaria
5224	L758 Other apocrine sweat disorders
5225	L759 Apocrine sweat disorder, unspecified
5226	L80 Vitiligo
5227	L81 Other disorders of pigmentation
5228	L810 Postinflammatory hyperpigmentation
5229	L811 Chloasma
5230	L812 Freckles
5231	L813 Café au lait spots
5232	L814 Other melanin hyperpigmentation
5233	L815 Leukoderma, not elsewhere classified
5234	L816 Other disorders of diminished melanin formation
5235	L817 Pigmented purpuric dermatosis
5236	L818 Other specified disorders of pigmentation
5237	L819 Disorder of pigmentation, unspecified
5238	L82 Seborrhoeic keratosis
5239	L83 Acanthosis nigricans
5240	L84 Corns and callosities
5241	L85 Other epidermal thickening
5242	L850 Acquired ichthyosis
5243	L851 Acquired keratosis [keratoderma] palmaris et plantaris
5244	L852 Keratosis punctata (palmaris et plantaris)
5245	L853 Xerosis cutis
5246	L858 Other specified epidermal thickening
5247	L859 Epidermal thickening, unspecified
5248	L86 Keratoderma in diseases classified elsewhere
5249	L87 Transepidermal elimination disorders
5250	L870 Keratosis follicularis et parafollicularis in cutem penetrans [Kyrle]
5251	L871 Reactive perforating collagenosis
5252	L872 Elastosis perforans serpiginosa
5253	L878 Other transepidermal elimination disorders
5254	L879 Transepidermal elimination disorder, unspecified
5255	L88 Pyoderma gangrenosum
5256	L89 Decubitus ulcer and pressure area
5257	L890 Stage I decubitus ulcer and pressure area
5258	L891 Stage II decubitus ulcer
5259	L892 Stage III decubitus ulcer
5260	L893 Stage IV decubitus ulcer
5261	L899 Decubitus ulcer and pressure area, unspecified
5262	L90 Atrophic disorders of skin
5263	L900 Lichen sclerosus et atrophicus
5264	L901 Anetoderma of Schweninger-Buzzi
5265	L902 Anetoderma of Jadassohn-Pellizzari
5266	L903 Atrophoderma of Pasini and Pierini
5267	L904 Acrodermatitis chronica atrophicans
5268	L905 Scar conditions and fibrosis of skin
5269	L906 Striae atrophicae
5270	L908 Other atrophic disorders of skin
5271	L909 Atrophic disorder of skin, unspecified
5272	L91 Hypertrophic disorders of skin
5273	L910 Hypertrophic scar
5274	L918 Other hypertrophic disorders of skin
5275	L919 Hypertrophic disorder of skin, unspecified
5276	L92 Granulomatous disorders of skin and subcutaneous tissue
5277	L920 Granuloma annulare
5278	L921 Necrobiosis lipoidica, not elsewhere classified
5279	L922 Granuloma faciale [eosinophilic granuloma of skin]
5280	L923 Foreign body granuloma of skin and subcutaneous tissue
5281	L928 Other granulomatous disorders of skin and subcutaneous tissue
5282	L929 Granulomatous disorder of skin and subcutaneous tissue, unspecified
5283	L93 Lupus erythematosus
5284	L930 Discoid lupus erythematosus
5285	L931 Subacute cutaneous lupus erythematosus
5286	L932 Other local lupus erythematosus
5287	L94 Other localized connective tissue disorders
5288	L940 Localized scleroderma [morphea]
5289	L941 Linear scleroderma
5290	L942 Calcinosis cutis
5291	L943 Sclerodactyly
5292	L944 Gottron papules
5293	L945 Poikiloderma vasculare atrophicans
5294	L946 Ainhum
5295	L948 Other specified localized connective tissue disorders
5296	L949 Localized connective tissue disorder, unspecified
5297	L95 Vasculitis limited to skin, not elsewhere classified
5298	L950 Livedoid vasculitis
5299	L951 Erythema elevatum diutinum
5300	L958 Other vasculitis limited to skin
5301	L959 Vasculitis limited to skin, unspecified
5302	L97 Ulcer of lower limb, not elsewhere classified
5303	L98 Other disorders of skin and subcutaneous tissue, not elsewhere classified
5304	L980 Pyogenic granuloma
5305	L981 Factitial dermatitis
5306	L982 Febrile neutrophilic dermatosis [Sweet]
5307	L983 Eosinophilic cellulitis [Wells]
5308	L984 Chronic ulcer of skin, not elsewhere classified
5309	L985 Mucinosis of skin
5310	L986 Other infiltrative disorders of skin and subcutaneous tissue
5311	L988 Other specified disorders of skin and subcutaneous tissue
5312	L989 Disorder of skin and subcutaneous tissue, unspecified
5313	L99 Other disorders of skin and subcutaneous tissue in diseases classified elsewhere
5314	L990 Amyloidosis of skin
5315	L998 Other specified disorders of skin and subcutaneous tissue in diseases classified elsewhere
5316	M00 Pyogenic arthritis
5317	M000 Staphylococcal arthritis and polyarthritis
5318	M001 Pneumococcal arthritis and polyarthritis
5319	M002 Other streptococcal arthritis and polyarthritis
5320	M008 Arthritis and polyarthritis due to other specified bacterial agents
5321	M009 Pyogenic arthritis, unspecified
5322	M01 Direct infections of joint in infectious and parasitic diseases classified elsewhere
5323	M010 Meningococcal arthritis
5324	M011 Tuberculous arthritis
5325	M012 Arthritis in Lyme disease
5326	M013 Arthritis in other bacterial diseases classified elsewhere
5327	M014 Rubella arthritis
5328	M015 Arthritis in other viral diseases classified elsewhere
5329	M016 Arthritis in mycoses
5330	M018 Arthritis in other infectious and parasitic diseases classified elsewhere
5331	M02 Reactive arthropathies
5332	M020 Arthropathy following intestinal bypass
5333	M021 Postdysenteric arthropathy
5334	M022 Postimmunization arthropathy
5335	M023 Reiter disease
5336	M028 Other reactive arthropathies
5337	M029 Reactive arthropathy, unspecified
5338	M03 Postinfective and reactive arthropathies in diseases classified elsewhere
5339	M030 Postmeningococcal arthritis
5340	M031 Postinfective arthropathy in syphilis
5341	M032 Other postinfectious arthropathies in diseases classified elsewhere
5342	M036 Reactive arthropathy in other diseases classified elsewhere
5343	M05 Seropositive rheumatoid arthritis
5344	M050 Felty syndrome
5345	M051 Rheumatoid lung disease
5346	M052 Rheumatoid vasculitis
5347	M053 Rheumatoid arthritis with involvement of other organs and systems
5348	M058 Other seropositive rheumatoid arthritis
5349	M059 Seropositive rheumatoid arthritis, unspecified
5350	M06 Other rheumatoid arthritis
5351	M060 Seronegative rheumatoid arthritis
5352	M061 Adult-onset Still disease
5353	M062 Rheumatoid bursitis
5354	M063 Rheumatoid nodule
5355	M064 Inflammatory polyarthropathy
5356	M068 Other specified rheumatoid arthritis
5357	M069 Rheumatoid arthritis, unspecified
5358	M07 Psoriatic and enteropathic arthropathies
5359	M070 Distal interphalangeal psoriatic arthropathy
5360	M071 Arthritis mutilans
5361	M072 Psoriatic spondylitis
5362	M073 Other psoriatic arthropathies
5363	M074 Arthropathy in Crohn disease [regional enteritis]
5364	M075 Arthropathy in ulcerative colitis
5365	M076 Other enteropathic arthropathies
5366	M08 Juvenile arthritis
5367	M080 Juvenile rheumatoid arthritis
5368	M081 Juvenile ankylosing spondylitis
5369	M082 Juvenile arthritis with systemic onset
5370	M083 Juvenile polyarthritis (seronegative)
5371	M084 Pauciarticular juvenile arthritis
5372	M088 Other juvenile arthritis
5373	M089 Juvenile arthritis, unspecified
5374	M09 Juvenile arthritis in diseases classified elsewhere
5375	M090 Juvenile arthritis in psoriasis
5376	M091 Juvenile arthritis in Crohn disease [regional enteritis]
5377	M092 Juvenile arthritis in ulcerative colitis
5378	M098 Juvenile arthritis in other diseases classified elsewhere
5379	M10 Gout
5380	M100 Idiopathic gout
5381	M101 Lead-induced gout
5382	M102 Drug-induced gout
5383	M103 Gout due to impairment of renal function
5384	M104 Other secondary gout
5385	M109 Gout, unspecified
5386	M11 Other crystal arthropathies
5387	M110 Hydroxyapatite deposition disease
5388	M111 Familial chondrocalcinosis
5389	M112 Other chondrocalcinosis
5390	M118 Other specified crystal arthropathies
5391	M119 Crystal arthropathy, unspecified
5392	M12 Other specific arthropathies
5393	M120 Chronic postrheumatic arthropathy [Jaccoud]
5394	M121 Kaschin-Beck disease
5395	M122 Villonodular synovitis (pigmented)
5396	M123 Palindromic rheumatism
5397	M124 Intermittent hydrarthrosis
5398	M125 Traumatic arthropathy
5399	M128 Other specific arthropathies, not elsewhere classified
5400	M13 Other arthritis
5401	M130 Polyarthritis, unspecified
5402	M131 Monoarthritis, not elsewhere classified
5403	M138 Other specified arthritis
5404	M139 Arthritis, unspecified
5405	M14 Arthropathies in other diseases classified elsewhere
5406	M140 Gouty arthropathy due to enzyme defects and other inherited disorders
5407	M141 Crystal arthropathy in other metabolic disorders
5408	M142 Diabetic arthropathy
5409	M143 Lipoid dermatoarthritis
5410	M144 Arthropathy in amyloidosis
5411	M145 Arthropathies in other endocrine, nutritional and metabolic disorders
5412	M146 Neuropathic arthropathy
5413	M148 Arthropathies in other specified diseases classified elsewhere
5414	M15 Polyarthrosis
5415	M150 Primary generalized (osteo)arthrosis
5416	M151 Heberden nodes (with arthropathy)
5417	M152 Bouchard nodes (with arthropathy)
5418	M153 Secondary multiple arthrosis
5419	M154 Erosive (osteo)arthrosis
5420	M158 Other polyarthrosis
5421	M159 Polyarthrosis, unspecified
5422	M16 Coxarthrosis [arthrosis of hip]
5423	M160 Primary coxarthrosis, bilateral
5424	M161 Other primary coxarthrosis
5425	M162 Coxarthrosis resulting from dysplasia, bilateral
5426	M163 Other dysplastic coxarthrosis
5427	M164 Post-traumatic coxarthrosis, bilateral
5428	M165 Other post-traumatic coxarthrosis
5429	M166 Other secondary coxarthrosis, bilateral
5430	M167 Other secondary coxarthrosis
5431	M169 Coxarthrosis, unspecified
5432	M17 Gonarthrosis [arthrosis of knee]
5433	M170 Primary gonarthrosis, bilateral
5434	M171 Other primary gonarthrosis
5435	M172 Post-traumatic gonarthrosis, bilateral
5436	M173 Other post-traumatic gonarthrosis
5437	M174 Other secondary gonarthrosis, bilateral
5438	M175 Other secondary gonarthrosis
5439	M179 Gonarthrosis, unspecified
5440	M18 Arthrosis of first carpometacarpal joint
5441	M180 Primary arthrosis of first carpometacarpal joints, bilateral
5442	M181 Other primary arthrosis of first carpometacarpal joint
5443	M182 Post-traumatic arthrosis of first carpometacarpal joints, bilateral
5444	M183 Other post-traumatic arthrosis of first carpometacarpal joint
5445	M184 Other secondary arthrosis of first carpometacarpal joints, bilateral
5446	M185 Other secondary arthrosis of first carpometacarpal joint
5447	M189 Arthrosis of first carpometacarpal joint, unspecified
5448	M19 Other arthrosis
5449	M190 Primary arthrosis of other joints
5450	M191 Post-traumatic arthrosis of other joints
5451	M192 Other secondary arthrosis
5452	M198 Other specified arthrosis
5453	M199 Arthrosis, unspecified
5454	M20 Acquired deformities of fingers and toes
5455	M200 Deformity of finger(s)
5456	M201 Hallux valgus (acquired)
5457	M202 Hallux rigidus
5458	M203 Other deformity of hallux (acquired)
5459	M204 Other hammer toe(s) (acquired)
5460	M205 Other deformities of toe(s) (acquired)
5461	M414 Neuromuscular scoliosis
5462	M206 Acquired deformity of toe(s), unspecified
5463	M21 Other acquired deformities of limbs
5464	M210 Valgus deformity, not elsewhere classified
5465	M211 Varus deformity, not elsewhere classified
5466	M212 Flexion deformity
5467	M213 Wrist or foot drop (acquired)
5468	M214 Flat foot [pes planus] (acquired)
5469	M215 Acquired clawhand, clubhand, clawfoot and clubfoot
5470	M216 Other acquired deformities of ankle and foot
5471	M217 Unequal limb length (acquired)
5472	M218 Other specified acquired deformities of limbs
5473	M219 Acquired deformity of limb, unspecified
5474	M22 Disorders of patella
5475	M220 Recurrent dislocation of patella
5476	M221 Recurrent subluxation of patella
5477	M222 Patellofemoral disorders
5478	M223 Other derangements of patella
5479	M224 Chondromalacia patellae
5480	M228 Other disorders of patella
5481	M229 Disorder of patella, unspecified
5482	M23 Internal derangement of knee
5483	M230 Cystic meniscus
5484	M231 Discoid meniscus (congenital)
5485	M232 Derangement of meniscus due to old tear or injury
5486	M233 Other meniscus derangements
5487	M234 Loose body in knee
5488	M235 Chronic instability of knee
5489	M236 Other spontaneous disruption of ligament(s) of knee
5490	M238 Other internal derangements of knee
5491	M239 Internal derangement of knee, unspecified
5492	M24 Other specific joint derangements
5493	M240 Loose body in joint
5494	M241 Other articular cartilage disorders
5495	M242 Disorder of ligament
5496	M243 Pathological dislocation and subluxation of joint, not elsewhere classified
5497	M244 Recurrent dislocation and subluxation of joint
5498	M245 Contracture of joint
5499	M246 Ankylosis of joint
5500	M247 Protrusio acetabuli
5501	M248 Other specific joint derangements, not elsewhere classified
5502	M249 Joint derangement, unspecified
5503	M25 Other joint disorders, not elsewhere classified
5504	M250 Haemarthrosis
5505	M251 Fistula of joint
5506	M252 Flail joint
5507	M253 Other instability of joint
5508	M254 Effusion of joint
5509	M255 Pain in joint
5510	M256 Stiffness of joint, not elsewhere classified
5511	M257 Osteophyte
5512	M258 Other specified joint disorders
5513	M259 Joint disorder, unspecified
5514	M30 Polyarteritis nodosa and related conditions
5515	M300 Polyarteritis nodosa
5516	M301 Polyarteritis with lung involvement [Churg-Strauss]
5517	M302 Juvenile polyarteritis
5518	M303 Mucocutaneous lymph node syndrome [Kawasaki]
5519	M308 Other conditions related to polyarteritis nodosa
5520	M31 Other necrotizing vasculopathies
5521	M310 Hypersensitivity angiitis
5522	M311 Thrombotic microangiopathy
5523	M312 Lethal midline granuloma
5524	M313 Wegener granulomatosis
5525	M314 Aortic arch syndrome [Takayasu]
5526	M315 Giant cell arteritis with polymyalgia rheumatica
5527	M316 Other giant cell arteritis
5528	M317 Microscopic polyangiitis
5529	M318 Other specified necrotizing vasculopathies
5530	M319 Necrotizing vasculopathy, unspecified
5531	M32 Systemic lupus erythematosus
5532	M320 Drug-induced systemic lupus erythematosus
5533	M321 Systemic lupus erythematosus with organ or system involvement
5534	M328 Other forms of systemic lupus erythematosus
5535	M329 Systemic lupus erythematosus, unspecified
5536	M33 Dermatopolymyositis
5537	M330 Juvenile dermatomyositis
5538	M331 Other dermatomyositis
5539	M332 Polymyositis
5540	M339 Dermatopolymyositis, unspecified
5541	M34 Systemic sclerosis
5542	M340 Progressive systemic sclerosis
5543	M341 CR(E)ST syndrome
5544	M342 Systemic sclerosis induced by drugs and chemicals
5545	M348 Other forms of systemic sclerosis
5546	M349 Systemic sclerosis, unspecified
5547	M35 Other systemic involvement of connective tissue
5548	M350 Sicca syndrome [Sjögren]
5549	M351 Other overlap syndromes
5550	M352 Behçet disease
5551	M353 Polymyalgia rheumatica
5552	M354 Diffuse (eosinophilic) fasciitis
5553	M355 Multifocal fibrosclerosis
5554	M356 Relapsing panniculitis [Weber-Christian]
5555	M357 Hypermobility syndrome
5556	M358 Other specified systemic involvement of connective tissue
5557	M359 Systemic involvement of connective tissue, unspecified
5558	M36 Systemic disorders of connective tissue in diseases classified elsewhere
5559	M360 Dermato(poly)myositis in neoplastic disease
5560	M361 Arthropathy in neoplastic disease
5561	M362 Haemophilic arthropathy
5562	M363 Arthropathy in other blood disorders
5563	M364 Arthropathy in hypersensitivity reactions classified elsewhere
5564	M368 Systemic disorders of connective tissue in other diseases classified elsewhere
5565	M40 Kyphosis and lordosis
5566	M400 Postural kyphosis
5567	M401 Other secondary kyphosis
5568	M402 Other and unspecified kyphosis
5569	M403 Flatback syndrome
5570	M404 Other lordosis
5571	M405 Lordosis, unspecified
5572	M41 Scoliosis
5573	M410 Infantile idiopathic scoliosis
5574	M411 Juvenile idiopathic scoliosis
5575	M412 Other idiopathic scoliosis
5576	M413 Thoracogenic scoliosis
5577	M415 Other secondary scoliosis
5578	M418 Other forms of scoliosis
5579	M419 Scoliosis, unspecified
5580	M42 Spinal osteochondrosis
5581	M420 Juvenile osteochondrosis of spine
5582	M421 Adult osteochondrosis of spine
5583	M429 Spinal osteochondrosis, unspecified
5584	M43 Other deforming dorsopathies
5585	M430 Spondylolysis
5586	M431 Spondylolisthesis
5587	M432 Other fusion of spine
5588	M433 Recurrent atlantoaxial subluxation with myelopathy
5589	M434 Other recurrent atlantoaxial subluxation
5590	M435 Other recurrent vertebral subluxation
5591	M436 Torticollis
5592	M438 Other specified deforming dorsopathies
5593	M439 Deforming dorsopathy, unspecified
5594	M45 Ankylosing spondylitis
5595	M46 Other inflammatory spondylopathies
5596	M460 Spinal enthesopathy
5597	M461 Sacroiliitis, not elsewhere classified
5598	M462 Osteomyelitis of vertebra
5599	M463 Infection of intervertebral disc (pyogenic)
5600	M464 Discitis, unspecified
5601	M465 Other infective spondylopathies
5602	M468 Other specified inflammatory spondylopathies
5603	M469 Inflammatory spondylopathy, unspecified
5604	M47 Spondylosis
5605	M470 Anterior spinal and vertebral artery compression syndromes
5606	M471 Other spondylosis with myelopathy
5607	M472 Other spondylosis with radiculopathy
5608	M478 Other spondylosis
5609	M479 Spondylosis, unspecified
5610	M48 Other spondylopathies
5611	M480 Spinal stenosis
5612	M481 Ankylosing hyperostosis [Forestier]
5613	M482 Kissing spine
5614	M483 Traumatic spondylopathy
5615	M484 Fatigue fracture of vertebra
5616	M485 Collapsed vertebra, not elsewhere classified
5617	M488 Other specified spondylopathies
5618	M489 Spondylopathy, unspecified
5619	M49 Spondylopathies in diseases classified elsewhere
5620	M490 Tuberculosis of spine
5621	M491 Brucella spondylitis
5622	M492 Enterobacterial spondylitis
5623	M493 Spondylopathy in other infectious and parasitic diseases classified elsewhere
5624	M494 Neuropathic spondylopathy
5625	M495 Collapsed vertebra in diseases classified elsewhere
5626	M498 Spondylopathy in other diseases classified elsewhere
5627	M50 Cervical disc disorders
5628	M500 Cervical disc disorder with myelopathy
5629	M501 Cervical disc disorder with radiculopathy
5630	M502 Other cervical disc displacement
5631	M503 Other cervical disc degeneration
5632	M508 Other cervical disc disorders
5633	M509 Cervical disc disorder, unspecified
5634	M51 Other intervertebral disc disorders
5635	M510 Lumbar and other intervertebral disc disorders with myelopathy
5636	M511 Lumbar and other intervertebral disc disorders with radiculopathy
5637	M512 Other specified intervertebral disc displacement
5638	M513 Other specified intervertebral disc degeneration
5639	M514 Schmorl nodes
5640	M518 Other specified intervertebral disc disorders
5641	M519 Intervertebral disc disorder, unspecified
5642	M53 Other dorsopathies, not elsewhere classified
5643	M530 Cervicocranial syndrome
5644	M531 Cervicobrachial syndrome
5645	M532 Spinal instabilities
5646	M533 Sacrococcygeal disorders, not elsewhere classified
5647	M538 Other specified dorsopathies
5648	M539 Dorsopathy, unspecified
5649	M54 Dorsalgia
5650	M540 Panniculitis affecting regions of neck and back
5651	M541 Radiculopathy
5652	M542 Cervicalgia
5653	M543 Sciatica
5654	M544 Lumbago with sciatica
5655	M545 Low back pain
5656	M546 Pain in thoracic spine
5657	M548 Other dorsalgia
5658	M549 Dorsalgia, unspecified
5659	M60 Myositis
5660	M600 Infective myositis
5661	M601 Interstitial myositis
5662	M602 Foreign body granuloma of soft tissue, not elsewhere classified
5663	M608 Other myositis
5664	M609 Myositis, unspecified
5665	M61 Calcification and ossification of muscle
5666	M610 Myositis ossificans traumatica
5667	M611 Myositis ossificans progressiva
5668	M612 Paralytic calcification and ossification of muscle
5669	M613 Calcification and ossification of muscles associated with burns
5670	M614 Other calcification of muscle
5671	M615 Other ossification of muscle
5672	M619 Calcification and ossification of muscle, unspecified
5673	M62 Other disorders of muscle
5674	M620 Diastasis of muscle
5675	M621 Other rupture of muscle (nontraumatic)
5676	M622 Ischaemic infarction of muscle
5677	M623 Immobility syndrome (paraplegic)
5678	M624 Contracture of muscle
5679	M625 Muscle wasting and atrophy, not elsewhere classified
5680	M626 Muscle strain
5681	M628 Other specified disorders of muscle
5682	M629 Disorder of muscle, unspecified
5683	M63 Disorders of muscle in diseases classified elsewhere
5684	M630 Myositis in bacterial diseases classified elsewhere
5685	M631 Myositis in protozoal and parasitic infections classified elsewhere
5686	M632 Myositis in other infectious diseases classified elsewhere
5687	M633 Myositis in sarcoidosis
5688	M638 Other disorders of muscle in diseases classified elsewhere
5689	M65 Synovitis and tenosynovitis
5690	M650 Abscess of tendon sheath
5691	M651 Other infective (teno)synovitis
5692	M652 Calcific tendinitis
5693	M653 Trigger finger
5694	M654 Radial styloid tenosynovitis [de Quervain]
5695	M658 Other synovitis and tenosynovitis
5696	M659 Synovitis and tenosynovitis, unspecified
5697	M66 Spontaneous rupture of synovium and tendon
5698	M660 Rupture of popliteal cyst
5699	M661 Rupture of synovium
5700	M662 Spontaneous rupture of extensor tendons
5701	M663 Spontaneous rupture of flexor tendons
5702	M664 Spontaneous rupture of other tendons
5703	M665 Spontaneous rupture of unspecified tendon
5704	M67 Other disorders of synovium and tendon
5705	M670 Short Achilles tendon (acquired)
5706	M671 Other contracture of tendon (sheath)
5707	M672 Synovial hypertrophy, not elsewhere classified
5708	M673 Transient synovitis
5709	M674 Ganglion
5710	M678 Other specified disorders of synovium and tendon
5711	M679 Disorder of synovium and tendon, unspecified
5712	M68 Disorders of synovium and tendon in diseases classified elsewhere
5713	M680 Synovitis and tenosynovitis in bacterial diseases classified elsewhere
5714	M688 Other disorders of synovium and tendon in diseases classified elsewhere
5715	M70 Soft tissue disorders related to use, overuse and pressure
5716	M700 Chronic crepitant synovitis of hand and wrist
5717	M701 Bursitis of hand
5718	M702 Olecranon bursitis
5719	M703 Other bursitis of elbow
5720	M704 Prepatellar bursitis
5721	M705 Other bursitis of knee
5722	M706 Trochanteric bursitis
5723	M707 Other bursitis of hip
5724	M708 Other soft tissue disorders related to use, overuse and pressure
5725	M709 Unspecified soft tissue disorder related to use, overuse and pressure
5726	M71 Other bursopathies
5727	M710 Abscess of bursa
5728	M711 Other infective bursitis
5729	M712 Synovial cyst of popliteal space [Baker]
5730	M713 Other bursal cyst
5731	M714 Calcium deposit in bursa
5732	M715 Other bursitis, not elsewhere classified
5733	M718 Other specified bursopathies
5734	M719 Bursopathy, unspecified
5735	M72 Fibroblastic disorders
5736	M720 Palmar fascial fibromatosis [Dupuytren]
5737	M721 Knuckle pads
5738	M722 Plantar fascial fibromatosis
5739	M724 Pseudosarcomatous fibromatosis
5740	M726 Necrotizing fasciitis
5741	M728 Other fibroblastic disorders
5742	M729 Fibroblastic disorder, unspecified
5743	M73 Soft tissue disorders in diseases classified elsewhere
5744	M730 Gonococcal bursitis
5745	M731 Syphilitic bursitis
5746	M738 Other soft tissue disorders in diseases classified elsewhere
5747	M75 Shoulder lesions
5748	M750 Adhesive capsulitis of shoulder
5749	M751 Rotator cuff syndrome
5750	M752 Bicipital tendinitis
5751	M753 Calcific tendinitis of shoulder
5752	M754 Impingement syndrome of shoulder
5753	M755 Bursitis of shoulder
5754	M758 Other shoulder lesions
5755	M759 Shoulder lesion, unspecified
5756	M76 Enthesopathies of lower limb, excluding foot
5757	M760 Gluteal tendinitis
5758	M761 Psoas tendinitis
5759	M762 Iliac crest spur
5760	M763 Iliotibial band syndrome
5761	M764 Tibial collateral bursitis [Pellegrini-Stieda]
5762	M765 Patellar tendinitis
5763	M766 Achilles tendinitis
5764	M767 Peroneal tendinitis
5765	M768 Other enthesopathies of lower limb, excluding foot
5766	M769 Enthesopathy of lower limb, unspecified
5767	M77 Other enthesopathies
5768	M770 Medial epicondylitis
5769	M771 Lateral epicondylitis
5770	M772 Periarthritis of wrist
5771	M773 Calcaneal spur
5772	M774 Metatarsalgia
5773	M775 Other enthesopathy of foot
5774	M778 Other enthesopathies, not elsewhere classified
5775	M779 Enthesopathy, unspecified
5776	M79 Other soft tissue disorders, not elsewhere classified
5777	M790 Rheumatism, unspecified
5778	M791 Myalgia
5779	M792 Neuralgia and neuritis, unspecified
5780	M793 Panniculitis, unspecified
5781	M794 Hypertrophy of (infrapatellar) fat pad
5782	M795 Residual foreign body in soft tissue
5783	M796 Pain in limb
5784	M797 Fibromyalgia
5785	M798 Other specified soft tissue disorders
5786	M799 Soft tissue disorder, unspecified
5787	M80 Osteoporosis with pathological fracture
5788	M800 Postmenopausal osteoporosis with pathological fracture
5789	M801 Postoophorectomy osteoporosis with pathological fracture
5790	M802 Osteoporosis of disuse with pathological fracture
5791	M803 Postsurgical malabsorption osteoporosis with pathological fracture
5792	M804 Drug-induced osteoporosis with pathological fracture
5793	M805 Idiopathic osteoporosis with pathological fracture
5794	M808 Other osteoporosis with pathological fracture
5795	M809 Unspecified osteoporosis with pathological fracture
5796	M81 Osteoporosis without pathological fracture
5797	M810 Postmenopausal osteoporosis
5798	M811 Postoophorectomy osteoporosis
5799	M812 Osteoporosis of disuse
5800	M813 Postsurgical malabsorption osteoporosis
5801	M814 Drug-induced osteoporosis
5802	M815 Idiopathic osteoporosis
5803	M816 Localized osteoporosis [Lequesne]
5804	M818 Other osteoporosis
5805	M819 Osteoporosis, unspecified
5806	M82 Osteoporosis in diseases classified elsewhere
5807	M820 Osteoporosis in multiple myelomatosis
5808	M821 Osteoporosis in endocrine disorders
5809	M828 Osteoporosis in other diseases classified elsewhere
5810	M83 Adult osteomalacia
5811	M830 Puerperal osteomalacia
5812	M831 Senile osteomalacia
5813	M832 Adult osteomalacia due to malabsorption
5814	M833 Adult osteomalacia due to malnutrition
5815	M834 Aluminium bone disease
5816	M835 Other drug-induced osteomalacia in adults
5817	M838 Other adult osteomalacia
5818	M839 Adult osteomalacia, unspecified
5819	M84 Disorders of continuity of bone
5820	M840 Malunion of fracture
5821	M841 Nonunion of fracture [pseudarthrosis]
5822	M842 Delayed union of fracture
5823	M843 Stress fracture, not elsewhere classified
5824	M844 Pathological fracture, not elsewhere classified
5825	M848 Other disorders of continuity of bone
5826	M849 Disorder of continuity of bone, unspecified
5827	M85 Other disorders of bone density and structure
5828	M850 Fibrous dysplasia (monostotic)
5829	M851 Skeletal fluorosis
5830	M852 Hyperostosis of skull
5831	M853 Osteitis condensans
5832	M854 Solitary bone cyst
5833	M855 Aneurysmal bone cyst
5834	M856 Other cyst of bone
5835	M858 Other specified disorders of bone density and structure
5836	M859 Disorder of bone density and structure, unspecified
5837	M86 Osteomyelitis
5838	M860 Acute haematogenous osteomyelitis
5839	M861 Other acute osteomyelitis
5840	M862 Subacute osteomyelitis
5841	M863 Chronic multifocal osteomyelitis
5842	M864 Chronic osteomyelitis with draining sinus
5843	M865 Other chronic haematogenous osteomyelitis
5844	M866 Other chronic osteomyelitis
5845	M868 Other osteomyelitis
5846	M869 Osteomyelitis, unspecified
5847	M87 Osteonecrosis
5848	M870 Idiopathic aseptic necrosis of bone
5849	M871 Osteonecrosis due to drugs
5850	M872 Osteonecrosis due to previous trauma
5851	M873 Other secondary osteonecrosis
5852	M878 Other osteonecrosis
5853	M879 Osteonecrosis, unspecified
5854	M88 Paget disease of bone [osteitis deformans]
5855	M880 Paget disease of skull
5856	M888 Paget disease of other bones
5857	M889 Paget disease of bone, unspecified
5858	M89 Other disorders of bone
5859	M890 Algoneurodystrophy
5860	M891 Epiphyseal arrest
5861	M892 Other disorders of bone development and growth
5862	M893 Hypertrophy of bone
5863	M894 Other hypertrophic osteoarthropathy
5864	M895 Osteolysis
5865	M896 Osteopathy after poliomyelitis
5866	M898 Other specified disorders of bone
5867	M899 Disorder of bone, unspecified
5868	M90 Osteopathies in diseases classified elsewhere
5869	M900 Tuberculosis of bone
8006	Q960 Karyotype 45,X
5870	M901 Periostitis in other infectious diseases classified elsewhere
5871	M902 Osteopathy in other infectious diseases classified elsewhere
5872	M903 Osteonecrosis in caisson disease
5873	M904 Osteonecrosis due to haemoglobinopathy
5874	M905 Osteonecrosis in other diseases classified elsewhere
5875	M906 Osteitis deformans in neoplastic disease
5876	M907 Fracture of bone in neoplastic disease
5877	M908 Osteopathy in other diseases classified elsewhere
5878	M91 Juvenile osteochondrosis of hip and pelvis
5879	M910 Juvenile osteochondrosis of pelvis
5880	M911 Juvenile osteochondrosis of head of femur [Legg-Calvé-Perthes]
5881	M912 Coxa plana
5882	M913 Pseudocoxalgia
5883	M918 Other juvenile osteochondrosis of hip and pelvis
5884	M919 Juvenile osteochondrosis of hip and pelvis, unspecified
5885	M92 Other juvenile osteochondrosis
5886	M920 Juvenile osteochondrosis of humerus
5887	M921 Juvenile osteochondrosis of radius and ulna
5888	M922 Juvenile osteochondrosis of hand
5889	M923 Other juvenile osteochondrosis of upper limb
5890	M924 Juvenile osteochondrosis of patella
5891	M925 Juvenile osteochondrosis of tibia and fibula
5892	M926 Juvenile osteochondrosis of tarsus
5893	M927 Juvenile osteochondrosis of metatarsus
5894	M928 Other specified juvenile osteochondrosis
5895	M929 Juvenile osteochondrosis, unspecified
5896	M93 Other osteochondropathies
5897	M930 Slipped upper femoral epiphysis (nontraumatic)
5898	M931 Kienböck disease of adults
5899	M932 Osteochondritis dissecans
5900	M938 Other specified osteochondropathies
5901	M939 Osteochondropathy, unspecified
5902	M94 Other disorders of cartilage
5903	M940 Chondrocostal junction syndrome [Tietze]
5904	M941 Relapsing polychondritis
5905	M942 Chondromalacia
5906	M943 Chondrolysis
5907	M948 Other specified disorders of cartilage
5908	M949 Disorder of cartilage, unspecified
5909	M95 Other acquired deformities of musculoskeletal system and connective tissue
5910	M950 Acquired deformity of nose
5911	M951 Cauliflower ear
5912	M952 Other acquired deformity of head
5913	M953 Acquired deformity of neck
5914	M954 Acquired deformity of chest and rib
5915	M955 Acquired deformity of pelvis
5916	M958 Other specified acquired deformities of musculoskeletal system
5917	M959 Acquired deformity of musculoskeletal system, unspecified
5918	M96 Postprocedural musculoskeletal disorders, not elsewhere classified
5919	M960 Pseudarthrosis after fusion or arthrodesis
5920	M961 Postlaminectomy syndrome, not elsewhere classified
5921	M962 Postradiation kyphosis
5922	M963 Postlaminectomy kyphosis
5923	M964 Postsurgical lordosis
5924	M965 Postradiation scoliosis
5925	M966 Fracture of bone following insertion of orthopaedic implant, joint prosthesis, or bone plate
5926	M968 Other postprocedural musculoskeletal disorders
5927	M969 Postprocedural musculoskeletal disorder, unspecified
5928	M99 Biomechanical lesions, not elsewhere classified
5929	M990 Segmental and somatic dysfunction
5930	M991 Subluxation complex (vertebral)
5931	M992 Subluxation stenosis of neural canal
5932	M993 Osseous stenosis of neural canal
5933	M994 Connective tissue stenosis of neural canal
5934	M995 Intervertebral disc stenosis of neural canal
5935	M996 Osseous and subluxation stenosis of intervertebral foramina
5936	M997 Connective tissue and disc stenosis of intervertebral foramina
5937	M998 Other biomechanical lesions
5938	M999 Biomechanical lesion, unspecified
5939	N00 Acute nephritic syndrome
5940	N000 Acute nephritic syndrome: Minor glomerular abnormality
5941	N001 Acute nephritic syndrome: Focal and segmental glomerular lesions
5942	N002 Acute nephritic syndrome: Diffuse membranous glomerulonephritis
5943	N003 Acute nephritic syndrome: Diffuse mesangial proliferative glomerulonephritis
5944	N004 Acute nephritic syndrome: Diffuse endocapillary proliferative glomerulonephritis
5945	N005 Acute nephritic syndrome: Diffuse mesangiocapillary glomerulonephritis
5946	N006 Acute nephritic syndrome: Dense deposit disease
5947	N007 Acute nephritic syndrome: Diffuse crescentic glomerulonephritis
5948	N008 Acute nephritic syndrome: Other
5949	N009 Acute nephritic syndrome: Unspecified
5950	N01 Rapidly progressive nephritic syndrome
5951	N010 Rapidly progressive nephritic syndrome: Minor glomerular abnormality
5952	N011 Rapidly progressive nephritic syndrome: Focal and segmental glomerular lesions
5953	N012 Rapidly progressive nephritic syndrome: Diffuse membranous glomerulonephritis
5954	N013 Rapidly progressive nephritic syndrome: Diffuse mesangial proliferative glomerulonephritis
5955	N014 Rapidly progressive nephritic syndrome: Diffuse endocapillary proliferative glomerulonephritis
5956	N015 Rapidly progressive nephritic syndrome: Diffuse mesangiocapillary glomerulonephritis
5957	N016 Rapidly progressive nephritic syndrome: Dense deposit disease
5958	N017 Rapidly progressive nephritic syndrome: Diffuse crescentic glomerulonephritis
5959	N018 Rapidly progressive nephritic syndrome: Other
5960	N019 Rapidly progressive nephritic syndrome: Unspecified
5961	N02 Recurrent and persistent haematuria
5962	N020 Recurrent and persistent haematuria: Minor glomerular abnormality
5963	N021 Recurrent and persistent haematuria: Focal and segmental glomerular lesions
5964	Q96 Turner syndrome
5965	N022 Recurrent and persistent haematuria: Diffuse membranous glomerulonephritis
5966	N023 Recurrent and persistent haematuria: Diffuse mesangial proliferative glomerulonephritis
5967	N024 Recurrent and persistent haematuria: Diffuse endocapillary proliferative glomerulonephritis
5968	N025 Recurrent and persistent haematuria: Diffuse mesangiocapillary glomerulonephritis
5969	N026 Recurrent and persistent haematuria: Dense deposit disease
5970	N027 Recurrent and persistent haematuria: Diffuse crescentic glomerulonephritis
5971	N028 Recurrent and persistent haematuria: Other
5972	N029 Recurrent and persistent haematuria: Unspecified
5973	N03 Chronic nephritic syndrome
5974	N030 Chronic nephritic syndrome: Minor glomerular abnormality
5975	N031 Chronic nephritic syndrome: Focal and segmental glomerular lesions
5976	N032 Chronic nephritic syndrome: Diffuse membranous glomerulonephritis
5977	N033 Chronic nephritic syndrome: Diffuse mesangial proliferative glomerulonephritis
5978	N034 Chronic nephritic syndrome: Diffuse endocapillary proliferative glomerulonephritis
5979	N035 Chronic nephritic syndrome: Diffuse mesangiocapillary glomerulonephritis
5980	N036 Chronic nephritic syndrome: Dense deposit disease
5981	N037 Chronic nephritic syndrome: Diffuse crescentic glomerulonephritis
5982	N038 Chronic nephritic syndrome: Other
5983	N039 Chronic nephritic syndrome: Unspecified
5984	N04 Nephrotic syndrome
5985	N040 Nephrotic syndrome: Minor glomerular abnormality
5986	N041 Nephrotic syndrome: Focal and segmental glomerular lesions
5987	N042 Nephrotic syndrome: Diffuse membranous glomerulonephritis
5988	N043 Nephrotic syndrome: Diffuse mesangial proliferative glomerulonephritis
5989	N044 Nephrotic syndrome: Diffuse endocapillary proliferative glomerulonephritis
5990	N045 Nephrotic syndrome: Diffuse mesangiocapillary glomerulonephritis
5991	N046 Nephrotic syndrome: Dense deposit disease
5992	N047 Nephrotic syndrome: Diffuse crescentic glomerulonephritis
5993	N048 Nephrotic syndrome: Other
5994	N049 Nephrotic syndrome: Unspecified
5995	N05 Unspecified nephritic syndrome
5996	N050 Unspecified nephritic syndrome: Minor glomerular abnormality
5997	N051 Unspecified nephritic syndrome: Focal and segmental glomerular lesions
5998	N052 Unspecified nephritic syndrome: Diffuse membranous glomerulonephritis
5999	N053 Unspecified nephritic syndrome: Diffuse mesangial proliferative glomerulonephritis
6000	N054 Unspecified nephritic syndrome: Diffuse endocapillary proliferative glomerulonephritis
6001	N055 Unspecified nephritic syndrome: Diffuse mesangiocapillary glomerulonephritis
6002	N056 Unspecified nephritic syndrome: Dense deposit disease
6003	N057 Unspecified nephritic syndrome: Diffuse crescentic glomerulonephritis
6004	N058 Unspecified nephritic syndrome: Other
6005	N059 Unspecified nephritic syndrome: Unspecified
6006	N06 Isolated proteinuria with specified morphological lesion
6007	N060 Isolated proteinuria with specified morphological lesion: Minor glomerular abnormality
6008	N061 Isolated proteinuria with specified morphological lesion: Focal and segmental glomerular lesions
6009	N062 Isolated proteinuria with specified morphological lesion: Diffuse membranous glomerulonephritis
6010	N063 Isolated proteinuria with specified morphological lesion: Diffuse mesangial proliferative glomerulonephritis
6011	N064 Isolated proteinuria with specified morphological lesion: Diffuse endocapillary proliferative glomerulonephritis
6012	N065 Isolated proteinuria with specified morphological lesion: Diffuse mesangiocapillary glomerulonephritis
6013	N066 Isolated proteinuria with specified morphological lesion: Dense deposit disease
6014	N067 Isolated proteinuria with specified morphological lesion: Diffuse crescentic glomerulonephritis
6015	N068 Isolated proteinuria with specified morphological lesion: Other
6016	N069 Isolated proteinuria with specified morphological lesion: Unspecified
6017	N07 Hereditary nephropathy, not elsewhere classified
6018	N070 Hereditary nephropathy, not elsewhere classified: Minor glomerular abnormality
6019	N071 Hereditary nephropathy, not elsewhere classified: Focal and segmental glomerular lesions
6020	N072 Hereditary nephropathy, not elsewhere classified: Diffuse membranous glomerulonephritis
6021	N073 Hereditary nephropathy, not elsewhere classified: Diffuse mesangial proliferative glomerulonephritis
6022	N074 Hereditary nephropathy, not elsewhere classified: Diffuse endocapillary proliferative glomerulonephritis
6023	N075 Hereditary nephropathy, not elsewhere classified: Diffuse mesangiocapillary glomerulonephritis
6024	N076 Hereditary nephropathy, not elsewhere classified: Dense deposit disease
6025	N077 Hereditary nephropathy, not elsewhere classified: Diffuse crescentic glomerulonephritis
6026	N078 Hereditary nephropathy, not elsewhere classified: Other
6027	N079 Hereditary nephropathy, not elsewhere classified: Unspecified
6028	N08 Glomerular disorders in diseases classified elsewhere
6029	N080 Glomerular disorders in infectious and parasitic diseases classified elsewhere
6030	N081 Glomerular disorders in neoplastic diseases
6031	N082 Glomerular disorders in blood diseases and disorders involving the immune mechanism
6032	N083 Glomerular disorders in diabetes mellitus
6033	N084 Glomerular disorders in other endocrine, nutritional and metabolic diseases
6034	N085 Glomerular disorders in systemic connective tissue disorders
6035	N088 Glomerular disorders in other diseases classified elsewhere
6036	N10 Acute tubulo-interstitial nephritis
6037	N11 Chronic tubulo-interstitial nephritis
6038	N110 Nonobstructive reflux-associated chronic pyelonephritis
6039	N111 Chronic obstructive pyelonephritis
6040	N118 Other chronic tubulo-interstitial nephritis
6041	N119 Chronic tubulo-interstitial nephritis, unspecified
6042	N12 Tubulo-interstitial nephritis, not specified as acute or chronic
6043	N13 Obstructive and reflux uropathy
6044	N130 Hydronephrosis with ureteropelvic junction obstruction
6045	N131 Hydronephrosis with ureteral stricture, not elsewhere classified
6046	N132 Hydronephrosis with renal and ureteral calculous obstruction
6047	N133 Other and unspecified hydronephrosis
6048	N134 Hydroureter
6049	N135 Kinking and stricture of ureter without hydronephrosis
6050	N136 Pyonephrosis
6051	N137 Vesicoureteral-reflux-associated uropathy
6052	N138 Other obstructive and reflux uropathy
6053	N139 Obstructive and reflux uropathy, unspecified
6054	N14 Drug- and heavy-metal-induced tubulo-interstitial and tubular conditions
6055	N140 Analgesic nephropathy
6056	N141 Nephropathy induced by other drugs, medicaments and biological substances
6057	N142 Nephropathy induced by unspecified drug, medicament or biological substance
6058	N143 Nephropathy induced by heavy metals
6059	N144 Toxic nephropathy, not elsewhere classified
6060	N15 Other renal tubulo-interstitial diseases
6061	N150 Balkan nephropathy
6062	N151 Renal and perinephric abscess
6063	N158 Other specified renal tubulo-interstitial diseases
6064	N159 Renal tubulo-interstitial disease, unspecified
6065	N16 Renal tubulo-interstitial disorders in diseases classified elsewhere
6066	N160 Renal tubulo-interstitial disorders in infectious and parasitic diseases classified elsewhere
6067	N161 Renal tubulo-interstitial disorders in neoplastic diseases
6068	N162 Renal tubulo-interstitial disorders in blood diseases and disorders involving the immune mechanism
6069	N163 Renal tubulo-interstitial disorders in metabolic diseases
6070	N164 Renal tubulo-interstitial disorders in systemic connective tissue disorders
6071	N165 Renal tubulo-interstitial disorders in transplant rejection
6072	N168 Renal tubulo-interstitial disorders in other diseases classified elsewhere
6073	N17 Acute renal failure
6074	N170 Acute renal failure with tubular necrosis
6075	N171 Acute renal failure with acute cortical necrosis
6076	N172 Acute renal failure with medullary necrosis
6077	N178 Other acute renal failure
6078	N179 Acute renal failure, unspecified
6079	N18 Chronic kidney disease
6080	N181 Chronic kidney disease, stage 1
6081	N182 Chronic kidney disease, stage 2
6082	N183 Chronic kidney disease, stage 3
6083	N184 Chronic kidney disease, stage 4
6084	N185 Chronic kidney disease, stage 5
6085	N189 Chronic kidney disease, unspecified
6086	N19 Unspecified kidney failure
6087	N20 Calculus of kidney and ureter
6088	N200 Calculus of kidney
6089	N201 Calculus of ureter
6090	N481 Balanoposthitis
6091	N202 Calculus of kidney with calculus of ureter
6092	N209 Urinary calculus, unspecified
6093	N21 Calculus of lower urinary tract
6094	N210 Calculus in bladder
6095	N211 Calculus in urethra
6096	N218 Other lower urinary tract calculus
6097	N219 Calculus of lower urinary tract, unspecified
6098	N22 Calculus of urinary tract in diseases classified elsewhere
6099	N220 Urinary calculus in schistosomiasis [bilharziasis]
6100	N228 Calculus of urinary tract in other diseases classified elsewhere
6101	N23 Unspecified renal colic
6102	N25 Disorders resulting from impaired renal tubular function
6103	N250 Renal osteodystrophy
6104	N251 Nephrogenic diabetes insipidus
6105	N258 Other disorders resulting from impaired renal tubular function
6106	N259 Disorder resulting from impaired renal tubular function, unspecified
6107	N26 Unspecified contracted kidney
6108	N27 Small kidney of unknown cause
6109	N270 Small kidney, unilateral
6110	N271 Small kidney, bilateral
6111	N279 Small kidney, unspecified
6112	N28 Other disorders of kidney and ureter, not elsewhere classified
6113	N280 Ischaemia and infarction of kidney
6114	N281 Cyst of kidney, acquired
6115	N288 Other specified disorders of kidney and ureter
6116	N289 Disorder of kidney and ureter, unspecified
6117	N29 Other disorders of kidney and ureter in diseases classified elsewhere
6118	N290 Late syphilis of kidney
6119	N291 Other disorders of kidney and ureter in infectious and parasitic diseases classified elsewhere
6120	N298 Other disorders of kidney and ureter in other diseases classified elsewhere
6121	N30 Cystitis
6122	N300 Acute cystitis
6123	N301 Interstitial cystitis (chronic)
6124	N302 Other chronic cystitis
6125	N303 Trigonitis
6126	N304 Irradiation cystitis
6127	N308 Other cystitis
6128	N309 Cystitis, unspecified
6129	N31 Neuromuscular dysfunction of bladder, not elsewhere classified
6130	N310 Uninhibited neuropathic bladder, not elsewhere classified
6131	N311 Reflex neuropathic bladder, not elsewhere classified
6132	N312 Flaccid neuropathic bladder, not elsewhere classified
6133	N318 Other neuromuscular dysfunction of bladder
6134	N319 Neuromuscular dysfunction of bladder, unspecified
6135	N32 Other disorders of bladder
6136	N320 Bladder-neck obstruction
6137	N321 Vesicointestinal fistula
6138	N322 Vesical fistula, not elsewhere classified
6139	N323 Diverticulum of bladder
6140	N881 Old laceration of cervix uteri
6141	N324 Rupture of bladder, nontraumatic
6142	N328 Other specified disorders of bladder
6143	N329 Bladder disorder, unspecified
6144	N33 Bladder disorders in diseases classified elsewhere
6145	N330 Tuberculous cystitis
6146	N338 Bladder disorders in other diseases classified elsewhere
6147	N34 Urethritis and urethral syndrome
6148	N340 Urethral abscess
6149	N341 Nonspecific urethritis
6150	N342 Other urethritis
6151	N343 Urethral syndrome, unspecified
6152	N35 Urethral stricture
6153	N350 Post-traumatic urethral stricture
6154	N351 Postinfective urethral stricture, not elsewhere classified
6155	N358 Other urethral stricture
6156	N359 Urethral stricture, unspecified
6157	N36 Other disorders of urethra
6158	N360 Urethral fistula
6159	N361 Urethral diverticulum
6160	N362 Urethral caruncle
6161	N363 Prolapsed urethral mucosa
6162	N368 Other specified disorders of urethra
6163	N369 Urethral disorder, unspecified
6164	N37 Urethral disorders in diseases classified elsewhere
6165	N370 Urethritis in diseases classified elsewhere
6166	N378 Other urethral disorders in diseases classified elsewhere
6167	N39 Other disorders of urinary system
6168	N390 Urinary tract infection, site not specified
6169	N391 Persistent proteinuria, unspecified
6170	N392 Orthostatic proteinuria, unspecified
6171	N393 Stress incontinence
6172	N394 Other specified urinary incontinence
6173	N398 Other specified disorders of urinary system
6174	N399 Disorder of urinary system, unspecified
6175	N40 Hyperplasia of prostate
6176	N41 Inflammatory diseases of prostate
6177	N410 Acute prostatitis
6178	N411 Chronic prostatitis
6179	N412 Abscess of prostate
6180	N413 Prostatocystitis
6181	N418 Other inflammatory diseases of prostate
6182	N419 Inflammatory disease of prostate, unspecified
6183	N42 Other disorders of prostate
6184	N420 Calculus of prostate
6185	N421 Congestion and haemorrhage of prostate
6186	N422 Atrophy of prostate
6187	N423 Dysplasia of prostate
6188	N428 Other specified disorders of prostate
6189	N429 Disorder of prostate, unspecified
6190	N43 Hydrocele and spermatocele
6191	N430 Encysted hydrocele
6192	N431 Infected hydrocele
6193	N432 Other hydrocele
6194	N433 Hydrocele, unspecified
6195	N434 Spermatocele
6196	N44 Torsion of testis
6197	N45 Orchitis and epididymitis
6198	N450 Orchitis, epididymitis and epididymo-orchitis with abscess
6199	N459 Orchitis, epididymitis and epididymo-orchitis without abscess
6200	N46 Male infertility
6201	N47 Redundant prepuce, phimosis and paraphimosis
6202	N48 Other disorders of penis
6203	N480 Leukoplakia of penis
6204	N482 Other inflammatory disorders of penis
6205	N483 Priapism
6206	N484 Impotence of organic origin
6207	N485 Ulcer of penis
6208	N486 Induratio penis plastica
6209	N488 Other specified disorders of penis
6210	N489 Disorder of penis, unspecified
6211	N49 Inflammatory disorders of male genital organs, not elsewhere classified
6212	N490 Inflammatory disorders of seminal vesicle
6213	N491 Inflammatory disorders of spermatic cord, tunica vaginalis and vas deferens
6214	N492 Inflammatory disorders of scrotum
6215	N498 Inflammatory disorders of other specified male genital organs
6216	N499 Inflammatory disorder of unspecified male genital organ
6217	N50 Other disorders of male genital organs
6218	N500 Atrophy of testis
6219	N501 Vascular disorders of male genital organs
6220	N508 Other specified disorders of male genital organs
6221	N509 Disorder of male genital organs, unspecified
6222	N51 Disorders of male genital organs in diseases classified elsewhere
6223	N510 Disorders of prostate in diseases classified elsewhere
6224	N511 Disorders of testis and epididymis in diseases classified elsewhere
6225	N512 Balanitis in diseases classified elsewhere
6226	N518 Other disorders of male genital organs in diseases classified elsewhere
6227	N60 Benign mammary dysplasia
6228	N600 Solitary cyst of breast
6229	N601 Diffuse cystic mastopathy
6230	N602 Fibroadenosis of breast
6231	N603 Fibrosclerosis of breast
6232	N604 Mammary duct ectasia
6233	N608 Other benign mammary dysplasias
6234	N609 Benign mammary dysplasia, unspecified
6235	N61 Inflammatory disorders of breast
6236	N62 Hypertrophy of breast
6237	N63 Unspecified lump in breast
6238	N64 Other disorders of breast
6239	N640 Fissure and fistula of nipple
6240	N641 Fat necrosis of breast
6241	N642 Atrophy of breast
6242	N643 Galactorrhoea not associated with childbirth
6243	N644 Mastodynia
6244	N645 Other signs and symptoms in breast
6245	N648 Other specified disorders of breast
6246	N649 Disorder of breast, unspecified
6247	N70 Salpingitis and oophoritis
6248	N700 Acute salpingitis and oophoritis
6249	N701 Chronic salpingitis and oophoritis
6250	N709 Salpingitis and oophoritis, unspecified
6251	N71 Inflammatory disease of uterus, except cervix
6252	N710 Acute inflammatory disease of uterus
6253	N711 Chronic inflammatory disease of uterus
6254	N719 Inflammatory disease of uterus, unspecified
6255	N72 Inflammatory disease of cervix uteri
6256	N73 Other female pelvic inflammatory diseases
6257	N730 Acute parametritis and pelvic cellulitis
6258	N731 Chronic parametritis and pelvic cellulitis
6259	N732 Unspecified parametritis and pelvic cellulitis
6260	N733 Female acute pelvic peritonitis
6261	N734 Female chronic pelvic peritonitis
6262	N735 Female pelvic peritonitis, unspecified
6263	N736 Female pelvic peritoneal adhesions
6264	N738 Other specified female pelvic inflammatory diseases
6265	N739 Female pelvic inflammatory disease, unspecified
6266	N74 Female pelvic inflammatory disorders in diseases classified elsewhere
6267	N740 Tuberculous infection of cervix uteri
6268	N741 Female tuberculous pelvic inflammatory disease
6269	N742 Female syphilitic pelvic inflammatory disease
6270	N743 Female gonococcal pelvic inflammatory disease
6271	N744 Female chlamydial pelvic inflammatory disease
6272	N748 Female pelvic inflammatory disorders in other diseases classified elsewhere
6273	N75 Diseases of Bartholin gland
6274	N750 Cyst of Bartholin gland
6275	N751 Abscess of Bartholin gland
6276	N758 Other diseases of Bartholin gland
6277	N759 Disease of Bartholin gland, unspecified
6278	N76 Other inflammation of vagina and vulva
6279	N760 Acute vaginitis
6280	N761 Subacute and chronic vaginitis
6281	N762 Acute vulvitis
6282	N763 Subacute and chronic vulvitis
6283	N764 Abscess of vulva
6284	N765 Ulceration of vagina
6285	N766 Ulceration of vulva
6286	N768 Other specified inflammation of vagina and vulva
6287	N77 Vulvovaginal ulceration and inflammation in diseases classified elsewhere
6288	N770 Ulceration of vulva in infectious and parasitic diseases classified elsewhere
6289	N771 Vaginitis, vulvitis and vulvovaginitis in infectious and parasitic diseases classified elsewhere
6290	N778 Vulvovaginal ulceration and inflammation in other diseases classified elsewhere
6291	N80 Endometriosis
6292	N800 Endometriosis of uterus
6293	N801 Endometriosis of ovary
6294	N802 Endometriosis of fallopian tube
6295	N803 Endometriosis of pelvic peritoneum
6296	N804 Endometriosis of rectovaginal septum and vagina
6297	N805 Endometriosis of intestine
6298	N806 Endometriosis in cutaneous scar
6299	N808 Other endometriosis
6300	N809 Endometriosis, unspecified
6301	N81 Female genital prolapse
6302	N810 Female urethrocele
6303	N811 Cystocele
6304	N812 Incomplete uterovaginal prolapse
6305	N813 Complete uterovaginal prolapse
6306	N814 Uterovaginal prolapse, unspecified
6307	N815 Vaginal enterocele
6308	N816 Rectocele
6309	N818 Other female genital prolapse
6310	N819 Female genital prolapse, unspecified
6311	N82 Fistulae involving female genital tract
6312	N820 Vesicovaginal fistula
6313	N821 Other female urinary-genital tract fistulae
6314	N822 Fistula of vagina to small intestine
6315	N823 Fistula of vagina to large intestine
6316	N824 Other female intestinal-genital tract fistulae
6317	N825 Female genital tract-skin fistulae
6318	N828 Other female genital tract fistulae
6319	N829 Female genital tract fistula, unspecified
6320	N83 Noninflammatory disorders of ovary, fallopian tube and broad ligament
6321	N830 Follicular cyst of ovary
6322	N831 Corpus luteum cyst
6323	N832 Other and unspecified ovarian cysts
6324	N833 Acquired atrophy of ovary and fallopian tube
6325	N834 Prolapse and hernia of ovary and fallopian tube
6326	N835 Torsion of ovary, ovarian pedicle and fallopian tube
6327	N836 Haematosalpinx
6328	N837 Haematoma of broad ligament
6329	N838 Other noninflammatory disorders of ovary, fallopian tube and broad ligament
6330	N839 Noninflammatory disorder of ovary, fallopian tube and broad ligament, unspecified
6331	N84 Polyp of female genital tract
6332	N840 Polyp of corpus uteri
6333	N841 Polyp of cervix uteri
6334	N842 Polyp of vagina
6335	N843 Polyp of vulva
6336	N848 Polyp of other parts of female genital tract
6337	N849 Polyp of female genital tract, unspecified
6338	N85 Other noninflammatory disorders of uterus, except cervix
6339	N850 Endometrial glandular hyperplasia
6340	N851 Endometrial adenomatous hyperplasia
6341	N852 Hypertrophy of uterus
6342	N853 Subinvolution of uterus
6343	N854 Malposition of uterus
6344	N855 Inversion of uterus
6345	N856 Intrauterine synechiae
6346	N857 Haematometra
6347	N858 Other specified noninflammatory disorders of uterus
6348	N859 Noninflammatory disorder of uterus, unspecified
6349	N86 Erosion and ectropion of cervix uteri
6350	N87 Dysplasia of cervix uteri
6351	N870 Mild cervical dysplasia
6352	N871 Moderate cervical dysplasia
6353	N872 Severe cervical dysplasia, not elsewhere classified
6354	N879 Dysplasia of cervix uteri, unspecified
6355	N88 Other noninflammatory disorders of cervix uteri
6356	N880 Leukoplakia of cervix uteri
6357	N882 Stricture and stenosis of cervix uteri
6358	N883 Incompetence of cervix uteri
6359	N884 Hypertrophic elongation of cervix uteri
6360	N888 Other specified noninflammatory disorders of cervix uteri
6361	N889 Noninflammatory disorder of cervix uteri, unspecified
6362	N89 Other noninflammatory disorders of vagina
6363	N890 Mild vaginal dysplasia
6364	N891 Moderate vaginal dysplasia
6365	N892 Severe vaginal dysplasia, not elsewhere classified
6366	N893 Dysplasia of vagina, unspecified
6367	N894 Leukoplakia of vagina
6368	N895 Stricture and atresia of vagina
6369	N896 Tight hymenal ring
6370	N897 Haematocolpos
6371	N898 Other specified noninflammatory disorders of vagina
6372	N899 Noninflammatory disorder of vagina, unspecified
6373	N90 Other noninflammatory disorders of vulva and perineum
6374	N900 Mild vulvar dysplasia
6375	N901 Moderate vulvar dysplasia
6376	N902 Severe vulvar dysplasia, not elsewhere classified
6377	N903 Dysplasia of vulva, unspecified
6378	N904 Leukoplakia of vulva
6379	N905 Atrophy of vulva
6380	N906 Hypertrophy of vulva
6381	N907 Vulvar cyst
6382	N908 Other specified noninflammatory disorders of vulva and perineum
6383	N909 Noninflammatory disorder of vulva and perineum, unspecified
6384	N91 Absent, scanty and rare menstruation
6385	N910 Primary amenorrhoea
6386	N911 Secondary amenorrhoea
6387	N912 Amenorrhoea, unspecified
6388	N913 Primary oligomenorrhoea
6389	N914 Secondary oligomenorrhoea
6390	N915 Oligomenorrhoea, unspecified
6391	N92 Excessive, frequent and irregular menstruation
6392	N920 Excessive and frequent menstruation with regular cycle
6393	N921 Excessive and frequent menstruation with irregular cycle
6394	N922 Excessive menstruation at puberty
6395	N923 Ovulation bleeding
6396	N924 Excessive bleeding in the premenopausal period
6397	N925 Other specified irregular menstruation
6398	N926 Irregular menstruation, unspecified
6399	N93 Other abnormal uterine and vaginal bleeding
6400	N930 Postcoital and contact bleeding
6401	N938 Other specified abnormal uterine and vaginal bleeding
6402	N939 Abnormal uterine and vaginal bleeding, unspecified
6403	N94 Pain and other conditions associated with female genital organs and menstrual cycle
6404	N940 Mittelschmerz
6405	N941 Dyspareunia
6406	N942 Vaginismus
6407	N943 Premenstrual tension syndrome
6408	N944 Primary dysmenorrhoea
6409	N945 Secondary dysmenorrhoea
6410	N946 Dysmenorrhoea, unspecified
6411	N948 Other specified conditions associated with female genital organs and menstrual cycle
6412	N949 Unspecified condition associated with female genital organs and menstrual cycle
6413	N95 Menopausal and other perimenopausal disorders
6414	N950 Postmenopausal bleeding
6415	N951 Menopausal and female climacteric states
6416	N952 Postmenopausal atrophic vaginitis
6417	N953 States associated with artificial menopause
6418	N958 Other specified menopausal and perimenopausal disorders
6419	N959 Menopausal and perimenopausal disorder, unspecified
6420	N96 Habitual aborter
6421	N97 Female infertility
6422	N970 Female infertility associated with anovulation
6423	N971 Female infertility of tubal origin
6424	N972 Female infertility of uterine origin
6425	N973 Female infertility of cervical origin
6426	N974 Female infertility associated with male factors
6427	N978 Female infertility of other origin
6428	N979 Female infertility, unspecified
6429	N98 Complications associated with artificial fertilization
6430	N980 Infection associated with artificial insemination
6431	N981 Hyperstimulation of ovaries
6432	N982 Complications of attempted introduction of fertilized ovum following in vitro fertilization
6433	N983 Complications of attempted introduction of embryo in embryo transfer
6434	N988 Other complications associated with artificial fertilization
6435	N989 Complication associated with artificial fertilization, unspecified
6436	N99 Postprocedural disorders of genitourinary system, not elsewhere classified
6437	N990 Postprocedural renal failure
6438	N991 Postprocedural urethral stricture
6439	N992 Postoperative adhesions of vagina
6440	N993 Prolapse of vaginal vault after hysterectomy
6441	N994 Postprocedural pelvic peritoneal adhesions
6442	N995 Malfunction of external stoma of urinary tract
6443	N998 Other postprocedural disorders of genitourinary system
6444	N999 Postprocedural disorder of genitourinary system, unspecified
6445	O00 Ectopic pregnancy
6446	O000 Abdominal pregnancy
6447	O001 Tubal pregnancy
6448	O002 Ovarian pregnancy
6449	O008 Other ectopic pregnancy
6450	O009 Ectopic pregnancy, unspecified
6451	O01 Hydatidiform mole
6452	O010 Classical hydatidiform mole
6453	O011 Incomplete and partial hydatidiform mole
6454	O019 Hydatidiform mole, unspecified
6455	O02 Other abnormal products of conception
6456	O020 Blighted ovum and nonhydatidiform mole
6457	O021 Missed abortion
6458	O028 Other specified abnormal products of conception
6459	O029 Abnormal product of conception, unspecified
6460	O03 Spontaneous abortion
6461	O030 Spontaneous abortion: Incomplete, complicated by genital tract and pelvic infection
6462	O031 Spontaneous abortion: Incomplete, complicated by delayed or excessive haemorrhage
6463	O032 Spontaneous abortion: Incomplete, complicated by embolism
6464	O033 Spontaneous abortion: Incomplete, with other and unspecified complications
6465	O034 Spontaneous abortion: Incomplete, without complication
6466	O035 Spontaneous abortion: Complete or unspecified, complicated by genital tract and pelvic infection
6467	O036 Spontaneous abortion: Complete or unspecified, complicated by delayed or excessive haemorrhage
6468	O037 Spontaneous abortion: Complete or unspecified, complicated by embolism
6469	O038 Spontaneous abortion: Complete or unspecified, with other and unspecified complications
6470	O039 Spontaneous abortion: Complete or unspecified, without complication
6471	O04 Medical abortion
6472	O040 Medical abortion: Incomplete, complicated by genital tract and pelvic infection
6473	O041 Medical abortion: Incomplete, complicated by delayed or excessive haemorrhage
6474	O042 Medical abortion: Incomplete, complicated by embolism
6475	O043 Medical abortion: Incomplete, with other and unspecified complications
6476	O044 Medical abortion: Incomplete, without complication
6477	O045 Medical abortion: Complete or unspecified, complicated by genital tract and pelvic infection
6478	O046 Medical abortion: Complete or unspecified, complicated by delayed or excessive haemorrhage
6479	O047 Medical abortion: Complete or unspecified, complicated by embolism
6480	O048 Medical abortion: Complete or unspecified, with other and unspecified complications
6481	O049 Medical abortion: Complete or unspecified, without complication
6482	O05 Other abortion
6483	O050 Other abortion: Incomplete, complicated by genital tract and pelvic infection
6484	O051 Other abortion: Incomplete, complicated by delayed or excessive haemorrhage
6485	O052 Other abortion: Incomplete, complicated by embolism
6486	O053 Other abortion: Incomplete, with other and unspecified complications
6487	O054 Other abortion: Incomplete, without complication
6488	O055 Other abortion: Complete or unspecified, complicated by genital tract and pelvic infection
6489	O056 Other abortion: Complete or unspecified, complicated by delayed or excessive haemorrhage
6490	O057 Other abortion: Complete or unspecified, complicated by embolism
6491	O058 Other abortion: Complete or unspecified, with other and unspecified complications
6492	O059 Other abortion: Complete or unspecified, without complication
6493	O06 Unspecified abortion
6494	O060 Unspecified abortion: Incomplete, complicated by genital tract and pelvic infection
6495	O061 Unspecified abortion: Incomplete, complicated by delayed or excessive haemorrhage
6496	O062 Unspecified abortion: Incomplete, complicated by embolism
6497	O063 Unspecified abortion: Incomplete, with other and unspecified complications
6498	O064 Unspecified abortion: Incomplete, without complication
6499	O065 Unspecified abortion: Complete or unspecified, complicated by genital tract and pelvic infection
6500	O066 Unspecified abortion: Complete or unspecified, complicated by delayed or excessive haemorrhage
6501	O067 Unspecified abortion: Complete or unspecified, complicated by embolism
6502	O068 Unspecified abortion: Complete or unspecified, with other and unspecified complications
6503	O069 Unspecified abortion: Complete or unspecified, without complication
6504	O07 Failed attempted abortion
6505	O070 Failed medical abortion, complicated by genital tract and pelvic infection
6506	O071 Failed medical abortion, complicated by delayed or excessive haemorrhage
6507	O072 Failed medical abortion, complicated by embolism
6508	O073 Failed medical abortion, with other and unspecified complications
6509	O074 Failed medical abortion, without complication
6510	O075 Other and unspecified failed attempted abortion, complicated by genital tract and pelvic infection
6511	O076 Other and unspecified failed attempted abortion, complicated by delayed or excessive haemorrhage
6512	O077 Other and unspecified failed attempted abortion, complicated by embolism
6513	O078 Other and unspecified failed attempted abortion, with other and unspecified complications
6514	O079 Other and unspecified failed attempted abortion, without complication
6515	O08 Complications following abortion and ectopic and molar pregnancy
6516	O080 Genital tract and pelvic infection following abortion and ectopic and molar pregnancy
6517	O081 Delayed or excessive haemorrhage following abortion and ectopic and molar pregnancy
6518	O082 Embolism following abortion and ectopic and molar pregnancy
6519	O083 Shock following abortion and ectopic and molar pregnancy
6520	O084 Renal failure following abortion and ectopic and molar pregnancy
6521	O085 Metabolic disorders following abortion and ectopic and molar pregnancy
6522	O086 Damage to pelvic organs and tissues following abortion and ectopic and molar pregnancy
6523	O087 Other venous complications following abortion and ectopic and molar pregnancy
6524	O088 Other complications following abortion and ectopic and molar pregnancy
6525	O089 Complication following abortion and ectopic and molar pregnancy, unspecified
6526	O10 Pre-existing hypertension complicating pregnancy, childbirth and the puerperium
6527	O100 Pre-existing essential hypertension complicating pregnancy, childbirth and the puerperium
6528	O101 Pre-existing hypertensive heart disease complicating pregnancy, childbirth and the puerperium
6529	O102 Pre-existing hypertensive renal disease complicating pregnancy, childbirth and the puerperium
6530	O103 Pre-existing hypertensive heart and renal disease complicating pregnancy, childbirth and the puerperium
6531	O104 Pre-existing secondary hypertension complicating pregnancy, childbirth and the puerperium
6532	O109 Unspecified pre-existing hypertension complicating pregnancy, childbirth and the puerperium
6533	O11 Pre-existing hypertensive disorder with superimposed proteinuria
6534	O12 Gestational [pregnancy-induced] oedema and proteinuria without hypertension
6535	O120 Gestational oedema
6536	O121 Gestational proteinuria
6537	O122 Gestational oedema with proteinuria
6538	O13 Gestational [pregnancy-induced] hypertension without significant proteinuria
6539	O14 Gestational [pregnancy-induced] hypertension with significant proteinuria
6540	O140 Moderate pre-eclampsia
6541	O141 Severe pre-eclampsia
6542	O142 HELLP syndrome
6543	O149 Pre-eclampsia, unspecified
6544	O15 Eclampsia
6545	O150 Eclampsia in pregnancy
6546	O151 Eclampsia in labour
6547	O152 Eclampsia in the puerperium
6548	O159 Eclampsia, unspecified as to time period
6549	O16 Unspecified maternal hypertension
6550	O20 Haemorrhage in early pregnancy
6551	O200 Threatened abortion
6552	O208 Other haemorrhage in early pregnancy
6553	O209 Haemorrhage in early pregnancy, unspecified
6554	O21 Excessive vomiting in pregnancy
6555	O210 Mild hyperemesis gravidarum
6556	O211 Hyperemesis gravidarum with metabolic disturbance
6557	O212 Late vomiting of pregnancy
6558	O218 Other vomiting complicating pregnancy
6559	O219 Vomiting of pregnancy, unspecified
6560	O22 Venous complications in pregnancy
6561	O220 Varicose veins of lower extremity in pregnancy
6562	O221 Genital varices in pregnancy
6563	O222 Superficial thrombophlebitis in pregnancy
6564	O223 Deep phlebothrombosis in pregnancy
6565	O224 Haemorrhoids in pregnancy
6566	O225 Cerebral venous thrombosis in pregnancy
6567	O228 Other venous complications in pregnancy
6568	O229 Venous complication in pregnancy, unspecified
6569	O23 Infections of genitourinary tract in pregnancy
6570	O230 Infections of kidney in pregnancy
6571	O231 Infections of bladder in pregnancy
6572	O232 Infections of urethra in pregnancy
6573	O233 Infections of other parts of urinary tract in pregnancy
6574	O234 Unspecified infection of urinary tract in pregnancy
6575	O235 Infections of the genital tract in pregnancy
6576	O239 Other and unspecified genitourinary tract infection in pregnancy
6577	O24 Diabetes mellitus in pregnancy
6578	O240 Diabetes mellitus in pregnancy: Pre-existing diabetes mellitus, insulin-dependent
6579	O241 Diabetes mellitus in pregnancy: Pre-existing diabetes mellitus, non-insulin-dependent
6580	O242 Diabetes mellitus in pregnancy: Pre-existing malnutrition-related diabetes mellitus
6581	O243 Diabetes mellitus in pregnancy: Pre-existing diabetes mellitus, unspecified
6582	O244 Diabetes mellitus arising in pregnancy
6583	O249 Diabetes mellitus in pregnancy, unspecified
6584	O25 Malnutrition in pregnancy
6585	O26 Maternal care for other conditions predominantly related to pregnancy
6586	O260 Excessive weight gain in pregnancy
6587	O261 Low weight gain in pregnancy
6588	O262 Pregnancy care of habitual aborter
6589	O263 Retained intrauterine contraceptive device in pregnancy
6590	O264 Herpes gestationis
6591	O265 Maternal hypotension syndrome
6592	O266 Liver disorders in pregnancy, childbirth and the puerperium
6593	O267 Subluxation of symphysis (pubis) in pregnancy, childbirth and the puerperium
6594	O268 Other specified pregnancy-related conditions
6595	O269 Pregnancy-related condition, unspecified
6596	O28 Abnormal findings on antenatal screening of mother
6597	O280 Abnormal haematological finding on antenatal screening of mother
6598	O281 Abnormal biochemical finding on antenatal screening of mother
6599	O282 Abnormal cytological finding on antenatal screening of mother
6600	O283 Abnormal ultrasonic finding on antenatal screening of mother
6601	O284 Abnormal radiological finding on antenatal screening of mother
6602	O285 Abnormal chromosomal and genetic finding on antenatal screening of mother
6603	O288 Other abnormal findings on antenatal screening of mother
6604	O289 Abnormal finding on antenatal screening of mother, unspecified
6605	O29 Complications of anaesthesia during pregnancy
6606	O290 Pulmonary complications of anaesthesia during pregnancy
6607	O291 Cardiac complications of anaesthesia during pregnancy
6608	O292 Central nervous system complications of anaesthesia during pregnancy
6609	O293 Toxic reaction to local anaesthesia during pregnancy
6610	O294 Spinal and epidural anaesthesia-induced headache during pregnancy
6611	O295 Other complications of spinal and epidural anaesthesia during pregnancy
6612	O296 Failed or difficult intubation during pregnancy
6613	O298 Other complications of anaesthesia during pregnancy
6614	O299 Complication of anaesthesia during pregnancy, unspecified
6615	O30 Multiple gestation
6616	O300 Twin pregnancy
6617	O301 Triplet pregnancy
6618	O302 Quadruplet pregnancy
6619	O308 Other multiple gestation
6620	O309 Multiple gestation, unspecified
6621	O31 Complications specific to multiple gestation
6622	O310 Papyraceous fetus
6623	O311 Continuing pregnancy after abortion of one fetus or more
6624	O312 Continuing pregnancy after intrauterine death of one fetus or more
6625	O318 Other complications specific to multiple gestation
6626	O32 Maternal care for known or suspected malpresentation of fetus
6627	O320 Maternal care for unstable lie
6628	O321 Maternal care for breech presentation
6629	O322 Maternal care for transverse and oblique lie
6630	O323 Maternal care for face, brow and chin presentation
6631	O324 Maternal care for high head at term
6632	O325 Maternal care for multiple gestation with malpresentation of one fetus or more
6633	O326 Maternal care for compound presentation
6634	O328 Maternal care for other malpresentation of fetus
6635	O329 Maternal care for malpresentation of fetus, unspecified
6636	O33 Maternal care for known or suspected disproportion
6637	O330 Maternal care for disproportion due to deformity of maternal pelvic bones
6638	O331 Maternal care for disproportion due to generally contracted pelvis
6639	O332 Maternal care for disproportion due to inlet contraction of pelvis
6640	O333 Maternal care for disproportion due to outlet contraction of pelvis
6641	O334 Maternal care for disproportion of mixed maternal and fetal origin
6642	O335 Maternal care for disproportion due to unusually large fetus
6643	O336 Maternal care for disproportion due to hydrocephalic fetus
6644	O337 Maternal care for disproportion due to other fetal deformities
6645	O338 Maternal care for disproportion of other origin
6646	O339 Maternal care for disproportion, unspecified
6647	O34 Maternal care for known or suspected abnormality of pelvic organs
6648	O340 Maternal care for congenital malformation of uterus
6649	O341 Maternal care for tumour of corpus uteri
6650	O342 Maternal care due to uterine scar from previous surgery
6651	O343 Maternal care for cervical incompetence
6652	O344 Maternal care for other abnormalities of cervix
6653	O345 Maternal care for other abnormalities of gravid uterus
6654	O346 Maternal care for abnormality of vagina
6655	O347 Maternal care for abnormality of vulva and perineum
6656	O348 Maternal care for other abnormalities of pelvic organs
6657	O349 Maternal care for abnormality of pelvic organ, unspecified
6658	O35 Maternal care for known or suspected fetal abnormality and damage
6659	O350 Maternal care for (suspected) central nervous system malformation in fetus
6660	O351 Maternal care for (suspected) chromosomal abnormality in fetus
6661	O352 Maternal care for (suspected) hereditary disease in fetus
6662	O353 Maternal care for (suspected) damage to fetus from viral disease in mother
6663	O354 Maternal care for (suspected) damage to fetus from alcohol
6664	O355 Maternal care for (suspected) damage to fetus by drugs
6665	O356 Maternal care for (suspected) damage to fetus by radiation
6666	O357 Maternal care for (suspected) damage to fetus by other medical procedures
6667	O358 Maternal care for other (suspected) fetal abnormality and damage
6668	O359 Maternal care for (suspected) fetal abnormality and damage, unspecified
6669	O36 Maternal care for other known or suspected fetal problems
6670	O360 Maternal care for rhesus isoimmunization
6671	O361 Maternal care for other isoimmunization
6672	O362 Maternal care for hydrops fetalis
6673	O363 Maternal care for signs of fetal hypoxia
6674	O364 Maternal care for intrauterine death
6675	O365 Maternal care for poor fetal growth
6676	O366 Maternal care for excessive fetal growth
6677	O367 Maternal care for viable fetus in abdominal pregnancy
6678	O368 Maternal care for other specified fetal problems
6679	O369 Maternal care for fetal problem, unspecified
6680	O40 Polyhydramnios
6681	O41 Other disorders of amniotic fluid and membranes
6682	O410 Oligohydramnios
6683	O411 Infection of amniotic sac and membranes
6684	O418 Other specified disorders of amniotic fluid and membranes
6685	P151 Birth injury to spleen
6686	O419 Disorder of amniotic fluid and membranes, unspecified
6687	O42 Premature rupture of membranes
6688	O420 Premature rupture of membranes, onset of labour within 24 hours
6689	O421 Premature rupture of membranes, onset of labour after 24 hours
6690	O422 Premature rupture of membranes, labour delayed by therapy
6691	O429 Premature rupture of membranes, unspecified
6692	O43 Placental disorders
6693	O430 Placental transfusion syndromes
6694	O431 Malformation of placenta
6695	O432 Morbidly adherent placenta
6696	O438 Other placental disorders
6697	O439 Placental disorder, unspecified
6698	O44 Placenta praevia
6699	O440 Placenta praevia specified as without haemorrhage
6700	O441 Placenta praevia with haemorrhage
6701	O45 Premature separation of placenta [abruptio placentae]
6702	O450 Premature separation of placenta with coagulation defect
6703	O458 Other premature separation of placenta
6704	O459 Premature separation of placenta, unspecified
6705	O46 Antepartum haemorrhage, not elsewhere classified
6706	O460 Antepartum haemorrhage with coagulation defect
6707	O468 Other antepartum haemorrhage
6708	O469 Antepartum haemorrhage, unspecified
6709	O47 False labour
6710	O470 False labour before 37 completed weeks of gestation
6711	O471 False labour at or after 37 completed weeks of gestation
6712	O479 False labour, unspecified
6713	O48 Prolonged pregnancy
6714	O60 Preterm labour and delivery
6715	O600 Preterm labour without delivery
6716	O601 Preterm spontaneous labour with preterm delivery
6717	O602 Preterm spontaneous labour with term delivery
6718	O603 Preterm delivery without spontaneous labour
6719	O61 Failed induction of labour
6720	O610 Failed medical induction of labour
6721	O611 Failed instrumental induction of labour
6722	O618 Other failed induction of labour
6723	O619 Failed induction of labour, unspecified
6724	O62 Abnormalities of forces of labour
6725	O620 Primary inadequate contractions
6726	O621 Secondary uterine inertia
6727	O622 Other uterine inertia
6728	O623 Precipitate labour
6729	O624 Hypertonic, incoordinate, and prolonged uterine contractions
6730	O628 Other abnormalities of forces of labour
6731	O629 Abnormality of forces of labour, unspecified
6732	O63 Long labour
6733	O630 Prolonged first stage (of labour)
6734	O631 Prolonged second stage (of labour)
6735	O632 Delayed delivery of second twin, triplet, etc.
6736	O639 Long labour, unspecified
6737	O64 Obstructed labour due to malposition and malpresentation of fetus
6738	O640 Obstructed labour due to incomplete rotation of fetal head
6739	O641 Obstructed labour due to breech presentation
6740	O642 Obstructed labour due to face presentation
6741	O643 Obstructed labour due to brow presentation
6742	O644 Obstructed labour due to shoulder presentation
6743	O645 Obstructed labour due to compound presentation
6744	O648 Obstructed labour due to other malposition and malpresentation
6745	O649 Obstructed labour due to malposition and malpresentation, unspecified
6746	O65 Obstructed labour due to maternal pelvic abnormality
6747	O650 Obstructed labour due to deformed pelvis
6748	O651 Obstructed labour due to generally contracted pelvis
6749	O652 Obstructed labour due to pelvic inlet contraction
6750	O653 Obstructed labour due to pelvic outlet and mid-cavity contraction
6751	O654 Obstructed labour due to fetopelvic disproportion, unspecified
6752	O655 Obstructed labour due to abnormality of maternal pelvic organs
6753	O658 Obstructed labour due to other maternal pelvic abnormalities
6754	O659 Obstructed labour due to maternal pelvic abnormality, unspecified
6755	O66 Other obstructed labour
6756	O660 Obstructed labour due to shoulder dystocia
6757	O661 Obstructed labour due to locked twins
6758	O662 Obstructed labour due to unusually large fetus
6759	O663 Obstructed labour due to other abnormalities of fetus
6760	O664 Failed trial of labour, unspecified
6761	O665 Failed application of vacuum extractor and forceps, unspecified
6762	O668 Other specified obstructed labour
6763	O669 Obstructed labour, unspecified
6764	O67 Labour and delivery complicated by intrapartum haemorrhage, not elsewhere classified
6765	O670 Intrapartum haemorrhage with coagulation defect
6766	O678 Other intrapartum haemorrhage
6767	O679 Intrapartum haemorrhage, unspecified
6768	O68 Labour and delivery complicated by fetal stress [distress]
6769	O680 Labour and delivery complicated by fetal heart rate anomaly
6770	O681 Labour and delivery complicated by meconium in amniotic fluid
6771	O682 Labour and delivery complicated by fetal heart rate anomaly with meconium in amniotic fluid
6772	O683 Labour and delivery complicated by biochemical evidence of fetal stress
6773	O688 Labour and delivery complicated by other evidence of fetal stress
6774	O689 Labour and delivery complicated by fetal stress, unspecified
6775	O69 Labour and delivery complicated by umbilical cord complications
6776	O690 Labour and delivery complicated by prolapse of cord
6777	O691 Labour and delivery complicated by cord around neck, with compression
6778	O692 Labour and delivery complicated by other cord entanglement, with compression
6779	O693 Labour and delivery complicated by short cord
6780	O694 Labour and delivery complicated by vasa praevia
6781	O695 Labour and delivery complicated by vascular lesion of cord
6782	O698 Labour and delivery complicated by other cord complications
6783	O699 Labour and delivery complicated by cord complication, unspecified
6784	O70 Perineal laceration during delivery
6785	O700 First degree perineal laceration during delivery
6786	O701 Second degree perineal laceration during delivery
6787	O702 Third degree perineal laceration during delivery
6788	O703 Fourth degree perineal laceration during delivery
6789	O709 Perineal laceration during delivery, unspecified
6790	O71 Other obstetric trauma
6791	O710 Rupture of uterus before onset of labour
6792	O711 Rupture of uterus during labour
6793	O712 Postpartum inversion of uterus
6794	O713 Obstetric laceration of cervix
6795	O714 Obstetric high vaginal laceration alone
6796	O715 Other obstetric injury to pelvic organs
6797	O716 Obstetric damage to pelvic joints and ligaments
6798	O717 Obstetric haematoma of pelvis
6799	O718 Other specified obstetric trauma
6800	O719 Obstetric trauma, unspecified
6801	O72 Postpartum haemorrhage
6802	O720 Third-stage haemorrhage
6803	O721 Other immediate postpartum haemorrhage
6804	O722 Delayed and secondary postpartum haemorrhage
6805	O723 Postpartum coagulation defects
6806	O73 Retained placenta and membranes, without haemorrhage
6807	O730 Retained placenta without haemorrhage
6808	O731 Retained portions of placenta and membranes, without haemorrhage
6809	O74 Complications of anaesthesia during labour and delivery
6810	O740 Aspiration pneumonitis due to anaesthesia during labour and delivery
6811	O741 Other pulmonary complications of anaesthesia during labour and delivery
6812	O742 Cardiac complications of anaesthesia during labour and delivery
6813	Q064 Hydromyelia
6814	O743 Central nervous system complications of anaesthesia during labour and delivery
6815	O744 Toxic reaction to local anaesthesia during labour and delivery
6816	O745 Spinal and epidural anaesthesia-induced headache during labour and delivery
6817	O746 Other complications of spinal and epidural anaesthesia during labour and delivery
6818	O747 Failed or difficult intubation during labour and delivery
6819	O748 Other complications of anaesthesia during labour and delivery
6820	O749 Complication of anaesthesia during labour and delivery, unspecified
6821	O75 Other complications of labour and delivery, not elsewhere classified
6822	O750 Maternal distress during labour and delivery
6823	O751 Shock during or following labour and delivery
6824	O752 Pyrexia during labour, not elsewhere classified
6825	O753 Other infection during labour
6826	O754 Other complications of obstetric surgery and procedures
6827	O755 Delayed delivery after artificial rupture of membranes
6828	O756 Delayed delivery after spontaneous or unspecified rupture of membranes
6829	O757 Vaginal delivery following previous caesarean section
6830	O758 Other specified complications of labour and delivery
6831	O759 Complication of labour and delivery, unspecified
6832	O80 Single spontaneous delivery
6833	O800 Spontaneous vertex delivery
6834	O801 Spontaneous breech delivery
6835	O808 Other single spontaneous delivery
6836	O809 Single spontaneous delivery, unspecified
6837	O81 Single delivery by forceps and vacuum extractor
6838	O810 Low forceps delivery
6839	O811 Mid-cavity forceps delivery
6840	O812 Mid-cavity forceps with rotation
6841	O813 Other and unspecified forceps delivery
6842	O814 Vacuum extractor delivery
6843	O815 Delivery by combination of forceps and vacuum extractor
6844	O82 Single delivery by caesarean section
6845	O820 Delivery by elective caesarean section
6846	O821 Delivery by emergency caesarean section
6847	O822 Delivery by caesarean hysterectomy
6848	O828 Other single delivery by caesarean section
6849	O829 Delivery by caesarean section, unspecified
6850	O83 Other assisted single delivery
6851	O830 Breech extraction
6852	O831 Other assisted breech delivery
6853	O832 Other manipulation-assisted delivery
6854	O833 Delivery of viable fetus in abdominal pregnancy
6855	O834 Destructive operation for delivery
6856	O838 Other specified assisted single delivery
6857	O839 Assisted single delivery, unspecified
6858	O84 Multiple delivery
6859	O840 Multiple delivery, all spontaneous
6860	O841 Multiple delivery, all by forceps and vacuum extractor
6861	O842 Multiple delivery, all by caesarean section
6862	O848 Other multiple delivery
6863	O849 Multiple delivery, unspecified
6864	O85 Puerperal sepsis
6865	O86 Other puerperal infections
6866	O860 Infection of obstetric surgical wound
6867	O861 Other infection of genital tract following delivery
6868	O862 Urinary tract infection following delivery
6869	O863 Other genitourinary tract infections following delivery
6870	O864 Pyrexia of unknown origin following delivery
6871	O868 Other specified puerperal infections
6872	O87 Venous complications in the puerperium
6873	O870 Superficial thrombophlebitis in the puerperium
6874	O871 Deep phlebothrombosis in the puerperium
6875	O872 Haemorrhoids in the puerperium
6876	O873 Cerebral venous thrombosis in the puerperium
6877	O878 Other venous complications in the puerperium
6878	O879 Venous complication in the puerperium, unspecified
6879	O88 Obstetric embolism
6880	O880 Obstetric air embolism
6881	O881 Amniotic fluid embolism
6882	O882 Obstetric blood-clot embolism
6883	O883 Obstetric pyaemic and septic embolism
6884	O888 Other obstetric embolism
6885	O89 Complications of anaesthesia during the puerperium
6886	O890 Pulmonary complications of anaesthesia during the puerperium
6887	O891 Cardiac complications of anaesthesia during the puerperium
6888	O892 Central nervous system complications of anaesthesia during the puerperium
6889	O893 Toxic reaction to local anaesthesia during the puerperium
6890	O894 Spinal and epidural anaesthesia-induced headache during the puerperium
6891	O895 Other complications of spinal and epidural anaesthesia during the puerperium
6892	O896 Failed or difficult intubation during the puerperium
6893	O898 Other complications of anaesthesia during the puerperium
6894	O899 Complication of anaesthesia during the puerperium, unspecified
6895	O90 Complications of the puerperium, not elsewhere classified
6896	O900 Disruption of caesarean section wound
6897	O901 Disruption of perineal obstetric wound
6898	O902 Haematoma of obstetric wound
6899	O903 Cardiomyopathy in the puerperium
6900	O904 Postpartum acute renal failure
6901	O905 Postpartum thyroiditis
6902	O908 Other complications of the puerperium, not elsewhere classified
6903	O909 Complication of the puerperium, unspecified
6904	O91 Infections of breast associated with childbirth
6905	O910 Infection of nipple associated with childbirth
6906	O911 Abscess of breast associated with childbirth
6907	O912 Nonpurulent mastitis associated with childbirth
6908	O92 Other disorders of breast and lactation associated with childbirth
6909	O920 Retracted nipple associated with childbirth
6910	Q530 Ectopic testis
6911	O921 Cracked nipple associated with childbirth
6912	O922 Other and unspecified disorders of breast associated with childbirth
6913	O923 Agalactia
6914	O924 Hypogalactia
6915	O925 Suppressed lactation
6916	O926 Galactorrhoea
6917	O927 Other and unspecified disorders of lactation
6918	O94 Sequelae of complication of pregnancy, childbirth and the puerperium
6919	O95 Obstetric death of unspecified cause
6920	O96 Death from any obstetric cause occurring more than 42 days but less than one year after delivery
6921	O960 Death from direct obstetric cause
6922	O961 Death from indirect obstetric cause
6923	O969 Death from unspecified obstetric cause
6924	O97 Death from sequelae of obstetric causes
6925	O970 Death from sequelae of direct obstetric cause
6926	O971 Death from sequelae of indirect obstetric cause
6927	O979 Death from sequelae of obstetric cause, unspecified
6928	O98 Maternal infectious and parasitic diseases classifiable elsewhere but complicating pregnancy, childbirth and the puerperium
6929	O980 Tuberculosis complicating pregnancy, childbirth and the puerperium
6930	O981 Syphilis complicating pregnancy, childbirth and the puerperium
6931	O982 Gonorrhoea complicating pregnancy, childbirth and the puerperium
6932	O983 Other infections with a predominantly sexual mode of transmission complicating pregnancy, childbirth and the puerperium
6933	O984 Viral hepatitis complicating pregnancy, childbirth and the puerperium
6934	O985 Other viral diseases complicating pregnancy, childbirth and the puerperium
6935	O986 Protozoal diseases complicating pregnancy, childbirth and the puerperium
6936	O987 Human immunodeficiency [HIV] disease complicating pregnancy, childbirth and the puerperium
6937	O988 Other maternal infectious and parasitic diseases complicating pregnancy, childbirth and the puerperium
6938	O989 Unspecified maternal infectious or parasitic disease complicating pregnancy, childbirth and the puerperium
6939	O99 Other maternal diseases classifiable elsewhere but complicating pregnancy, childbirth and the puerperium
6940	O990 Anaemia complicating pregnancy, childbirth and the puerperium
6941	O991 Other diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism complicating pregnancy, childbirth and the puerperium
6942	O992 Endocrine, nutritional and metabolic diseases complicating pregnancy, childbirth and the puerperium
6943	O993 Mental disorders and diseases of the nervous system complicating pregnancy, childbirth and the puerperium
6944	O994 Diseases of the circulatory system complicating pregnancy, childbirth and the puerperium
6945	O995 Diseases of the respiratory system complicating pregnancy, childbirth and the puerperium
6946	O996 Diseases of the digestive system complicating pregnancy, childbirth and the puerperium
6947	O997 Diseases of the skin and subcutaneous tissue complicating pregnancy, childbirth and the puerperium
6948	O998 Other specified diseases and conditions complicating pregnancy, childbirth and the puerperium
6949	P00 Fetus and newborn affected by maternal conditions that may be unrelated to present pregnancy
6950	P000 Fetus and newborn affected by maternal hypertensive disorders
6951	P001 Fetus and newborn affected by maternal renal and urinary tract diseases
6952	P002 Fetus and newborn affected by maternal infectious and parasitic diseases
6953	P003 Fetus and newborn affected by other maternal circulatory and respiratory diseases
6954	P004 Fetus and newborn affected by maternal nutritional disorders
6955	P005 Fetus and newborn affected by maternal injury
6956	P006 Fetus and newborn affected by surgical procedure on mother
6957	P007 Fetus and newborn affected by other medical procedures on mother, not elsewhere classified
6958	P008 Fetus and newborn affected by other maternal conditions
6959	P009 Fetus and newborn affected by unspecified maternal condition
6960	P01 Fetus and newborn affected by maternal complications of pregnancy
6961	P010 Fetus and newborn affected by incompetent cervix
6962	P011 Fetus and newborn affected by premature rupture of membranes
6963	P012 Fetus and newborn affected by oligohydramnios
6964	P013 Fetus and newborn affected by polyhydramnios
6965	P014 Fetus and newborn affected by ectopic pregnancy
6966	Q36 Cleft lip
6967	P015 Fetus and newborn affected by multiple pregnancy
6968	P016 Fetus and newborn affected by maternal death
6969	P017 Fetus and newborn affected by malpresentation before labour
6970	P018 Fetus and newborn affected by other maternal complications of pregnancy
6971	P019 Fetus and newborn affected by maternal complication of pregnancy, unspecified
6972	P02 Fetus and newborn affected by complications of placenta, cord and membranes
6973	P020 Fetus and newborn affected by placenta praevia
6974	P021 Fetus and newborn affected by other forms of placental separation and haemorrhage
6975	P022 Fetus and newborn affected by other and unspecified morphological and functional abnormalities of placenta
6976	P023 Fetus and newborn affected by placental transfusion syndromes
6977	P024 Fetus and newborn affected by prolapsed cord
6978	P025 Fetus and newborn affected by other compression of umbilical cord
6979	P026 Fetus and newborn affected by other and unspecified conditions of umbilical cord
6980	P027 Fetus and newborn affected by chorioamnionitis
6981	P028 Fetus and newborn affected by other abnormalities of membranes
6982	P029 Fetus and newborn affected by abnormality of membranes, unspecified
6983	P03 Fetus and newborn affected by other complications of labour and delivery
6984	P030 Fetus and newborn affected by breech delivery and extraction
6985	P031 Fetus and newborn affected by other malpresentation, malposition and disproportion during labour and delivery
6986	P032 Fetus and newborn affected by forceps delivery
6987	P033 Fetus and newborn affected by delivery by vacuum extractor [ventouse]
6988	P034 Fetus and newborn affected by caesarean delivery
6989	P035 Fetus and newborn affected by precipitate delivery
6990	P036 Fetus and newborn affected by abnormal uterine contractions
6991	P038 Fetus and newborn affected by other specified complications of labour and delivery
6992	P039 Fetus and newborn affected by complication of labour and delivery, unspecified
6993	P04 Fetus and newborn affected by noxious influences transmitted via placenta or breast milk
6994	P040 Fetus and newborn affected by maternal anaesthesia and analgesia in pregnancy, labour and delivery
6995	P041 Fetus and newborn affected by other maternal medication
6996	P042 Fetus and newborn affected by maternal use of tobacco
6997	P043 Fetus and newborn affected by maternal use of alcohol
6998	P044 Fetus and newborn affected by maternal use of drugs of addiction
6999	P045 Fetus and newborn affected by maternal use of nutritional chemical substances
7000	P046 Fetus and newborn affected by maternal exposure to environmental chemical substances
7001	P048 Fetus and newborn affected by other maternal noxious influences
7002	P049 Fetus and newborn affected by maternal noxious influence, unspecified
7003	P05 Slow fetal growth and fetal malnutrition
7004	P050 Light for gestational age
7005	P051 Small for gestational age
7006	P052 Fetal malnutrition without mention of light or small for gestational age
7007	P059 Slow fetal growth, unspecified
7008	P07 Disorders related to short gestation and low birth weight, not elsewhere classified
7009	P070 Extremely low birth weight
7010	P071 Other low birth weight
7011	P072 Extreme immaturity
7012	P073 Other preterm infants
7013	P08 Disorders related to long gestation and high birth weight
7014	P080 Exceptionally large baby
7015	P081 Other heavy for gestational age infants
7016	P082 Post-term infant, not heavy for gestational age
7017	P10 Intracranial laceration and haemorrhage due to birth injury
7018	P100 Subdural haemorrhage due to birth injury
7019	P101 Cerebral haemorrhage due to birth injury
7020	P102 Intraventricular haemorrhage due to birth injury
7021	P103 Subarachnoid haemorrhage due to birth injury
7022	P104 Tentorial tear due to birth injury
7023	P108 Other intracranial lacerations and haemorrhages due to birth injury
7024	P109 Unspecified intracranial laceration and haemorrhage due to birth injury
7025	P11 Other birth injuries to central nervous system
7026	P110 Cerebral oedema due to birth injury
7027	P111 Other specified brain damage due to birth injury
7028	P112 Unspecified brain damage due to birth injury
7029	P113 Birth injury to facial nerve
7030	P114 Birth injury to other cranial nerves
7031	P115 Birth injury to spine and spinal cord
7032	P119 Birth injury to central nervous system, unspecified
7033	P12 Birth injury to scalp
7034	P120 Cephalhaematoma due to birth injury
7035	P121 Chignon due to birth injury
7036	P122 Epicranial subaponeurotic haemorrhage due to birth injury
7037	P123 Bruising of scalp due to birth injury
7038	P124 Monitoring injury of scalp of newborn
7039	P128 Other birth injuries to scalp
7040	P129 Birth injury to scalp, unspecified
7041	P13 Birth injury to skeleton
7042	P130 Fracture of skull due to birth injury
7043	P131 Other birth injuries to skull
7044	P132 Birth injury to femur
7045	P133 Birth injury to other long bones
7046	P134 Fracture of clavicle due to birth injury
7047	P138 Birth injuries to other parts of skeleton
7048	P139 Birth injury to skeleton, unspecified
7049	P14 Birth injury to peripheral nervous system
7050	P140 Erb paralysis due to birth injury
7051	P141 Klumpke paralysis due to birth injury
7052	P142 Phrenic nerve paralysis due to birth injury
7053	P143 Other brachial plexus birth injuries
7054	P148 Birth injuries to other parts of peripheral nervous system
7055	P149 Birth injury to peripheral nervous system, unspecified
7056	P15 Other birth injuries
7057	P150 Birth injury to liver
7058	P152 Sternomastoid injury due to birth injury
7059	P153 Birth injury to eye
7060	P154 Birth injury to face
7061	P155 Birth injury to external genitalia
7062	P156 Subcutaneous fat necrosis due to birth injury
7063	P158 Other specified birth injuries
7064	P159 Birth injury, unspecified
7065	P20 Intrauterine hypoxia
7066	P200 Intrauterine hypoxia first noted before onset of labour
7067	P201 Intrauterine hypoxia first noted during labour and delivery
7068	P209 Intrauterine hypoxia, unspecified
7069	P21 Birth asphyxia
7070	P210 Severe birth asphyxia
7071	P211 Mild and moderate birth asphyxia
7072	P219 Birth asphyxia, unspecified
7073	P22 Respiratory distress of newborn
7074	P220 Respiratory distress syndrome of newborn
7075	P221 Transient tachypnoea of newborn
7076	P228 Other respiratory distress of newborn
7077	P229 Respiratory distress of newborn, unspecified
7078	P23 Congenital pneumonia
7079	P230 Congenital pneumonia due to viral agent
7080	P231 Congenital pneumonia due to Chlamydia
7081	P232 Congenital pneumonia due to staphylococcus
7082	P233 Congenital pneumonia due to streptococcus, group B
7083	P234 Congenital pneumonia due to Escherichia coli
7084	P235 Congenital pneumonia due to Pseudomonas
7085	P236 Congenital pneumonia due to other bacterial agents
7086	P238 Congenital pneumonia due to other organisms
7087	P239 Congenital pneumonia, unspecified
7088	P24 Neonatal aspiration syndromes
7089	P240 Neonatal aspiration of meconium
7090	P241 Neonatal aspiration of amniotic fluid and mucus
7091	P242 Neonatal aspiration of blood
7092	P243 Neonatal aspiration of milk and regurgitated food
7093	P248 Other neonatal aspiration syndromes
7094	P249 Neonatal aspiration syndrome, unspecified
7095	P25 Interstitial emphysema and related conditions originating in the perinatal period
7096	P250 Interstitial emphysema originating in the perinatal period
7097	P251 Pneumothorax originating in the perinatal period
7098	P252 Pneumomediastinum originating in the perinatal period
7099	P253 Pneumopericardium originating in the perinatal period
7100	P258 Other conditions related to interstitial emphysema originating in the perinatal period
7101	P26 Pulmonary haemorrhage originating in the perinatal period
7102	P260 Tracheobronchial haemorrhage originating in the perinatal period
7103	P261 Massive pulmonary haemorrhage originating in the perinatal period
7104	P268 Other pulmonary haemorrhages originating in the perinatal period
7105	P269 Unspecified pulmonary haemorrhage originating in the perinatal period
7106	P27 Chronic respiratory disease originating in the perinatal period
7107	P270 Wilson-Mikity syndrome
7108	P271 Bronchopulmonary dysplasia originating in the perinatal period
7109	P278 Other chronic respiratory diseases originating in the perinatal period
7110	P279 Unspecified chronic respiratory disease originating in the perinatal period
7111	P28 Other respiratory conditions originating in the perinatal period
7112	P280 Primary atelectasis of newborn
7113	P281 Other and unspecified atelectasis of newborn
7114	P282 Cyanotic attacks of newborn
7115	P283 Primary sleep apnoea of newborn
7116	P284 Other apnoea of newborn
7117	P285 Respiratory failure of newborn
7118	P288 Other specified respiratory conditions of newborn
7119	P289 Respiratory condition of newborn, unspecified
7120	P29 Cardiovascular disorders originating in the perinatal period
7121	P290 Neonatal cardiac failure
7122	P291 Neonatal cardiac dysrhythmia
7123	P292 Neonatal hypertension
7124	P293 Persistent fetal circulation
7125	P294 Transient myocardial ischaemia of newborn
7126	P298 Other cardiovascular disorders originating in the perinatal period
7127	P299 Cardiovascular disorder originating in the perinatal period, unspecified
7128	P35 Congenital viral diseases
7129	P350 Congenital rubella syndrome
7130	P351 Congenital cytomegalovirus infection
7131	P352 Congenital herpesviral [herpes simplex] infection
7132	P353 Congenital viral hepatitis
7133	P358 Other congenital viral diseases
7134	P359 Congenital viral disease, unspecified
7135	P36 Bacterial sepsis of newborn
7136	P360 Sepsis of newborn due to streptococcus, group B
7137	P361 Sepsis of newborn due to other and unspecified streptococci
7138	P362 Sepsis of newborn due to Staphylococcus aureus
7139	P363 Sepsis of newborn due to other and unspecified staphylococci
7140	P364 Sepsis of newborn due to Escherichia coli
7141	P365 Sepsis of newborn due to anaerobes
7142	P368 Other bacterial sepsis of newborn
7143	P369 Bacterial sepsis of newborn, unspecified
7144	P37 Other congenital infectious and parasitic diseases
7145	P370 Congenital tuberculosis
7146	P371 Congenital toxoplasmosis
7147	P372 Neonatal (disseminated) listeriosis
7148	P373 Congenital falciparum malaria
7149	P374 Other congenital malaria
7150	P375 Neonatal candidiasis
7151	P378 Other specified congenital infectious and parasitic diseases
7152	P379 Congenital infectious and parasitic disease, unspecified
7153	P38 Omphalitis of newborn with or without mild haemorrhage
7154	P39 Other infections specific to the perinatal period
7155	P390 Neonatal infective mastitis
7156	P391 Neonatal conjunctivitis and dacryocystitis
7157	P392 Intra-amniotic infection of fetus, not elsewhere classified
7158	P393 Neonatal urinary tract infection
7159	P394 Neonatal skin infection
7160	P398 Other specified infections specific to the perinatal period
7161	P399 Infection specific to the perinatal period, unspecified
7162	P50 Fetal blood loss
7163	P500 Fetal blood loss from vasa praevia
7164	P501 Fetal blood loss from ruptured cord
7165	P502 Fetal blood loss from placenta
7166	P503 Haemorrhage into co-twin
7167	P504 Haemorrhage into maternal circulation
7168	P505 Fetal blood loss from cut end of co-twin's cord
7169	P508 Other fetal blood loss
7170	P509 Fetal blood loss, unspecified
7171	P51 Umbilical haemorrhage of newborn
7172	P510 Massive umbilical haemorrhage of newborn
7173	P518 Other umbilical haemorrhages of newborn
7174	P519 Umbilical haemorrhage of newborn, unspecified
7175	P52 Intracranial nontraumatic haemorrhage of fetus and newborn
7176	P520 Intraventricular (nontraumatic) haemorrhage, grade 1, of fetus and newborn
7177	P521 Intraventricular (nontraumatic) haemorrhage, grade 2, of fetus and newborn
7178	P522 Intraventricular (nontraumatic) haemorrhage, grade 3, of fetus and newborn
7179	P523 Unspecified intraventricular (nontraumatic) haemorrhage of fetus and newborn
7180	P524 Intracerebral (nontraumatic) haemorrhage of fetus and newborn
7181	P525 Subarachnoid (nontraumatic) haemorrhage of fetus and newborn
7182	P526 Cerebellar (nontraumatic) and posterior fossa haemorrhage of fetus and newborn
7183	P528 Other intracranial (nontraumatic) haemorrhages of fetus and newborn
7184	P529 Intracranial (nontraumatic) haemorrhage of fetus and newborn, unspecified
7185	P53 Haemorrhagic disease of fetus and newborn
7186	P54 Other neonatal haemorrhages
7187	P540 Neonatal haematemesis
7188	P541 Neonatal melaena
7189	P542 Neonatal rectal haemorrhage
7190	P543 Other neonatal gastrointestinal haemorrhage
7191	P544 Neonatal adrenal haemorrhage
7192	P545 Neonatal cutaneous haemorrhage
7193	P546 Neonatal vaginal haemorrhage
7194	P548 Other specified neonatal haemorrhages
7195	P549 Neonatal haemorrhage, unspecified
7196	P55 Haemolytic disease of fetus and newborn
7197	P550 Rh isoimmunization of fetus and newborn
7198	P551 ABO isoimmunization of fetus and newborn
7199	P558 Other haemolytic diseases of fetus and newborn
7200	P559 Haemolytic disease of fetus and newborn, unspecified
7201	P56 Hydrops fetalis due to haemolytic disease
7202	P560 Hydrops fetalis due to isoimmunization
7203	P569 Hydrops fetalis due to other and unspecified haemolytic disease
7204	P57 Kernicterus
7205	P570 Kernicterus due to isoimmunization
7206	P578 Other specified kernicterus
7207	P579 Kernicterus, unspecified
7208	P58 Neonatal jaundice due to other excessive haemolysis
7209	P580 Neonatal jaundice due to bruising
7210	P581 Neonatal jaundice due to bleeding
7211	P582 Neonatal jaundice due to infection
7212	P583 Neonatal jaundice due to polycythaemia
7213	P584 Neonatal jaundice due to drugs or toxins transmitted from mother or given to newborn
7214	P585 Neonatal jaundice due to swallowed maternal blood
7215	P588 Neonatal jaundice due to other specified excessive haemolysis
7216	P589 Neonatal jaundice due to excessive haemolysis, unspecified
7217	P59 Neonatal jaundice from other and unspecified causes
7218	P590 Neonatal jaundice associated with preterm delivery
7219	P591 Inspissated bile syndrome
7220	P592 Neonatal jaundice from other and unspecified hepatocellular damage
7221	P593 Neonatal jaundice from breast milk inhibitor
7222	P598 Neonatal jaundice from other specified causes
7223	P599 Neonatal jaundice, unspecified
7224	P60 Disseminated intravascular coagulation of fetus and newborn
7225	P61 Other perinatal haematological disorders
7226	P610 Transient neonatal thrombocytopenia
7227	P611 Polycythaemia neonatorum
7228	P612 Anaemia of prematurity
7229	P613 Congenital anaemia from fetal blood loss
7230	P614 Other congenital anaemias, not elsewhere classified
7231	P615 Transient neonatal neutropenia
7232	P616 Other transient neonatal disorders of coagulation
7233	P618 Other specified perinatal haematological disorders
7234	P619 Perinatal haematological disorder, unspecified
7235	P70 Transitory disorders of carbohydrate metabolism specific to fetus and newborn
7236	P700 Syndrome of infant of mother with gestational diabetes
7237	P701 Syndrome of infant of a diabetic mother
7238	P702 Neonatal diabetes mellitus
7239	P703 Iatrogenic neonatal hypoglycaemia
7240	P704 Other neonatal hypoglycaemia
7241	P708 Other transitory disorders of carbohydrate metabolism of fetus and newborn
7242	P709 Transitory disorder of carbohydrate metabolism of fetus and newborn, unspecified
7243	P71 Transitory neonatal disorders of calcium and magnesium metabolism
7244	P710 Cow milk hypocalcaemia in newborn
7245	P711 Other neonatal hypocalcaemia
7246	P712 Neonatal hypomagnesaemia
7247	P713 Neonatal tetany without calcium or magnesium deficiency
7248	P714 Transitory neonatal hypoparathyroidism
7249	P718 Other transitory neonatal disorders of calcium and magnesium metabolism
7250	P719 Transitory neonatal disorder of calcium and magnesium metabolism, unspecified
7251	P72 Other transitory neonatal endocrine disorders
7252	P720 Neonatal goitre, not elsewhere classified
7253	P721 Transitory neonatal hyperthyroidism
7254	P722 Other transitory neonatal disorders of thyroid function, not elsewhere classified
7255	Q360 Cleft lip, bilateral
7256	P728 Other specified transitory neonatal endocrine disorders
7257	P729 Transitory neonatal endocrine disorder, unspecified
7258	P74 Other transitory neonatal electrolyte and metabolic disturbances
7259	P740 Late metabolic acidosis of newborn
7260	P741 Dehydration of newborn
7261	P742 Disturbances of sodium balance of newborn
7262	P743 Disturbances of potassium balance of newborn
7263	P744 Other transitory electrolyte disturbances of newborn
7264	P745 Transitory tyrosinaemia of newborn
7265	P748 Other transitory metabolic disturbances of newborn
7266	P749 Transitory metabolic disturbance of newborn, unspecified
7267	P75 Meconium ileus in cystic fibrosis
7268	P76 Other intestinal obstruction of newborn
7269	P760 Meconium plug syndrome
7270	P761 Transitory ileus of newborn
7271	P762 Intestinal obstruction due to inspissated milk
7272	P768 Other specified intestinal obstruction of newborn
7273	P769 Intestinal obstruction of newborn, unspecified
7274	Q818 Other epidermolysis bullosa
7275	P77 Necrotizing enterocolitis of fetus and newborn
7276	P78 Other perinatal digestive system disorders
7277	P780 Perinatal intestinal perforation
7278	P781 Other neonatal peritonitis
7279	P782 Neonatal haematemesis and melaena due to swallowed maternal blood
7280	P783 Noninfective neonatal diarrhoea
7281	P788 Other specified perinatal digestive system disorders
7282	P789 Perinatal digestive system disorder, unspecified
7283	P80 Hypothermia of newborn
7284	P800 Cold injury syndrome
7285	P808 Other hypothermia of newborn
7286	P809 Hypothermia of newborn, unspecified
7287	P81 Other disturbances of temperature regulation of newborn
7288	P810 Environmental hyperthermia of newborn
7289	P818 Other specified disturbances of temperature regulation of newborn
7290	P819 Disturbance of temperature regulation of newborn, unspecified
7291	P83 Other conditions of integument specific to fetus and newborn
7292	P830 Sclerema neonatorum
7293	P831 Neonatal erythema toxicum
7294	P832 Hydrops fetalis not due to haemolytic disease
7295	P833 Other and unspecified oedema specific to fetus and newborn
7296	P834 Breast engorgement of newborn
7297	P835 Congenital hydrocele
7298	P836 Umbilical polyp of newborn
7299	P838 Other specified conditions of integument specific to fetus and newborn
7300	P839 Condition of integument specific to fetus and newborn, unspecified
7301	P90 Convulsions of newborn
7302	P91 Other disturbances of cerebral status of newborn
7303	P910 Neonatal cerebral ischaemia
7304	P911 Acquired periventricular cysts of newborn
7305	P912 Neonatal cerebral leukomalacia
7306	P913 Neonatal cerebral irritability
7307	P914 Neonatal cerebral depression
7308	P915 Neonatal coma
7309	P916 Hypoxic ischaemic encephalopathy of newborn
7310	P918 Other specified disturbances of cerebral status of newborn
7311	P919 Disturbance of cerebral status of newborn, unspecified
7312	P92 Feeding problems of newborn
7313	P920 Vomiting in newborn
7314	P921 Regurgitation and rumination in newborn
7315	P922 Slow feeding of newborn
7316	P923 Underfeeding of newborn
7317	P924 Overfeeding of newborn
7318	P925 Neonatal difficulty in feeding at breast
7319	P928 Other feeding problems of newborn
7320	P929 Feeding problem of newborn, unspecified
7321	P93 Reactions and intoxications due to drugs administered to fetus and newborn
7322	P94 Disorders of muscle tone of newborn
7323	P940 Transient neonatal myasthenia gravis
7324	P941 Congenital hypertonia
7325	P942 Congenital hypotonia
7326	P948 Other disorders of muscle tone of newborn
7327	P949 Disorder of muscle tone of newborn, unspecified
7328	P95 Fetal death of unspecified cause
7329	P96 Other conditions originating in the perinatal period
7330	P960 Congenital renal failure
7331	P961 Neonatal withdrawal symptoms from maternal use of drugs of addiction
7332	P962 Withdrawal symptoms from therapeutic use of drugs in newborn
7333	P963 Wide cranial sutures of newborn
7334	P964 Termination of pregnancy, affecting fetus and newborn
7335	P965 Complications of intrauterine procedures, not elsewhere classified
7336	P968 Other specified conditions originating in the perinatal period
7337	P969 Condition originating in the perinatal period, unspecified
7338	Q00 Anencephaly and similar malformations
7339	Q000 Anencephaly
7340	Q001 Craniorachischisis
7341	Q002 Iniencephaly
7342	Q01 Encephalocele
7343	Q010 Frontal encephalocele
7344	Q011 Nasofrontal encephalocele
7345	Q012 Occipital encephalocele
7346	Q018 Encephalocele of other sites
7347	Q019 Encephalocele, unspecified
7348	Q02 Microcephaly
7349	Q03 Congenital hydrocephalus
7350	Q030 Malformations of aqueduct of Sylvius
7351	Q031 Atresia of foramina of Magendie and Luschka
7352	Q038 Other congenital hydrocephalus
7353	Q039 Congenital hydrocephalus, unspecified
7354	Q04 Other congenital malformations of brain
7355	Q040 Congenital malformations of corpus callosum
7356	Q041 Arhinencephaly
7357	Q042 Holoprosencephaly
7358	Q043 Other reduction deformities of brain
7359	Q044 Septo-optic dysplasia
7360	Q045 Megalencephaly
7361	Q046 Congenital cerebral cysts
7362	Q048 Other specified congenital malformations of brain
7363	Q361 Cleft lip, median
7364	Q049 Congenital malformation of brain, unspecified
7365	Q05 Spina bifida
7366	Q050 Cervical spina bifida with hydrocephalus
7367	Q051 Thoracic spina bifida with hydrocephalus
7368	Q052 Lumbar spina bifida with hydrocephalus
7369	Q053 Sacral spina bifida with hydrocephalus
7370	Q054 Unspecified spina bifida with hydrocephalus
7371	Q055 Cervical spina bifida without hydrocephalus
7372	Q056 Thoracic spina bifida without hydrocephalus
7373	Q057 Lumbar spina bifida without hydrocephalus
7374	Q058 Sacral spina bifida without hydrocephalus
7375	Q059 Spina bifida, unspecified
7376	Q06 Other congenital malformations of spinal cord
7377	Q060 Amyelia
7378	Q061 Hypoplasia and dysplasia of spinal cord
7379	Q062 Diastematomyelia
7380	Q063 Other congenital cauda equina malformations
7381	Q068 Other specified congenital malformations of spinal cord
7382	Q069 Congenital malformation of spinal cord, unspecified
7383	Q07 Other congenital malformations of nervous system
7384	Q070 Arnold-Chiari syndrome
7385	Q078 Other specified congenital malformations of nervous system
7386	Q079 Congenital malformation of nervous system, unspecified
7387	Q10 Congenital malformations of eyelid, lacrimal apparatus and orbit
7388	Q100 Congenital ptosis
7389	Q101 Congenital ectropion
7390	Q102 Congenital entropion
7391	Q103 Other congenital malformations of eyelid
7392	Q104 Absence and agenesis of lacrimal apparatus
7393	Q105 Congenital stenosis and stricture of lacrimal duct
7394	Q106 Other congenital malformations of lacrimal apparatus
7395	Q107 Congenital malformation of orbit
7396	Q11 Anophthalmos, microphthalmos and macrophthalmos
7397	Q110 Cystic eyeball
7398	Q111 Other anophthalmos
7399	Q112 Microphthalmos
7400	Q113 Macrophthalmos
7401	Q12 Congenital lens malformations
7402	Q120 Congenital cataract
7403	Q121 Congenital displaced lens
7404	Q122 Coloboma of lens
7405	Q123 Congenital aphakia
7406	Q124 Spherophakia
7407	Q128 Other congenital lens malformations
7408	Q129 Congenital lens malformation, unspecified
7409	Q13 Congenital malformations of anterior segment of eye
7410	Q130 Coloboma of iris
7411	Q131 Absence of iris
7412	Q132 Other congenital malformations of iris
7413	Q133 Congenital corneal opacity
7414	Q134 Other congenital corneal malformations
7415	Q135 Blue sclera
7416	Q138 Other congenital malformations of anterior segment of eye
7417	Q139 Congenital malformation of anterior segment of eye, unspecified
7418	Q14 Congenital malformations of posterior segment of eye
7419	Q140 Congenital malformation of vitreous humour
7420	Q141 Congenital malformation of retina
7421	Q142 Congenital malformation of optic disc
7422	Q143 Congenital malformation of choroid
7423	Q148 Other congenital malformations of posterior segment of eye
7424	Q149 Congenital malformation of posterior segment of eye, unspecified
7425	Q15 Other congenital malformations of eye
7426	Q150 Congenital glaucoma
7427	Q158 Other specified congenital malformations of eye
7428	Q159 Congenital malformation of eye, unspecified
7429	Q16 Congenital malformations of ear causing impairment of hearing
7430	Q160 Congenital absence of (ear) auricle
7431	Q161 Congenital absence, atresia and stricture of auditory canal (external)
7432	Q162 Absence of eustachian tube
7433	Q163 Congenital malformation of ear ossicles
7434	Q164 Other congenital malformations of middle ear
7435	Q165 Congenital malformation of inner ear
7436	Q169 Congenital malformation of ear causing impairment of hearing, unspecified
7437	Q17 Other congenital malformations of ear
7438	Q170 Accessory auricle
7439	Q171 Macrotia
7440	Q172 Microtia
7441	Q173 Other misshapen ear
7442	Q174 Misplaced ear
7443	Q175 Prominent ear
7444	Q178 Other specified congenital malformations of ear
7445	Q179 Congenital malformation of ear, unspecified
7446	Q18 Other congenital malformations of face and neck
7447	Q180 Sinus, fistula and cyst of branchial cleft
7448	Q181 Preauricular sinus and cyst
7449	Q182 Other branchial cleft malformations
7450	Q183 Webbing of neck
7451	Q184 Macrostomia
7452	Q185 Microstomia
7453	Q186 Macrocheilia
7454	Q187 Microcheilia
7455	Q188 Other specified congenital malformations of face and neck
7456	Q189 Congenital malformation of face and neck, unspecified
7457	Q20 Congenital malformations of cardiac chambers and connections
7458	Q200 Common arterial trunk
7459	Q201 Double outlet right ventricle
7460	Q202 Double outlet left ventricle
7461	Q203 Discordant ventriculoarterial connection
7462	Q204 Double inlet ventricle
7463	Q205 Discordant atrioventricular connection
7464	Q206 Isomerism of atrial appendages
7465	Q208 Other congenital malformations of cardiac chambers and connections
7466	Q209 Congenital malformation of cardiac chambers and connections, unspecified
7467	Q21 Congenital malformations of cardiac septa
7468	Q210 Ventricular septal defect
7469	Q211 Atrial septal defect
7470	Q212 Atrioventricular septal defect
7471	Q213 Tetralogy of Fallot
7472	Q214 Aortopulmonary septal defect
7473	Q218 Other congenital malformations of cardiac septa
7474	Q219 Congenital malformation of cardiac septum, unspecified
7475	Q22 Congenital malformations of pulmonary and tricuspid valves
7476	Q220 Pulmonary valve atresia
7477	Q221 Congenital pulmonary valve stenosis
7478	Q222 Congenital pulmonary valve insufficiency
7479	Q223 Other congenital malformations of pulmonary valve
7480	Q224 Congenital tricuspid stenosis
7481	Q225 Ebstein anomaly
7482	Q226 Hypoplastic right heart syndrome
7483	Q228 Other congenital malformations of tricuspid valve
7484	Q229 Congenital malformation of tricuspid valve, unspecified
7485	Q23 Congenital malformations of aortic and mitral valves
7486	Q230 Congenital stenosis of aortic valve
7487	Q231 Congenital insufficiency of aortic valve
7488	Q232 Congenital mitral stenosis
7489	Q233 Congenital mitral insufficiency
7490	Q234 Hypoplastic left heart syndrome
7491	Q238 Other congenital malformations of aortic and mitral valves
7492	Q239 Congenital malformation of aortic and mitral valves, unspecified
7493	Q24 Other congenital malformations of heart
7494	Q240 Dextrocardia
7495	Q241 Laevocardia
7496	Q242 Cor triatriatum
7497	Q243 Pulmonary infundibular stenosis
7498	Q244 Congenital subaortic stenosis
7499	Q245 Malformation of coronary vessels
7500	Q246 Congenital heart block
7501	Q248 Other specified congenital malformations of heart
7502	Q249 Congenital malformation of heart, unspecified
7503	Q25 Congenital malformations of great arteries
7504	Q250 Patent ductus arteriosus
7505	Q251 Coarctation of aorta
7506	Q252 Atresia of aorta
7507	Q253 Stenosis of aorta
7508	Q254 Other congenital malformations of aorta
7509	Q255 Atresia of pulmonary artery
7510	Q256 Stenosis of pulmonary artery
7511	Q257 Other congenital malformations of pulmonary artery
7512	Q258 Other congenital malformations of great arteries
7513	Q259 Congenital malformation of great arteries, unspecified
7514	Q26 Congenital malformations of great veins
7515	Q260 Congenital stenosis of vena cava
7516	Q261 Persistent left superior vena cava
7517	Q262 Total anomalous pulmonary venous connection
7518	Q263 Partial anomalous pulmonary venous connection
7519	Q264 Anomalous pulmonary venous connection, unspecified
7520	Q265 Anomalous portal venous connection
7521	Q266 Portal vein-hepatic artery fistula
7522	Q268 Other congenital malformations of great veins
7523	Q269 Congenital malformation of great vein, unspecified
7524	Q27 Other congenital malformations of peripheral vascular system
7525	Q270 Congenital absence and hypoplasia of umbilical artery
7526	Q271 Congenital renal artery stenosis
7527	Q272 Other congenital malformations of renal artery
7528	Q273 Peripheral arteriovenous malformation
7529	Q274 Congenital phlebectasia
7530	Q278 Other specified congenital malformations of peripheral vascular system
7531	Q279 Congenital malformation of peripheral vascular system, unspecified
7532	Q28 Other congenital malformations of circulatory system
7533	Q280 Arteriovenous malformation of precerebral vessels
7534	Q281 Other malformations of precerebral vessels
7535	Q282 Arteriovenous malformation of cerebral vessels
7536	Q283 Other malformations of cerebral vessels
7537	Q288 Other specified congenital malformations of circulatory system
7538	Q289 Congenital malformation of circulatory system, unspecified
7539	Q30 Congenital malformations of nose
7540	Q300 Choanal atresia
7541	Q301 Agenesis and underdevelopment of nose
7542	Q302 Fissured, notched and cleft nose
7543	Q303 Congenital perforated nasal septum
7544	Q308 Other congenital malformations of nose
7545	Q309 Congenital malformation of nose, unspecified
7546	Q31 Congenital malformations of larynx
7547	Q310 Web of larynx
7548	Q311 Congenital subglottic stenosis
7549	Q312 Laryngeal hypoplasia
7550	Q313 Laryngocele
7551	Q315 Congenital laryngomalacia
7552	Q318 Other congenital malformations of larynx
7553	Q319 Congenital malformation of larynx, unspecified
7554	Q32 Congenital malformations of trachea and bronchus
7555	Q320 Congenital tracheomalacia
7556	Q321 Other congenital malformations of trachea
7557	Q322 Congenital bronchomalacia
7558	Q323 Congenital stenosis of bronchus
7559	Q324 Other congenital malformations of bronchus
7560	Q33 Congenital malformations of lung
7561	Q330 Congenital cystic lung
7562	Q331 Accessory lobe of lung
7563	Q332 Sequestration of lung
7564	Q333 Agenesis of lung
7565	Q334 Congenital bronchiectasis
7566	Q335 Ectopic tissue in lung
7567	Q336 Hypoplasia and dysplasia of lung
7568	Q338 Other congenital malformations of lung
7569	Q339 Congenital malformation of lung, unspecified
7570	Q34 Other congenital malformations of respiratory system
7571	Q340 Anomaly of pleura
7572	Q341 Congenital cyst of mediastinum
7573	Q348 Other specified congenital malformations of respiratory system
7574	Q349 Congenital malformation of respiratory system, unspecified
7575	Q35 Cleft palate
7576	Q351 Cleft hard palate
7577	Q353 Cleft soft palate
7578	Q355 Cleft hard palate with cleft soft palate
7579	Q357 Cleft uvula
7580	Q359 Cleft palate, unspecified
7581	Q369 Cleft lip, unilateral
7582	Q37 Cleft palate with cleft lip
7583	Q370 Cleft hard palate with bilateral cleft lip
7584	Q371 Cleft hard palate with unilateral cleft lip
7585	Q372 Cleft soft palate with bilateral cleft lip
7586	Q373 Cleft soft palate with unilateral cleft lip
7587	Q374 Cleft hard and soft palate with bilateral cleft lip
7588	Q375 Cleft hard and soft palate with unilateral cleft lip
7589	Q378 Unspecified cleft palate with bilateral cleft lip
7590	Q379 Unspecified cleft palate with unilateral cleft lip
7591	Q38 Other congenital malformations of tongue, mouth and pharynx
7592	Q380 Congenital malformations of lips, not elsewhere classified
7593	Q381 Ankyloglossia
7594	Q382 Macroglossia
7595	Q383 Other congenital malformations of tongue
7596	Q384 Congenital malformations of salivary glands and ducts
7597	Q385 Congenital malformations of palate, not elsewhere classified
7598	Q386 Other congenital malformations of mouth
7599	Q387 Pharyngeal pouch
7600	Q388 Other congenital malformations of pharynx
7601	Q39 Congenital malformations of oesophagus
7602	Q390 Atresia of oesophagus without fistula
7603	Q391 Atresia of oesophagus with tracheo-oesophageal fistula
7604	Q392 Congenital tracheo-oesophageal fistula without atresia
7605	Q393 Congenital stenosis and stricture of oesophagus
7606	Q394 Oesophageal web
7607	Q395 Congenital dilatation of oesophagus
7608	Q396 Diverticulum of oesophagus
7609	Q398 Other congenital malformations of oesophagus
7610	Q399 Congenital malformation of oesophagus, unspecified
7611	Q40 Other congenital malformations of upper alimentary tract
7612	Q400 Congenital hypertrophic pyloric stenosis
7613	Q401 Congenital hiatus hernia
7614	Q402 Other specified congenital malformations of stomach
7615	Q403 Congenital malformation of stomach, unspecified
7616	Q408 Other specified congenital malformations of upper alimentary tract
7617	Q409 Congenital malformation of upper alimentary tract, unspecified
7618	Q41 Congenital absence, atresia and stenosis of small intestine
7619	Q410 Congenital absence, atresia and stenosis of duodenum
7620	Q411 Congenital absence, atresia and stenosis of jejunum
7621	Q412 Congenital absence, atresia and stenosis of ileum
7622	Q418 Congenital absence, atresia and stenosis of other specified parts of small intestine
7623	Q419 Congenital absence, atresia and stenosis of small intestine, part unspecified
7624	Q42 Congenital absence, atresia and stenosis of large intestine
7625	Q420 Congenital absence, atresia and stenosis of rectum with fistula
7626	Q421 Congenital absence, atresia and stenosis of rectum without fistula
7627	Q422 Congenital absence, atresia and stenosis of anus with fistula
7628	Q423 Congenital absence, atresia and stenosis of anus without fistula
7629	Q428 Congenital absence, atresia and stenosis of other parts of large intestine
7630	Q429 Congenital absence, atresia and stenosis of large intestine, part unspecified
7631	Q43 Other congenital malformations of intestine
7632	Q430 Meckel diverticulum
7633	Q431 Hirschsprung disease
7634	Q432 Other congenital functional disorders of colon
7635	Q433 Congenital malformations of intestinal fixation
7636	Q434 Duplication of intestine
7637	Q435 Ectopic anus
7638	Q436 Congenital fistula of rectum and anus
7639	Q437 Persistent cloaca
7640	Q438 Other specified congenital malformations of intestine
7641	Q439 Congenital malformation of intestine, unspecified
7642	Q44 Congenital malformations of gallbladder, bile ducts and liver
7643	Q440 Agenesis, aplasia and hypoplasia of gallbladder
7644	Q441 Other congenital malformations of gallbladder
7645	Q442 Atresia of bile ducts
7646	Q443 Congenital stenosis and stricture of bile ducts
7647	Q444 Choledochal cyst
7648	Q445 Other congenital malformations of bile ducts
7649	Q446 Cystic disease of liver
7650	Q447 Other congenital malformations of liver
7651	Q45 Other congenital malformations of digestive system
7652	Q450 Agenesis, aplasia and hypoplasia of pancreas
7653	Q451 Annular pancreas
7654	Q452 Congenital pancreatic cyst
7655	Q453 Other congenital malformations of pancreas and pancreatic duct
7656	Q458 Other specified congenital malformations of digestive system
7657	Q459 Congenital malformation of digestive system, unspecified
7658	Q50 Congenital malformations of ovaries, fallopian tubes and broad ligaments
7659	Q500 Congenital absence of ovary
7660	Q501 Developmental ovarian cyst
7661	Q502 Congenital torsion of ovary
7662	Q503 Other congenital malformations of ovary
7663	Q504 Embryonic cyst of fallopian tube
7664	Q505 Embryonic cyst of broad ligament
7665	Q506 Other congenital malformations of fallopian tube and broad ligament
7666	Q51 Congenital malformations of uterus and cervix
7667	Q510 Agenesis and aplasia of uterus
7668	Q511 Doubling of uterus with doubling of cervix and vagina
7669	Q512 Other doubling of uterus
7670	Q513 Bicornate uterus
7671	Q514 Unicornate uterus
7672	Q515 Agenesis and aplasia of cervix
7673	Q516 Embryonic cyst of cervix
7674	Q517 Congenital fistulae between uterus and digestive and urinary tracts
7675	Q518 Other congenital malformations of uterus and cervix
7676	Q519 Congenital malformation of uterus and cervix, unspecified
7677	Q52 Other congenital malformations of female genitalia
7678	Q520 Congenital absence of vagina
7679	Q521 Doubling of vagina
7680	Q522 Congenital rectovaginal fistula
7681	Q523 Imperforate hymen
7682	Q524 Other congenital malformations of vagina
7683	Q525 Fusion of labia
7684	Q526 Congenital malformation of clitoris
7685	Q527 Other congenital malformations of vulva
7686	Q528 Other specified congenital malformations of female genitalia
7687	Q529 Congenital malformation of female genitalia, unspecified
7688	Q53 Undescended testicle
7689	Q531 Undescended testicle, unilateral
7690	Q532 Undescended testicle, bilateral
7691	Q539 Undescended testicle, unspecified
7692	Q54 Hypospadias
7693	Q540 Hypospadias, balanic
7694	Q541 Hypospadias, penile
7695	Q542 Hypospadias, penoscrotal
7696	Q543 Hypospadias, perineal
7697	Q544 Congenital chordee
7698	Q548 Other hypospadias
7699	Q549 Hypospadias, unspecified
7700	Q55 Other congenital malformations of male genital organs
7701	Q550 Absence and aplasia of testis
7702	Q551 Hypoplasia of testis and scrotum
7703	Q552 Other congenital malformations of testis and scrotum
7704	Q553 Atresia of vas deferens
7705	Q554 Other congenital malformations of vas deferens, epididymis, seminal vesicles and prostate
7706	Q555 Congenital absence and aplasia of penis
7707	Q556 Other congenital malformations of penis
7708	Q558 Other specified congenital malformations of male genital organs
7709	Q559 Congenital malformation of male genital organ, unspecified
7710	Q56 Indeterminate sex and pseudohermaphroditism
7711	Q560 Hermaphroditism, not elsewhere classified
7712	Q561 Male pseudohermaphroditism, not elsewhere classified
7713	Q562 Female pseudohermaphroditism, not elsewhere classified
7714	Q563 Pseudohermaphroditism, unspecified
7715	Q564 Indeterminate sex, unspecified
7716	Q60 Renal agenesis and other reduction defects of kidney
7717	Q600 Renal agenesis, unilateral
7718	Q601 Renal agenesis, bilateral
7719	Q602 Renal agenesis, unspecified
7720	Q603 Renal hypoplasia, unilateral
7721	Q604 Renal hypoplasia, bilateral
7722	Q605 Renal hypoplasia, unspecified
7723	Q606 Potter syndrome
7724	Q61 Cystic kidney disease
7725	Q610 Congenital single renal cyst
7726	Q611 Polycystic kidney, autosomal recessive
7727	Q612 Polycystic kidney, autosomal dominant
7728	Q613 Polycystic kidney, unspecified
7729	Q614 Renal dysplasia
7730	Q615 Medullary cystic kidney
7731	Q618 Other cystic kidney diseases
7732	Q619 Cystic kidney disease, unspecified
7733	Q62 Congenital obstructive defects of renal pelvis and congenital malformations of ureter
7734	Q620 Congenital hydronephrosis
7735	Q621 Atresia and stenosis of ureter
7736	Q622 Congenital megaloureter
7737	Q623 Other obstructive defects of renal pelvis and ureter
7738	Q624 Agenesis of ureter
7739	Q625 Duplication of ureter
7740	Q626 Malposition of ureter
7741	Q627 Congenital vesico-uretero-renal reflux
7742	Q628 Other congenital malformations of ureter
7743	Q63 Other congenital malformations of kidney
7744	Q630 Accessory kidney
7745	Q631 Lobulated, fused and horseshoe kidney
7746	Q632 Ectopic kidney
7747	Q633 Hyperplastic and giant kidney
7748	Q638 Other specified congenital malformations of kidney
7749	Q639 Congenital malformation of kidney, unspecified
7750	Q64 Other congenital malformations of urinary system
7751	Q640 Epispadias
7752	Q641 Exstrophy of urinary bladder
7753	Q642 Congenital posterior urethral valves
7754	Q643 Other atresia and stenosis of urethra and bladder neck
7755	Q644 Malformation of urachus
7756	Q645 Congenital absence of bladder and urethra
7757	Q646 Congenital diverticulum of bladder
7758	Q647 Other congenital malformations of bladder and urethra
7759	Q648 Other specified congenital malformations of urinary system
7760	Q649 Congenital malformation of urinary system, unspecified
7761	Q65 Congenital deformities of hip
7762	Q650 Congenital dislocation of hip, unilateral
7763	Q651 Congenital dislocation of hip, bilateral
7764	Q652 Congenital dislocation of hip, unspecified
7765	Q653 Congenital subluxation of hip, unilateral
7766	Q654 Congenital subluxation of hip, bilateral
7767	Q655 Congenital subluxation of hip, unspecified
7768	Q656 Unstable hip
7769	Q658 Other congenital deformities of hip
7770	Q659 Congenital deformity of hip, unspecified
7771	Q66 Congenital deformities of feet
7772	Q660 Talipes equinovarus
7773	Q661 Talipes calcaneovarus
7774	Q662 Metatarsus varus
7775	Q663 Other congenital varus deformities of feet
7776	Q664 Talipes calcaneovalgus
7777	Q665 Congenital pes planus
7778	Q666 Other congenital valgus deformities of feet
7779	Q667 Pes cavus
7780	Q668 Other congenital deformities of feet
7781	Q669 Congenital deformity of feet, unspecified
7782	Q67 Congenital musculoskeletal deformities of head, face, spine and chest
7783	Q670 Facial asymmetry
7784	Q671 Compression facies
7785	Q672 Dolichocephaly
7786	Q673 Plagiocephaly
7787	Q674 Other congenital deformities of skull, face and jaw
7788	Q675 Congenital deformity of spine
7789	Q676 Pectus excavatum
7790	Q677 Pectus carinatum
7791	Q678 Other congenital deformities of chest
7792	Q68 Other congenital musculoskeletal deformities
7793	Q680 Congenital deformity of sternocleidomastoid muscle
7794	Q681 Congenital deformity of hand
7795	Q682 Congenital deformity of knee
7796	Q683 Congenital bowing of femur
7797	Q684 Congenital bowing of tibia and fibula
7798	Q685 Congenital bowing of long bones of leg, unspecified
7799	Q688 Other specified congenital musculoskeletal deformities
7800	Q69 Polydactyly
7801	Q690 Accessory finger(s)
7802	Q691 Accessory thumb(s)
7803	Q692 Accessory toe(s)
7804	Q699 Polydactyly, unspecified
7805	Q70 Syndactyly
7806	Q700 Fused fingers
7807	Q701 Webbed fingers
7808	Q702 Fused toes
7809	Q703 Webbed toes
7810	Q704 Polysyndactyly
7811	Q709 Syndactyly, unspecified
7812	Q71 Reduction defects of upper limb
7813	Q710 Congenital complete absence of upper limb(s)
7814	Q711 Congenital absence of upper arm and forearm with hand present
7815	Q712 Congenital absence of both forearm and hand
7816	Q713 Congenital absence of hand and finger(s)
7817	Q714 Longitudinal reduction defect of radius
7818	Q715 Longitudinal reduction defect of ulna
7819	Q716 Lobster-claw hand
7820	Q718 Other reduction defects of upper limb(s)
7821	Q719 Reduction defect of upper limb, unspecified
7822	Q72 Reduction defects of lower limb
7823	Q720 Congenital complete absence of lower limb(s)
7824	Q721 Congenital absence of thigh and lower leg with foot present
7825	Q722 Congenital absence of both lower leg and foot
7826	Q723 Congenital absence of foot and toe(s)
7827	Q724 Longitudinal reduction defect of femur
7828	Q725 Longitudinal reduction defect of tibia
7829	Q726 Longitudinal reduction defect of fibula
7830	Q727 Split foot
7831	Q728 Other reduction defects of lower limb(s)
7832	Q729 Reduction defect of lower limb, unspecified
7833	Q73 Reduction defects of unspecified limb
7834	Q730 Congenital absence of unspecified limb(s)
7835	Q731 Phocomelia, unspecified limb(s)
7836	Q738 Other reduction defects of unspecified limb(s)
7837	Q74 Other congenital malformations of limb(s)
7838	Q740 Other congenital malformations of upper limb(s), including shoulder girdle
7839	Q741 Congenital malformation of knee
7840	Q742 Other congenital malformations of lower limb(s), including pelvic girdle
7841	Q743 Arthrogryposis multiplex congenita
7842	Q748 Other specified congenital malformations of limb(s)
7843	Q749 Unspecified congenital malformation of limb(s)
7844	Q75 Other congenital malformations of skull and face bones
7845	Q750 Craniosynostosis
7846	Q751 Craniofacial dysostosis
7847	Q752 Hypertelorism
7848	Q753 Macrocephaly
7849	Q754 Mandibulofacial dysostosis
7850	Q755 Oculomandibular dysostosis
7851	Q758 Other specified congenital malformations of skull and face bones
7852	Q759 Congenital malformation of skull and face bones, unspecified
7853	Q76 Congenital malformations of spine and bony thorax
7854	Q760 Spina bifida occulta
7855	Q761 Klippel-Feil syndrome
7856	Q762 Congenital spondylolisthesis
7857	Q763 Congenital scoliosis due to congenital bony malformation
7858	Q764 Other congenital malformations of spine, not associated with scoliosis
7859	Q765 Cervical rib
7860	Q766 Other congenital malformations of ribs
7861	Q767 Congenital malformation of sternum
7862	Q768 Other congenital malformations of bony thorax
7863	Q769 Congenital malformation of bony thorax, unspecified
7864	Q77 Osteochondrodysplasia with defects of growth of tubular bones and spine
7865	Q770 Achondrogenesis
7866	Q771 Thanatophoric short stature
7867	Q772 Short rib syndrome
7868	Q773 Chondrodysplasia punctata
7869	Q774 Achondroplasia
7870	Q775 Dystrophic dysplasia
7871	Q776 Chondroectodermal dysplasia
7872	Q777 Spondyloepiphyseal dysplasia
7873	Q778 Other osteochondrodysplasia with defects of growth of tubular bones and spine
7874	Q779 Osteochondrodysplasia with defects of growth of tubular bones and spine, unspecified
7875	Q78 Other osteochondrodysplasias
7876	Q780 Osteogenesis imperfecta
7877	Q781 Polyostotic fibrous dysplasia
7878	Q782 Osteopetrosis
7879	Q783 Progressive diaphyseal dysplasia
7880	Q784 Enchondromatosis
7881	Q785 Metaphyseal dysplasia
7882	Q786 Multiple congenital exostoses
7883	Q788 Other specified osteochondrodysplasias
7884	Q789 Osteochondrodysplasia, unspecified
7885	Q79 Congenital malformations of the musculoskeletal system, not elsewhere classified
7886	Q790 Congenital diaphragmatic hernia
7887	Q791 Other congenital malformations of diaphragm
7888	Q792 Exomphalos
7889	Q793 Gastroschisis
7890	Q794 Prune belly syndrome
7891	Q795 Other congenital malformations of abdominal wall
7892	Q796 Ehlers-Danlos syndrome
7893	Q798 Other congenital malformations of musculoskeletal system
7894	Q799 Congenital malformation of musculoskeletal system, unspecified
7895	Q80 Congenital ichthyosis
7896	Q800 Ichthyosis vulgaris
7897	Q801 X-linked ichthyosis
7898	Q802 Lamellar ichthyosis
7899	Q803 Congenital bullous ichthyosiform erythroderma
7900	Q804 Harlequin fetus
7901	Q808 Other congenital ichthyosis
7902	Q809 Congenital ichthyosis, unspecified
7903	Q81 Epidermolysis bullosa
7904	Q810 Epidermolysis bullosa simplex
7905	Q811 Epidermolysis bullosa letalis
7906	Q812 Epidermolysis bullosa dystrophica
7907	Q819 Epidermolysis bullosa, unspecified
7908	Q82 Other congenital malformations of skin
7909	Q820 Hereditary lymphoedema
7910	Q821 Xeroderma pigmentosum
7911	Q822 Mastocytosis
7912	Q823 Incontinentia pigmenti
7913	Q824 Ectodermal dysplasia (anhidrotic)
7914	Q825 Congenital non-neoplastic naevus
7915	Q828 Other specified congenital malformations of skin
7916	Q829 Congenital malformation of skin, unspecified
7917	Q83 Congenital malformations of breast
7918	Q830 Congenital absence of breast with absent nipple
7919	Q831 Accessory breast
7920	Q832 Absent nipple
7921	Q833 Accessory nipple
7922	Q838 Other congenital malformations of breast
7923	Q839 Congenital malformation of breast, unspecified
7924	Q84 Other congenital malformations of integument
7925	Q840 Congenital alopecia
7926	Q841 Congenital morphological disturbances of hair, not elsewhere classified
7927	Q842 Other congenital malformations of hair
7928	Q843 Anonychia
7929	Q844 Congenital leukonychia
7930	Q845 Enlarged and hypertrophic nails
7931	Q846 Other congenital malformations of nails
7932	Q848 Other specified congenital malformations of integument
7933	Q849 Congenital malformation of integument, unspecified
7934	Q85 Phakomatoses, not elsewhere classified
7935	Q850 Neurofibromatosis (nonmalignant)
7936	Q851 Tuberous sclerosis
7937	Q858 Other phakomatoses, not elsewhere classified
7938	Q859 Phakomatosis, unspecified
7939	Q86 Congenital malformation syndromes due to known exogenous causes, not elsewhere classified
7940	Q860 Fetal alcohol syndrome (dysmorphic)
7941	Q861 Fetal hydantoin syndrome
7942	Q862 Dysmorphism due to warfarin
7943	Q868 Other congenital malformation syndromes due to known exogenous causes
7944	Q87 Other specified congenital malformation syndromes affecting multiple systems
7945	Q870 Congenital malformation syndromes predominantly affecting facial appearance
7946	Q871 Congenital malformation syndromes predominantly associated with short stature
7947	Q872 Congenital malformation syndromes predominantly involving limbs
7948	Q873 Congenital malformation syndromes involving early overgrowth
7949	Q874 Marfan syndrome
7950	Q875 Other congenital malformation syndromes with other skeletal changes
7951	Q878 Other specified congenital malformation syndromes, not elsewhere classified
7952	Q89 Other congenital malformations, not elsewhere classified
7953	Q890 Congenital malformations of spleen
7954	Q891 Congenital malformations of adrenal gland
7955	Q892 Congenital malformations of other endocrine glands
7956	Q893 Situs inversus
7957	Q894 Conjoined twins
7958	Q897 Multiple congenital malformations, not elsewhere classified
7959	Q898 Other specified congenital malformations
7960	Q899 Congenital malformation, unspecified
7961	Q90 Down syndrome
7962	Q900 Trisomy 21, meiotic nondisjunction
7963	Q901 Trisomy 21, mosaicism (mitotic nondisjunction)
7964	Q902 Trisomy 21, translocation
7965	Q909 Down syndrome, unspecified
7966	Q91 Edwards syndrome and Patau syndrome
7967	Q910 Trisomy 18, meiotic nondisjunction
7968	Q911 Trisomy 18, mosaicism (mitotic nondisjunction)
7969	Q912 Trisomy 18, translocation
7970	Q913 Edwards syndrome, unspecified
7971	Q914 Trisomy 13, meiotic nondisjunction
7972	Q915 Trisomy 13, mosaicism (mitotic nondisjunction)
7973	Q916 Trisomy 13, translocation
7974	Q917 Patau syndrome, unspecified
7975	Q92 Other trisomies and partial trisomies of the autosomes, not elsewhere classified
7976	Q920 Whole chromosome trisomy, meiotic nondisjunction
7977	Q921 Whole chromosome trisomy, mosaicism (mitotic nondisjunction)
7978	Q922 Major partial trisomy
7979	Q923 Minor partial trisomy
7980	Q924 Duplications seen only at prometaphase
7981	Q925 Duplications with other complex rearrangements
7982	Q926 Extra marker chromosomes
7983	Q927 Triploidy and polyploidy
7984	Q928 Other specified trisomies and partial trisomies of autosomes
7985	Q929 Trisomy and partial trisomy of autosomes, unspecified
7986	Q93 Monosomies and deletions from the autosomes, not elsewhere classified
7987	Q930 Whole chromosome monosomy, meiotic nondisjunction
7988	Q931 Whole chromosome monosomy, mosaicism (mitotic nondisjunction)
7989	Q932 Chromosome replaced with ring or dicentric
7990	Q933 Deletion of short arm of chromosome 4
7991	Q934 Deletion of short arm of chromosome 5
7992	Q935 Other deletions of part of a chromosome
7993	Q936 Deletions seen only at prometaphase
7994	Q937 Deletions with other complex rearrangements
7995	Q938 Other deletions from the autosomes
7996	Q939 Deletion from autosomes, unspecified
7997	Q95 Balanced rearrangements and structural markers, not elsewhere classified
7998	Q950 Balanced translocation and insertion in normal individual
7999	Q951 Chromosome inversion in normal individual
8000	Q952 Balanced autosomal rearrangement in abnormal individual
8001	Q953 Balanced sex/autosomal rearrangement in abnormal individual
8002	Q954 Individuals with marker heterochromatin
8003	Q955 Individuals with autosomal fragile site
8004	Q958 Other balanced rearrangements and structural markers
8005	Q959 Balanced rearrangement and structural marker, unspecified
8007	Q961 Karyotype 46,X iso (Xq)
8008	Q962 Karyotype 46,X with abnormal sex chromosome, except iso (Xq)
8009	Q963 Mosaicism, 45,X/46,XX or XY
8010	Q964 Mosaicism, 45,X/other cell line(s) with abnormal sex chromosome
8011	Q968 Other variants of Turner syndrome
8012	Q969 Turner syndrome, unspecified
8013	Q97 Other sex chromosome abnormalities, female phenotype, not elsewhere classified
8014	Q970 Karyotype 47,XXX
8015	Q971 Female with more than three X chromosomes
8016	Q972 Mosaicism, lines with various numbers of X chromosomes
8017	Q973 Female with 46,XY karyotype
8018	Q978 Other specified sex chromosome abnormalities, female phenotype
8019	Q979 Sex chromosome abnormality, female phenotype, unspecified
8020	Q98 Other sex chromosome abnormalities, male phenotype, not elsewhere classified
8021	Q980 Klinefelter syndrome karyotype 47,XXY
8022	Q981 Klinefelter syndrome, male with more than two X chromosomes
8023	Q982 Klinefelter syndrome, male with 46,XX karyotype
8024	Q983 Other male with 46,XX karyotype
8025	Q984 Klinefelter syndrome, unspecified
8026	Q985 Karyotype 47,XYY
8027	Q986 Male with structurally abnormal sex chromosome
8028	Q987 Male with sex chromosome mosaicism
8029	Q988 Other specified sex chromosome abnormalities, male phenotype
8030	Q989 Sex chromosome abnormality, male phenotype, unspecified
8031	Q99 Other chromosome abnormalities, not elsewhere classified
8032	Q990 Chimera 46,XX/46,XY
8033	Q991 46,XX true hermaphrodite
8034	Q992 Fragile X chromosome
8035	Q998 Other specified chromosome abnormalities
8036	Q999 Chromosomal abnormality, unspecified
8037	R00 Abnormalities of heart beat
8038	R000 Tachycardia, unspecified
8039	R001 Bradycardia, unspecified
8040	R002 Palpitations
8041	R008 Other and unspecified abnormalities of heart beat
8042	R01 Cardiac murmurs and other cardiac sounds
8043	R010 Benign and innocent cardiac murmurs
8044	R011 Cardiac murmur, unspecified
8045	R012 Other cardiac sounds
8046	R02 Gangrene, not elsewhere classified
8047	R03 Abnormal blood-pressure reading, without diagnosis
8048	R030 Elevated blood-pressure reading, without diagnosis of hypertension
8049	R031 Nonspecific low blood-pressure reading
8050	R04 Haemorrhage from respiratory passages
8051	R040 Epistaxis
8052	R041 Haemorrhage from throat
8053	R042 Haemoptysis
8054	R048 Haemorrhage from other sites in respiratory passages
8055	R049 Haemorrhage from respiratory passages, unspecified
8056	R05 Cough
8057	R06 Abnormalities of breathing
8058	R060 Dyspnoea
8059	R061 Stridor
8060	R062 Wheezing
8061	R063 Periodic breathing
8062	R064 Hyperventilation
8063	R065 Mouth breathing
8064	R066 Hiccough
8065	R067 Sneezing
8066	R068 Other and unspecified abnormalities of breathing
8067	R07 Pain in throat and chest
8068	R070 Pain in throat
8069	R071 Chest pain on breathing
8070	R072 Precordial pain
8071	R073 Other chest pain
8072	R074 Chest pain, unspecified
8073	R09 Other symptoms and signs involving the circulatory and respiratory systems
8074	R090 Asphyxia
8075	R091 Pleurisy
8076	R092 Respiratory arrest
8077	R093 Abnormal sputum
8078	R098 Other specified symptoms and signs involving the circulatory and respiratory systems
8079	R10 Abdominal and pelvic pain
8080	R100 Acute abdomen
8081	R101 Pain localized to upper abdomen
8082	R102 Pelvic and perineal pain
8083	R103 Pain localized to other parts of lower abdomen
8084	R104 Other and unspecified abdominal pain
8085	R11 Nausea and vomiting
8086	R12 Heartburn
8087	R13 Dysphagia
8088	R14 Flatulence and related conditions
8089	R15 Faecal incontinence
8090	R16 Hepatomegaly and splenomegaly, not elsewhere classified
8091	R160 Hepatomegaly, not elsewhere classified
8092	R161 Splenomegaly, not elsewhere classified
8093	R162 Hepatomegaly with splenomegaly, not elsewhere classified
8094	R17 Unspecified jaundice
8095	R18 Ascites
8096	R19 Other symptoms and signs involving the digestive system and abdomen
8097	R190 Intra-abdominal and pelvic swelling, mass and lump
8098	R191 Abnormal bowel sounds
8099	R192 Visible peristalsis
8100	R193 Abdominal rigidity
8101	R194 Change in bowel habit
8102	R195 Other faecal abnormalities
8103	R196 Halitosis
8104	R198 Other specified symptoms and signs involving the digestive system and abdomen
8105	R20 Disturbances of skin sensation
8106	R200 Anaesthesia of skin
8107	R201 Hypoaesthesia of skin
8108	R202 Paraesthesia of skin
8109	R203 Hyperaesthesia
8110	R208 Other and unspecified disturbances of skin sensation
8111	R21 Rash and other nonspecific skin eruption
8112	R22 Localized swelling, mass and lump of skin and subcutaneous tissue
8113	R220 Localized swelling, mass and lump, head
8114	R221 Localized swelling, mass and lump, neck
8115	R222 Localized swelling, mass and lump, trunk
8232	R54 Senility
8116	R223 Localized swelling, mass and lump, upper limb
8117	R224 Localized swelling, mass and lump, lower limb
8118	R227 Localized swelling, mass and lump, multiple sites
8119	R229 Localized swelling, mass and lump, unspecified
8120	R23 Other skin changes
8121	R230 Cyanosis
8122	R231 Pallor
8123	R232 Flushing
8124	R233 Spontaneous ecchymoses
8125	R234 Changes in skin texture
8126	R238 Other and unspecified skin changes
8127	R25 Abnormal involuntary movements
8128	R250 Abnormal head movements
8129	R251 Tremor, unspecified
8130	R252 Cramp and spasm
8131	R253 Fasciculation
8132	R258 Other and unspecified abnormal involuntary movements
8133	R26 Abnormalities of gait and mobility
8134	R260 Ataxic gait
8135	R261 Paralytic gait
8136	R262 Difficulty in walking, not elsewhere classified
8137	R263 Immobility
8138	R268 Other and unspecified abnormalities of gait and mobility
8139	R27 Other lack of coordination
8140	R270 Ataxia, unspecified
8141	R278 Other and unspecified lack of coordination
8142	R29 Other symptoms and signs involving the nervous and musculoskeletal systems
8143	R290 Tetany
8144	R291 Meningismus
8145	R292 Abnormal reflex
8146	R293 Abnormal posture
8147	R294 Clicking hip
8148	R296 Tendency to fall, not elsewhere classified
8149	R298 Other and unspecified symptoms and signs involving the nervous and musculoskeletal systems
8150	R30 Pain associated with micturition
8151	R300 Dysuria
8152	R301 Vesical tenesmus
8153	R309 Painful micturition, unspecified
8154	R31 Unspecified haematuria
8155	R32 Unspecified urinary incontinence
8156	R33 Retention of urine
8157	R34 Anuria and oliguria
8158	R35 Polyuria
8159	R36 Urethral discharge
8160	R39 Other symptoms and signs involving the urinary system
8161	R390 Extravasation of urine
8162	R391 Other difficulties with micturition
8163	R392 Extrarenal uraemia
8164	R398 Other and unspecified symptoms and signs involving the urinary system
8165	R40 Somnolence, stupor and coma
8166	R400 Somnolence
8167	R401 Stupor
8168	R402 Coma, unspecified
8169	R41 Other symptoms and signs involving cognitive functions and awareness
8170	R410 Disorientation, unspecified
8171	R411 Anterograde amnesia
8172	R412 Retrograde amnesia
8173	R413 Other amnesia
8174	R418 Other and unspecified symptoms and signs involving cognitive functions and awareness
8175	R42 Dizziness and giddiness
8176	R43 Disturbances of smell and taste
8177	R430 Anosmia
8178	R431 Parosmia
8179	R432 Parageusia
8180	R438 Other and unspecified disturbances of smell and taste
8181	R44 Other symptoms and signs involving general sensations and perceptions
8182	R440 Auditory hallucinations
8183	R441 Visual hallucinations
8184	R442 Other hallucinations
8185	R443 Hallucinations, unspecified
8186	R448 Other and unspecified symptoms and signs involving general sensations and perceptions
8187	R45 Symptoms and signs involving emotional state
8188	R450 Nervousness
8189	R451 Restlessness and agitation
8190	R452 Unhappiness
8191	R453 Demoralization and apathy
8192	R454 Irritability and anger
8193	R455 Hostility
8194	R456 Physical violence
8195	R457 State of emotional shock and stress, unspecified
8196	R458 Other symptoms and signs involving emotional state
8197	R46 Symptoms and signs involving appearance and behaviour
8198	R460 Very low level of personal hygiene
8199	R461 Bizarre personal appearance
8200	R462 Strange and inexplicable behaviour
8201	R463 Overactivity
8202	R464 Slowness and poor responsiveness
8203	R465 Suspiciousness and marked evasiveness
8204	R466 Undue concern and preoccupation with stressful events
8205	R467 Verbosity and circumstantial detail obscuring reason for contact
8206	R468 Other symptoms and signs involving appearance and behaviour
8207	R47 Speech disturbances, not elsewhere classified
8208	R470 Dysphasia and aphasia
8209	R471 Dysarthria and anarthria
8210	R478 Other and unspecified speech disturbances
8211	R48 Dyslexia and other symbolic dysfunctions, not elsewhere classified
8212	R480 Dyslexia and alexia
8213	R481 Agnosia
8214	R482 Apraxia
8215	R488 Other and unspecified symbolic dysfunctions
8216	R49 Voice disturbances
8217	R490 Dysphonia
8218	R491 Aphonia
8219	R492 Hypernasality and hyponasality
8220	R498 Other and unspecified voice disturbances
8221	R50 Fever of other and unknown origin
8222	R502 Drug-induced fever
8223	R508 Other specified fever
8224	R509 Fever, unspecified
8225	R51 Headache
8226	R52 Pain, not elsewhere classified
8227	R520 Acute pain
8228	R521 Chronic intractable pain
8229	R522 Other chronic pain
8230	R529 Pain, unspecified
8231	R53 Malaise and fatigue
8233	R55 Syncope and collapse
8234	R56 Convulsions, not elsewhere classified
8235	R560 Febrile convulsions
8236	R568 Other and unspecified convulsions
8237	R57 Shock, not elsewhere classified
8238	R570 Cardiogenic shock
8239	R571 Hypovolaemic shock
8240	R572 Septic shock
8241	R578 Other shock
8242	R579 Shock, unspecified
8243	R58 Haemorrhage, not elsewhere classified
8244	R59 Enlarged lymph nodes
8245	R590 Localized enlarged lymph nodes
8246	R591 Generalized enlarged lymph nodes
8247	R599 Enlarged lymph nodes, unspecified
8248	R60 Oedema, not elsewhere classified
8249	R600 Localized oedema
8250	R601 Generalized oedema
8251	R609 Oedema, unspecified
8252	R61 Hyperhidrosis
8253	R610 Localized hyperhidrosis
8254	R611 Generalized hyperhidrosis
8255	R619 Hyperhidrosis, unspecified
8256	R62 Lack of expected normal physiological development
8257	R620 Delayed milestone
8258	R628 Other lack of expected normal physiological development
8259	R629 Lack of expected normal physiological development, unspecified
8260	R63 Symptoms and signs concerning food and fluid intake
8261	R630 Anorexia
8262	R631 Polydipsia
8263	R632 Polyphagia
8264	R633 Feeding difficulties and mismanagement
8265	R634 Abnormal weight loss
8266	R635 Abnormal weight gain
8267	R636 Insufficient intake of food and water due to self neglect
8268	R638 Other symptoms and signs concerning food and fluid intake
8269	R64 Cachexia
8270	R65 Systemic Inflammatory Response Syndrome [SIRS]
8271	R650 Systemic Inflammatory Response Syndrome of infectious origin without organ failure
8272	R651 Systemic Inflammatory Response Syndrome of infectious origin with organ failure
8273	R652 Systemic Inflammatory Response Syndrome of non-infectious origin without organ failure
8274	R653 Systemic Inflammatory Response Syndrome of non-infectious origin with organ failure
8275	R659 Systemic Inflammatory Response Syndrome, unspecified
8276	R68 Other general symptoms and signs
8277	R680 Hypothermia, not associated with low environmental temperature
8278	R681 Nonspecific symptoms peculiar to infancy
8279	R682 Dry mouth, unspecified
8280	R683 Clubbing of fingers
8281	R688 Other specified general symptoms and signs
8282	R69 Unknown and unspecified causes of morbidity
8283	R70 Elevated erythrocyte sedimentation rate and abnormality of plasma viscosity
8284	R700 Elevated erythrocyte sedimentation rate
8285	R701 Abnormal plasma viscosity
8286	R71 Abnormality of red blood cells
8287	R72 Abnormality of white blood cells, not elsewhere classified
8288	R73 Elevated blood glucose level
8289	R730 Abnormal glucose tolerance test
8290	R739 Hyperglycaemia, unspecified
8291	R74 Abnormal serum enzyme levels
8292	R740 Elevation of levels of transaminase and lactic acid dehydrogenase [LDH]
8293	R748 Abnormal levels of other serum enzymes
8294	R749 Abnormal level of unspecified serum enzyme
8295	R75 Laboratory evidence of human immunodeficiency virus [HIV]
8296	R76 Other abnormal immunological findings in serum
8297	R760 Raised antibody titre
8298	R761 Abnormal reaction to tuberculin test
8299	R762 False-positive serological test for syphilis
8300	R768 Other specified abnormal immunological findings in serum
8301	R769 Abnormal immunological finding in serum, unspecified
8302	R77 Other abnormalities of plasma proteins
8303	R770 Abnormality of albumin
8304	R771 Abnormality of globulin
8305	R772 Abnormality of alphafetoprotein
8306	R778 Other specified abnormalities of plasma proteins
8307	R779 Abnormality of plasma protein, unspecified
8308	R78 Findings of drugs and other substances, not normally found in blood
8309	R780 Finding of alcohol in blood
8310	R781 Finding of opiate drug in blood
8311	R782 Finding of cocaine in blood
8312	R783 Finding of hallucinogen in blood
8313	R784 Finding of other drugs of addictive potential in blood
8314	R785 Finding of psychotropic drug in blood
8315	R786 Finding of steroid agent in blood
8316	R787 Finding of abnormal level of heavy metals in blood
8317	R788 Finding of other specified substances, not normally found in blood
8318	R789 Finding of unspecified substance, not normally found in blood
8319	R79 Other abnormal findings of blood chemistry
8320	R790 Abnormal level of blood mineral
8321	R798 Other specified abnormal findings of blood chemistry
8322	R799 Abnormal finding of blood chemistry, unspecified
8323	R80 Isolated proteinuria
8324	R81 Glycosuria
8325	R82 Other abnormal findings in urine
8326	R820 Chyluria
8327	R821 Myoglobinuria
8328	R822 Biliuria
8329	R823 Haemoglobinuria
8330	R824 Acetonuria
8331	R825 Elevated urine levels of drugs, medicaments and biological substances
8332	R826 Abnormal urine levels of substances chiefly nonmedicinal as to source
8333	R827 Abnormal findings on microbiological examination of urine
8334	R828 Abnormal findings on cytological and histological examination of urine
8335	S224 Multiple fractures of ribs
8336	S225 Flail chest
11778	Z563 Stressful work schedule
8337	R829 Other and unspecified abnormal findings in urine
8338	R83 Abnormal findings in cerebrospinal fluid
8339	R830 Abnormal findings in cerebrospinal fluid: Abnormal level of enzymes
8340	R831 Abnormal findings in cerebrospinal fluid: Abnormal level of hormones
8341	R832 Abnormal findings in cerebrospinal fluid: Abnormal level of other drugs, medicaments and biological substances
8342	R833 Abnormal findings in cerebrospinal fluid: Abnormal level of substances chiefly nonmedicinal as to source
8343	R834 Abnormal findings in cerebrospinal fluid: Abnormal immunological findings
8344	R835 Abnormal findings in cerebrospinal fluid: Abnormal microbiological findings
8345	R836 Abnormal findings in cerebrospinal fluid: Abnormal cytological findings
8346	R837 Abnormal findings in cerebrospinal fluid: Abnormal histological findings
8347	R838 Abnormal findings in cerebrospinal fluid: Other abnormal findings
8348	R839 Abnormal findings in cerebrospinal fluid: Unspecified abnormal finding
8349	R84 Abnormal findings in specimens from respiratory organs and thorax
8350	R840 Abnormal findings in specimens from respiratory organs and thorax: Abnormal level of enzymes
8351	R841 Abnormal findings in specimens from respiratory organs and thorax: Abnormal level of hormones
8352	R842 Abnormal findings in specimens from respiratory organs and thorax: Abnormal level of other drugs, medicaments and biological substances
8353	R843 Abnormal findings in specimens from respiratory organs and thorax: Abnormal level of substances chiefly nonmedicinal as to source
8354	R844 Abnormal findings in specimens from respiratory organs and thorax: Abnormal immunological findings
8355	R845 Abnormal findings in specimens from respiratory organs and thorax: Abnormal microbiological findings
8356	R846 Abnormal findings in specimens from respiratory organs and thorax: Abnormal cytological findings
8357	R847 Abnormal findings in specimens from respiratory organs and thorax: Abnormal histological findings
8358	R848 Abnormal findings in specimens from respiratory organs and thorax: Other abnormal findings
8359	R849 Abnormal findings in specimens from respiratory organs and thorax: Unspecified abnormal finding
8360	R85 Abnormal findings in specimens from digestive organs and abdominal cavity
8361	R850 Abnormal findings in specimens from digestive organs and abdominal cavity: Abnormal level of enzymes
8362	R851 Abnormal findings in specimens from digestive organs and abdominal cavity: Abnormal level of hormones
8363	R852 Abnormal findings in specimens from digestive organs and abdominal cavity: Abnormal level of other drugs, medicaments and biological substances
8364	R853 Abnormal findings in specimens from digestive organs and abdominal cavity: Abnormal level of substances chiefly nonmedicinal as to source
8365	R854 Abnormal findings in specimens from digestive organs and abdominal cavity: Abnormal immunological findings
8366	R855 Abnormal findings in specimens from digestive organs and abdominal cavity: Abnormal microbiological findings
8367	R856 Abnormal findings in specimens from digestive organs and abdominal cavity: Abnormal cytological findings
8368	R857 Abnormal findings in specimens from digestive organs and abdominal cavity: Abnormal histological findings
8369	R858 Abnormal findings in specimens from digestive organs and abdominal cavity: Other abnormal findings
8370	R859 Abnormal findings in specimens from digestive organs and abdominal cavity: Unspecified abnormal finding
8371	R86 Abnormal findings in specimens from male genital organs
8372	R860 Abnormal findings in specimens from male genital organs: Abnormal level of enzymes
8373	R861 Abnormal findings in specimens from male genital organs: Abnormal level of hormones
8374	R862 Abnormal findings in specimens from male genital organs: Abnormal level of other drugs, medicaments and biological substances
8375	R863 Abnormal findings in specimens from male genital organs: Abnormal level of substances chiefly nonmedicinal as to source
8376	R864 Abnormal findings in specimens from male genital organs: Abnormal immunological findings
8377	R865 Abnormal findings in specimens from male genital organs: Abnormal microbiological findings
8378	R866 Abnormal findings in specimens from male genital organs: Abnormal cytological findings
8379	R867 Abnormal findings in specimens from male genital organs: Abnormal histological findings
8380	R868 Abnormal findings in specimens from male genital organs: Other abnormal findings
8381	R869 Abnormal findings in specimens from male genital organs: Unspecified abnormal finding
8382	R87 Abnormal findings in specimens from female genital organs
8383	R870 Abnormal findings in specimens from female genital organs: Abnormal level of enzymes
8384	R871 Abnormal findings in specimens from female genital organs: Abnormal level of hormones
8385	R872 Abnormal findings in specimens from female genital organs: Abnormal level of other drugs, medicaments and biological substances
8386	R873 Abnormal findings in specimens from female genital organs: Abnormal level of substances chiefly nonmedicinal as to source
8387	R874 Abnormal findings in specimens from female genital organs: Abnormal immunological findings
8388	R875 Abnormal findings in specimens from female genital organs: Abnormal microbiological findings
8389	R876 Abnormal findings in specimens from female genital organs: Abnormal cytological findings
8390	R877 Abnormal findings in specimens from female genital organs: Abnormal histological findings
8391	R878 Abnormal findings in specimens from female genital organs: Other abnormal findings
8392	R879 Abnormal findings in specimens from female genital organs: Unspecified abnormal finding
8393	R89 Abnormal findings in specimens from other organs, systems and tissues
8394	R890 Abnormal findings in specimens from other organs, systems and tissues: Abnormal level of enzymes
8395	R891 Abnormal findings in specimens from other organs, systems and tissues: Abnormal level of hormones
8396	R892 Abnormal findings in specimens from other organs, systems and tissues: Abnormal level of other drugs, medicaments and biological substances
8397	S054 Penetrating wound of orbit with or without foreign body
8398	R893 Abnormal findings in specimens from other organs, systems and tissues: Abnormal level of substances chiefly nonmedicinal as to source
8399	R894 Abnormal findings in specimens from other organs, systems and tissues: Abnormal immunological findings
8400	R895 Abnormal findings in specimens from other organs, systems and tissues: Abnormal microbiological findings
8401	R896 Abnormal findings in specimens from other organs, systems and tissues: Abnormal cytological findings
8402	R897 Abnormal findings in specimens from other organs, systems and tissues: Abnormal histological findings
8403	R898 Abnormal findings in specimens from other organs, systems and tissues: Other abnormal findings
8404	R899 Abnormal findings in specimens from other organs, systems and tissues: Unspecified abnormal finding
8405	R90 Abnormal findings on diagnostic imaging of central nervous system
8406	R900 Intracranial space-occupying lesion
8407	R908 Other abnormal findings on diagnostic imaging of central nervous system
8408	R91 Abnormal findings on diagnostic imaging of lung
8409	R92 Abnormal findings on diagnostic imaging of breast
8410	R93 Abnormal findings on diagnostic imaging of other body structures
8411	R930 Abnormal findings on diagnostic imaging of skull and head, not elsewhere classified
8412	R931 Abnormal findings on diagnostic imaging of heart and coronary circulation
8413	R932 Abnormal findings on diagnostic imaging of liver and biliary tract
8414	R933 Abnormal findings on diagnostic imaging of other parts of digestive tract
8415	R934 Abnormal findings on diagnostic imaging of urinary organs
8416	R935 Abnormal findings on diagnostic imaging of other abdominal regions, including retroperitoneum
8417	R936 Abnormal findings on diagnostic imaging of limbs
8418	R937 Abnormal findings on diagnostic imaging of other parts of musculoskeletal system
8419	R938 Abnormal findings on diagnostic imaging of other specified body structures
8420	R94 Abnormal results of function studies
8421	R940 Abnormal results of function studies of central nervous system
8422	R941 Abnormal results of function studies of peripheral nervous system and special senses
8423	R942 Abnormal results of pulmonary function studies
8424	R943 Abnormal results of cardiovascular function studies
8425	R944 Abnormal results of kidney function studies
8426	R945 Abnormal results of liver function studies
8427	R946 Abnormal results of thyroid function studies
8428	R947 Abnormal results of other endocrine function studies
8429	R948 Abnormal results of function studies of other organs and systems
8430	R95 Sudden infant death syndrome
8431	R96 Other sudden death, cause unknown
8432	R960 Instantaneous death
8433	R961 Death occurring less than 24 hours from onset of symptoms, not otherwise explained
8434	R98 Unattended death
8435	R99 Other ill-defined and unspecified causes of mortality
8436	S00 Superficial injury of head
8437	S000 Superficial injury of scalp
8438	S001 Contusion of eyelid and periocular area
8439	S002 Other superficial injuries of eyelid and periocular area
8440	S003 Superficial injury of nose
8441	S004 Superficial injury of ear
8442	S005 Superficial injury of lip and oral cavity
8443	S007 Multiple superficial injuries of head
8444	S008 Superficial injury of other parts of head
8445	S009 Superficial injury of head, part unspecified
8446	S01 Open wound of head
8447	S010 Open wound of scalp
8448	S011 Open wound of eyelid and periocular area
8449	S012 Open wound of nose
8450	S013 Open wound of ear
8451	S014 Open wound of cheek and temporomandibular area
8452	S015 Open wound of lip and oral cavity
8453	S017 Multiple open wounds of head
8454	S018 Open wound of other parts of head
8455	S019 Open wound of head, part unspecified
8456	S02 Fracture of skull and facial bones
8457	S020 Fracture of vault of skull
8458	S021 Fracture of base of skull
8459	S022 Fracture of nasal bones
8460	S023 Fracture of orbital floor
8461	S024 Fracture of malar and maxillary bones
8462	S025 Fracture of tooth
8463	S026 Fracture of mandible
8464	S027 Multiple fractures involving skull and facial bones
8465	S028 Fractures of other skull and facial bones
8466	S029 Fracture of skull and facial bones, part unspecified
8467	S03 Dislocation, sprain and strain of joints and ligaments of head
8468	S030 Dislocation of jaw
8469	S031 Dislocation of septal cartilage of nose
8470	S032 Dislocation of tooth
8471	S033 Dislocation of other and unspecified parts of head
8472	S034 Sprain and strain of jaw
8473	S035 Sprain and strain of joints and ligaments of other and unspecified parts of head
8474	S04 Injury of cranial nerves
8475	S040 Injury of optic nerve and pathways
8476	S041 Injury of oculomotor nerve
8477	S042 Injury of trochlear nerve
8478	S043 Injury of trigeminal nerve
8479	S044 Injury of abducent nerve
8480	S045 Injury of facial nerve
8481	S046 Injury of acoustic nerve
8482	S047 Injury of accessory nerve
8483	S048 Injury of other cranial nerves
8484	S049 Injury of unspecified cranial nerve
8485	S05 Injury of eye and orbit
8486	S050 Injury of conjunctiva and corneal abrasion without mention of foreign body
8487	S051 Contusion of eyeball and orbital tissues
8488	S052 Ocular laceration and rupture with prolapse or loss of intraocular tissue
8489	S053 Ocular laceration without prolapse or loss of intraocular tissue
8490	S055 Penetrating wound of eyeball with foreign body
8491	S056 Penetrating wound of eyeball without foreign body
8492	S057 Avulsion of eye
8493	S058 Other injuries of eye and orbit
8494	S059 Injury of eye and orbit, unspecified
8495	S06 Intracranial injury
8496	S060 Concussion
8497	S061 Traumatic cerebral oedema
8498	S062 Diffuse brain injury
8499	S063 Focal brain injury
8500	S064 Epidural haemorrhage
8501	S065 Traumatic subdural haemorrhage
8502	S066 Traumatic subarachnoid haemorrhage
8503	S067 Intracranial injury with prolonged coma
8504	S068 Other intracranial injuries
8505	S069 Intracranial injury, unspecified
8506	S07 Crushing injury of head
8507	S070 Crushing injury of face
8508	S071 Crushing injury of skull
8509	S078 Crushing injury of other parts of head
8510	S079 Crushing injury of head, part unspecified
8511	S08 Traumatic amputation of part of head
8512	S080 Avulsion of scalp
8513	S081 Traumatic amputation of ear
8514	S088 Traumatic amputation of other parts of head
8515	S089 Traumatic amputation of unspecified part of head
8516	S09 Other and unspecified injuries of head
8517	S090 Injury of blood vessels of head, not elsewhere classified
8518	S091 Injury of muscle and tendon of head
8519	S092 Traumatic rupture of ear drum
8520	S097 Multiple injuries of head
8521	S098 Other specified injuries of head
8522	S099 Unspecified injury of head
8523	S10 Superficial injury of neck
8524	S100 Contusion of throat
8525	S101 Other and unspecified superficial injuries of throat
8526	S107 Multiple superficial injuries of neck
8527	S108 Superficial injury of other parts of neck
8528	S109 Superficial injury of neck, part unspecified
8529	S11 Open wound of neck
8530	S110 Open wound involving larynx and trachea
8531	S111 Open wound involving thyroid gland
8532	S112 Open wound involving pharynx and cervical oesophagus
8533	S117 Multiple open wounds of neck
8534	S118 Open wound of other parts of neck
8535	S119 Open wound of neck, part unspecified
8536	S12 Fracture of neck
8537	S120 Fracture of first cervical vertebra
8538	S121 Fracture of second cervical vertebra
8539	S122 Fracture of other specified cervical vertebra
8540	S127 Multiple fractures of cervical spine
8541	S128 Fracture of other parts of neck
8542	S129 Fracture of neck, part unspecified
8543	S13 Dislocation, sprain and strain of joints and ligaments at neck level
8544	S130 Traumatic rupture of cervical intervertebral disc
8545	S131 Dislocation of cervical vertebra
8546	S132 Dislocation of other and unspecified parts of neck
8547	S133 Multiple dislocations of neck
8548	S134 Sprain and strain of cervical spine
8549	S135 Sprain and strain of thyroid region
8550	S136 Sprain and strain of joints and ligaments of other and unspecified parts of neck
8551	S14 Injury of nerves and spinal cord at neck level
8552	S140 Concussion and oedema of cervical spinal cord
8553	S141 Other and unspecified injuries of cervical spinal cord
8554	S142 Injury of nerve root of cervical spine
8555	S143 Injury of brachial plexus
8556	S144 Injury of peripheral nerves of neck
8557	S145 Injury of cervical sympathetic nerves
8558	S146 Injury of other and unspecified nerves of neck
8559	S15 Injury of blood vessels at neck level
8560	S150 Injury of carotid artery
8561	S151 Injury of vertebral artery
8562	S152 Injury of external jugular vein
8563	S153 Injury of internal jugular vein
8564	S157 Injury of multiple blood vessels at neck level
8565	S158 Injury of other blood vessels at neck level
8566	S159 Injury of unspecified blood vessel at neck level
8567	S16 Injury of muscle and tendon at neck level
8568	S17 Crushing injury of neck
8569	S170 Crushing injury of larynx and trachea
8570	S178 Crushing injury of other parts of neck
8571	S179 Crushing injury of neck, part unspecified
8572	S18 Traumatic amputation at neck level
8573	S19 Other and unspecified injuries of neck
8574	S197 Multiple injuries of neck
8575	S198 Other specified injuries of neck
8576	S199 Unspecified injury of neck
8577	S20 Superficial injury of thorax
8578	S200 Contusion of breast
8579	S201 Other and unspecified superficial injuries of breast
8580	S202 Contusion of thorax
8581	S203 Other superficial injuries of front wall of thorax
8582	S204 Other superficial injuries of back wall of thorax
8583	S207 Multiple superficial injuries of thorax
8584	S208 Superficial injury of other and unspecified parts of thorax
8585	S21 Open wound of thorax
8586	S210 Open wound of breast
8587	S211 Open wound of front wall of thorax
8588	S212 Open wound of back wall of thorax
8589	S217 Multiple open wounds of thoracic wall
8590	S218 Open wound of other parts of thorax
8591	S219 Open wound of thorax, part unspecified
8592	S22 Fracture of rib(s), sternum and thoracic spine
8593	S220 Fracture of thoracic vertebra
8594	S221 Multiple fractures of thoracic spine
8595	S222 Fracture of sternum
8596	S223 Fracture of rib
8597	S228 Fracture of other parts of bony thorax
8598	S229 Fracture of bony thorax, part unspecified
8599	S23 Dislocation, sprain and strain of joints and ligaments of thorax
8600	S230 Traumatic rupture of thoracic intervertebral disc
8601	S231 Dislocation of thoracic vertebra
8602	S232 Dislocation of other and unspecified parts of thorax
8603	S233 Sprain and strain of thoracic spine
8604	S234 Sprain and strain of ribs and sternum
8605	S235 Sprain and strain of other and unspecified parts of thorax
8606	S24 Injury of nerves and spinal cord at thorax level
8607	S240 Concussion and oedema of thoracic spinal cord
8608	S241 Other and unspecified injuries of thoracic spinal cord
8609	S242 Injury of nerve root of thoracic spine
8610	S243 Injury of peripheral nerves of thorax
8611	S244 Injury of thoracic sympathetic nerves
8612	S245 Injury of other nerves of thorax
8613	S246 Injury of unspecified nerve of thorax
8614	S25 Injury of blood vessels of thorax
8615	S250 Injury of thoracic aorta
8616	S251 Injury of innominate or subclavian artery
8617	S252 Injury of superior vena cava
8618	S253 Injury of innominate or subclavian vein
8619	S254 Injury of pulmonary blood vessels
8620	S255 Injury of intercostal blood vessels
8621	S257 Injury of multiple blood vessels of thorax
8622	S258 Injury of other blood vessels of thorax
8623	S259 Injury of unspecified blood vessel of thorax
8624	S26 Injury of heart
8625	S260 Injury of heart with haemopericardium
8626	S268 Other injuries of heart
8627	S269 Injury of heart, unspecified
8628	S27 Injury of other and unspecified intrathoracic organs
8629	S270 Traumatic pneumothorax
8630	S271 Traumatic haemothorax
8631	S272 Traumatic haemopneumothorax
8632	S273 Other injuries of lung
8633	S274 Injury of bronchus
8634	S275 Injury of thoracic trachea
8635	S276 Injury of pleura
8636	S277 Multiple injuries of intrathoracic organs
8637	S278 Injury of other specified intrathoracic organs
8638	S279 Injury of unspecified intrathoracic organ
8639	S28 Crushing injury of thorax and traumatic amputation of part of thorax
8640	S280 Crushed chest
8641	S281 Traumatic amputation of part of thorax
8642	S29 Other and unspecified injuries of thorax
8643	S290 Injury of muscle and tendon at thorax level
8644	S297 Multiple injuries of thorax
8645	S298 Other specified injuries of thorax
8646	S299 Unspecified injury of thorax
8647	S30 Superficial injury of abdomen, lower back and pelvis
8648	S300 Contusion of lower back and pelvis
8649	S301 Contusion of abdominal wall
8650	S302 Contusion of external genital organs
8651	S307 Multiple superficial injuries of abdomen, lower back and pelvis
8652	S308 Other superficial injuries of abdomen, lower back and pelvis
8653	S309 Superficial injury of abdomen, lower back and pelvis, part unspecified
8654	S31 Open wound of abdomen, lower back and pelvis
8655	S310 Open wound of lower back and pelvis
8656	S311 Open wound of abdominal wall
8657	S312 Open wound of penis
8658	S313 Open wound of scrotum and testes
8659	S314 Open wound of vagina and vulva
8660	S315 Open wound of other and unspecified external genital organs
8661	S317 Multiple open wounds of abdomen, lower back and pelvis
8662	S318 Open wound of other and unspecified parts of abdomen
8663	S32 Fracture of lumbar spine and pelvis
8664	S320 Fracture of lumbar vertebra
8665	S321 Fracture of sacrum
8666	S322 Fracture of coccyx
8667	S323 Fracture of ilium
8668	S324 Fracture of acetabulum
8669	S325 Fracture of pubis
8670	S327 Multiple fractures of lumbar spine and pelvis
8671	S328 Fracture of other and unspecified parts of lumbar spine and pelvis
8672	S33 Dislocation, sprain and strain of joints and ligaments of lumbar spine and pelvis
8673	S330 Traumatic rupture of lumbar intervertebral disc
8674	S331 Dislocation of lumbar vertebra
8675	S332 Dislocation of sacroiliac and sacrococcygeal joint
8676	S333 Dislocation of other and unspecified parts of lumbar spine and pelvis
8677	S334 Traumatic rupture of symphysis pubis
8678	S335 Sprain and strain of lumbar spine
8679	S336 Sprain and strain of sacroiliac joint
8680	S337 Sprain and strain of other and unspecified parts of lumbar spine and pelvis
8681	S34 Injury of nerves and lumbar spinal cord at abdomen, lower back and pelvis level
8682	S340 Concussion and oedema of lumbar spinal cord
8683	S341 Other injury of lumbar spinal cord
8684	S342 Injury of nerve root of lumbar and sacral spine
8685	S343 Injury of cauda equina
8686	S344 Injury of lumbosacral plexus
8687	S345 Injury of lumbar, sacral and pelvic sympathetic nerves
8688	S346 Injury of peripheral nerve(s) of abdomen, lower back and pelvis
8689	S348 Injury of other and unspecified nerves at abdomen, lower back and pelvis level
8690	S35 Injury of blood vessels at abdomen, lower back and pelvis level
8691	S350 Injury of abdominal aorta
8692	S351 Injury of inferior vena cava
8693	S352 Injury of coeliac or mesenteric artery
8694	S353 Injury of portal or splenic vein
8695	S354 Injury of renal blood vessels
8696	S355 Injury of iliac blood vessels
8697	S49 Other and unspecified injuries of shoulder and upper arm
8698	S357 Injury of multiple blood vessels at abdomen, lower back and pelvis level
8699	S358 Injury of other blood vessels at abdomen, lower back and pelvis level
8700	S359 Injury of unspecified blood vessel at abdomen, lower back and pelvis level
8701	S36 Injury of intra-abdominal organs
8702	S360 Injury of spleen
8703	S361 Injury of liver or gallbladder
8704	S362 Injury of pancreas
8705	S363 Injury of stomach
8706	S364 Injury of small intestine
8707	S365 Injury of colon
8708	S366 Injury of rectum
8709	S367 Injury of multiple intra-abdominal organs
8710	S368 Injury of other intra-abdominal organs
8711	S369 Injury of unspecified intra-abdominal organ
8712	S37 Injury of urinary and pelvic organs
8713	S370 Injury of kidney
8714	S371 Injury of ureter
8715	S372 Injury of bladder
8716	S373 Injury of urethra
8717	S374 Injury of ovary
8718	S375 Injury of fallopian tube
8719	S376 Injury of uterus
8720	S377 Injury of multiple pelvic organs
8721	S378 Injury of other pelvic organs
8722	S379 Injury of unspecified pelvic organ
8723	S38 Crushing injury and traumatic amputation of part of abdomen, lower back and pelvis
8724	S380 Crushing injury of external genital organs
8725	S381 Crushing injury of other and unspecified parts of abdomen, lower back and pelvis
8726	S382 Traumatic amputation of external genital organs
8727	S383 Traumatic amputation of other and unspecified parts of abdomen, lower back and pelvis
8728	S39 Other and unspecified injuries of abdomen, lower back and pelvis
8729	S390 Injury of muscle and tendon of abdomen, lower back and pelvis
8730	S396 Injury of intra-abdominal organ(s) with pelvic organ(s)
8731	S397 Other multiple injuries of abdomen, lower back and pelvis
8732	S398 Other specified injuries of abdomen, lower back and pelvis
8733	S399 Unspecified injury of abdomen, lower back and pelvis
8734	S40 Superficial injury of shoulder and upper arm
8735	S400 Contusion of shoulder and upper arm
8736	S407 Multiple superficial injuries of shoulder and upper arm
8737	S408 Other superficial injuries of shoulder and upper arm
8738	S409 Superficial injury of shoulder and upper arm, unspecified
8739	S41 Open wound of shoulder and upper arm
8740	S410 Open wound of shoulder
8741	S411 Open wound of upper arm
8742	S417 Multiple open wounds of shoulder and upper arm
8743	S418 Open wound of other and unspecified parts of shoulder girdle
8744	S42 Fracture of shoulder and upper arm
8745	S420 Fracture of clavicle
8746	S421 Fracture of scapula
8747	S422 Fracture of upper end of humerus
8748	S423 Fracture of shaft of humerus
8749	S424 Fracture of lower end of humerus
8750	S427 Multiple fractures of clavicle, scapula and humerus
8751	S428 Fracture of other parts of shoulder and upper arm
8752	S429 Fracture of shoulder girdle, part unspecified
8753	S43 Dislocation, sprain and strain of joints and ligaments of shoulder girdle
8754	S430 Dislocation of shoulder joint
8755	S431 Dislocation of acromioclavicular joint
8756	S432 Dislocation of sternoclavicular joint
8757	S433 Dislocation of other and unspecified parts of shoulder girdle
8758	S434 Sprain and strain of shoulder joint
8759	S435 Sprain and strain of acromioclavicular joint
8760	S436 Sprain and strain of sternoclavicular joint
8761	S437 Sprain and strain of other and unspecified parts of shoulder girdle
8762	S44 Injury of nerves at shoulder and upper arm level
8763	S440 Injury of ulnar nerve at upper arm level
8764	S441 Injury of median nerve at upper arm level
8765	S442 Injury of radial nerve at upper arm level
8766	S443 Injury of axillary nerve
8767	S444 Injury of musculocutaneous nerve
8768	S445 Injury of cutaneous sensory nerve at shoulder and upper arm level
8769	S447 Injury of multiple nerves at shoulder and upper arm level
8770	S448 Injury of other nerves at shoulder and upper arm level
8771	S449 Injury of unspecified nerve at shoulder and upper arm level
8772	S45 Injury of blood vessels at shoulder and upper arm level
8773	S450 Injury of axillary artery
8774	S451 Injury of brachial artery
8775	S452 Injury of axillary or brachial vein
8776	S453 Injury of superficial vein at shoulder and upper arm level
8777	S457 Injury of multiple blood vessels at shoulder and upper arm level
8778	S458 Injury of other blood vessels at shoulder and upper arm level
8779	S459 Injury of unspecified blood vessel at shoulder and upper arm level
8780	S46 Injury of muscle and tendon at shoulder and upper arm level
8781	S460 Injury of muscle(s) and tendon(s) of the rotator cuff of shoulder
8782	S461 Injury of muscle and tendon of long head of biceps
8783	S462 Injury of muscle and tendon of other parts of biceps
8784	S463 Injury of muscle and tendon of triceps
8785	S467 Injury of multiple muscles and tendons at shoulder and upper arm level
8786	S468 Injury of other muscles and tendons at shoulder and upper arm level
8787	S469 Injury of unspecified muscle and tendon at shoulder and upper arm level
8788	S47 Crushing injury of shoulder and upper arm
8789	S48 Traumatic amputation of shoulder and upper arm
8790	S480 Traumatic amputation at shoulder joint
8791	S481 Traumatic amputation at level between shoulder and elbow
8792	S489 Traumatic amputation of shoulder and upper arm, level unspecified
8793	S497 Multiple injuries of shoulder and upper arm
8794	S498 Other specified injuries of shoulder and upper arm
8795	S499 Unspecified injury of shoulder and upper arm
8796	S50 Superficial injury of forearm
8797	S500 Contusion of elbow
8798	S501 Contusion of other and unspecified parts of forearm
8799	S507 Multiple superficial injuries of forearm
8800	S508 Other superficial injuries of forearm
8801	S509 Superficial injury of forearm, unspecified
8802	S51 Open wound of forearm
8803	S510 Open wound of elbow
8804	S517 Multiple open wounds of forearm
8805	S518 Open wound of other parts of forearm
8806	S519 Open wound of forearm, part unspecified
8807	S52 Fracture of forearm
8808	S520 Fracture of upper end of ulna
8809	S521 Fracture of upper end of radius
8810	S522 Fracture of shaft of ulna
8811	S523 Fracture of shaft of radius
8812	S524 Fracture of shafts of both ulna and radius
8813	S525 Fracture of lower end of radius
8814	S526 Fracture of lower end of both ulna and radius
8815	S527 Multiple fractures of forearm
8816	S528 Fracture of other parts of forearm
8817	S529 Fracture of forearm, part unspecified
8818	S53 Dislocation, sprain and strain of joints and ligaments of elbow
8819	S530 Dislocation of radial head
8820	S531 Dislocation of elbow, unspecified
8821	S532 Traumatic rupture of radial collateral ligament
8822	S533 Traumatic rupture of ulnar collateral ligament
8823	S534 Sprain and strain of elbow
8824	S54 Injury of nerves at forearm level
8825	S540 Injury of ulnar nerve at forearm level
8826	S541 Injury of median nerve at forearm level
8827	S542 Injury of radial nerve at forearm level
8828	S543 Injury of cutaneous sensory nerve at forearm level
8829	S547 Injury of multiple nerves at forearm level
8830	S548 Injury of other nerves at forearm level
8831	S549 Injury of unspecified nerve at forearm level
8832	S55 Injury of blood vessels at forearm level
8833	S550 Injury of ulnar artery at forearm level
8834	S551 Injury of radial artery at forearm level
8835	S552 Injury of vein at forearm level
8836	S557 Injury of multiple blood vessels at forearm level
8837	S558 Injury of other blood vessels at forearm level
8838	S559 Injury of unspecified blood vessel at forearm level
8839	S56 Injury of muscle and tendon at forearm level
8840	S560 Injury of flexor muscle and tendon of thumb at forearm level
8841	S561 Injury of long flexor muscle and tendon of other finger(s) at forearm level
8842	S562 Injury of other flexor muscle and tendon at forearm level
8843	S563 Injury of extensor or abductor muscles and tendons of thumb at forearm level
8844	S564 Injury of extensor muscle and tendon of other finger(s) at forearm level
8845	S565 Injury of other extensor muscle and tendon at forearm level
8846	S567 Injury of multiple muscles and tendons at forearm level
8847	S568 Injury of other and unspecified muscles and tendons at forearm level
8848	S57 Crushing injury of forearm
8849	S570 Crushing injury of elbow
8850	S578 Crushing injury of other parts of forearm
8851	S579 Crushing injury of forearm, part unspecified
8852	S58 Traumatic amputation of forearm
8853	S580 Traumatic amputation at elbow level
8854	S581 Traumatic amputation at level between elbow and wrist
8855	S589 Traumatic amputation of forearm, level unspecified
8856	S59 Other and unspecified injuries of forearm
8857	S597 Multiple injuries of forearm
8858	S598 Other specified injuries of forearm
8859	S599 Unspecified injury of forearm
8860	S60 Superficial injury of wrist and hand
8861	S600 Contusion of finger(s) without damage to nail
8862	S601 Contusion of finger(s) with damage to nail
8863	S602 Contusion of other parts of wrist and hand
8864	S607 Multiple superficial injuries of wrist and hand
8865	S608 Other superficial injuries of wrist and hand
8866	S609 Superficial injury of wrist and hand, unspecified
8867	S61 Open wound of wrist and hand
8868	S610 Open wound of finger(s) without damage to nail
8869	S611 Open wound of finger(s) with damage to nail
8870	S617 Multiple open wounds of wrist and hand
8871	S618 Open wound of other parts of wrist and hand
8872	S619 Open wound of wrist and hand part, part unspecified
8873	S62 Fracture at wrist and hand level
8874	S620 Fracture of navicular [scaphoid] bone of hand
8875	S621 Fracture of other carpal bone(s)
8876	S622 Fracture of first metacarpal bone
8877	S623 Fracture of other metacarpal bone
8878	S624 Multiple fractures of metacarpal bones
8879	S625 Fracture of thumb
8880	S626 Fracture of other finger
8881	S627 Multiple fractures of fingers
8882	S628 Fracture of other and unspecified parts of wrist and hand
8883	S63 Dislocation, sprain and strain of joints and ligaments at wrist and hand level
8884	S630 Dislocation of wrist
8885	S631 Dislocation of finger
8886	S632 Multiple dislocations of fingers
8887	S633 Traumatic rupture of ligament of wrist and carpus
8888	S634 Traumatic rupture of ligament of finger at metacarpophalangeal and interphalangeal joint(s)
8889	S635 Sprain and strain of wrist
8890	S636 Sprain and strain of finger(s)
8891	S637 Sprain and strain of other and unspecified parts of hand
8892	S64 Injury of nerves at wrist and hand level
8893	S640 Injury of ulnar nerve at wrist and hand level
8894	S641 Injury of median nerve at wrist and hand level
8895	S642 Injury of radial nerve at wrist and hand level
8896	S643 Injury of digital nerve of thumb
8897	S644 Injury of digital nerve of other finger
8898	S647 Injury of multiple nerves at wrist and hand level
8899	S648 Injury of other nerves at wrist and hand level
8900	S649 Injury of unspecified nerve at wrist and hand level
8901	S65 Injury of blood vessels at wrist and hand level
8902	S650 Injury of ulnar artery at wrist and hand level
8903	S651 Injury of radial artery at wrist and hand level
8904	S652 Injury of superficial palmar arch
8905	S653 Injury of deep palmar arch
8906	S654 Injury of blood vessel(s) of thumb
8907	S655 Injury of blood vessel(s) of other finger
8908	S657 Injury of multiple blood vessels at wrist and hand level
8909	S658 Injury of other blood vessels at wrist and hand level
8910	S659 Injury of unspecified blood vessel at wrist and hand level
8911	S66 Injury of muscle and tendon at wrist and hand level
8912	S660 Injury of long flexor muscle and tendon of thumb at wrist and hand level
8913	S661 Injury of flexor muscle and tendon of other finger at wrist and hand level
8914	S662 Injury of extensor muscle and tendon of thumb at wrist and hand level
8915	S663 Injury of extensor muscle and tendon of other finger at wrist and hand level
8916	S664 Injury of intrinsic muscle and tendon of thumb at wrist and hand level
8917	S665 Injury of intrinsic muscle and tendon of other finger at wrist and hand level
8918	S666 Injury of multiple flexor muscles and tendons at wrist and hand level
8919	S667 Injury of multiple extensor muscles and tendons at wrist and hand level
8920	S668 Injury of other muscles and tendons at wrist and hand level
8921	S669 Injury of unspecified muscle and tendon at wrist and hand level
8922	S67 Crushing injury of wrist and hand
8923	S670 Crushing injury of thumb and other finger(s)
8924	S678 Crushing injury of other and unspecified parts of wrist and hand
8925	S68 Traumatic amputation of wrist and hand
8926	S680 Traumatic amputation of thumb (complete)(partial)
8927	S681 Traumatic amputation of other single finger (complete)(partial)
8928	S682 Traumatic amputation of two or more fingers alone (complete)(partial)
8929	S683 Combined traumatic amputation of (part of) finger(s) with other parts of wrist and hand
8930	S684 Traumatic amputation of hand at wrist level
8931	S688 Traumatic amputation of other parts of wrist and hand
8932	S689 Traumatic amputation of wrist and hand, level unspecified
8933	S69 Other and unspecified injuries of wrist and hand
8934	S697 Multiple injuries of wrist and hand
8935	S698 Other specified injuries of wrist and hand
8936	S699 Unspecified injury of wrist and hand
8937	S70 Superficial injury of hip and thigh
8938	S700 Contusion of hip
8939	S701 Contusion of thigh
8940	S707 Multiple superficial injuries of hip and thigh
8941	S708 Other superficial injuries of hip and thigh
8942	S709 Superficial injury of hip and thigh, unspecified
8943	S71 Open wound of hip and thigh
8944	S710 Open wound of hip
8945	S711 Open wound of thigh
8946	S717 Multiple open wounds of hip and thigh
8947	S718 Open wound of other and unspecified parts of pelvic girdle
8948	S72 Fracture of femur
8949	S720 Fracture of neck of femur
8950	S721 Pertrochanteric fracture
8951	S722 Subtrochanteric fracture
8952	S723 Fracture of shaft of femur
8953	S724 Fracture of lower end of femur
8954	S727 Multiple fractures of femur
8955	S728 Fractures of other parts of femur
8956	S729 Fracture of femur, part unspecified
8957	S73 Dislocation, sprain and strain of joint and ligaments of hip
8958	S730 Dislocation of hip
8959	S731 Sprain and strain of hip
8960	S74 Injury of nerves at hip and thigh level
8961	S740 Injury of sciatic nerve at hip and thigh level
8962	S741 Injury of femoral nerve at hip and thigh level
8963	S742 Injury of cutaneous sensory nerve at hip and thigh level
8964	S747 Injury of multiple nerves at hip and thigh level
8965	S748 Injury of other nerves at hip and thigh level
8966	S749 Injury of unspecified nerve at hip and thigh level
8967	S75 Injury of blood vessels at hip and thigh level
8968	S750 Injury of femoral artery
8969	S751 Injury of femoral vein at hip and thigh level
8970	S752 Injury of greater saphenous vein at hip and thigh level
8971	S757 Injury of multiple blood vessels at hip and thigh level
8972	S758 Injury of other blood vessels at hip and thigh level
8973	S759 Injury of unspecified blood vessel at hip and thigh level
8974	S76 Injury of muscle and tendon at hip and thigh level
8975	S760 Injury of muscle and tendon of hip
8976	S761 Injury of quadriceps muscle and tendon
8977	S762 Injury of adductor muscle and tendon of thigh
8978	S763 Injury of muscle and tendon of the posterior muscle group at thigh level
8979	S764 Injury of other and unspecified muscles and tendons at thigh level
8980	S767 Injury of multiple muscles and tendons at hip and thigh level
8981	S77 Crushing injury of hip and thigh
8982	S770 Crushing injury of hip
8983	S771 Crushing injury of thigh
8984	S772 Crushing injury of hip with thigh
8985	S78 Traumatic amputation of hip and thigh
8986	S780 Traumatic amputation at hip joint
8987	S781 Traumatic amputation at level between hip and knee
8988	S789 Traumatic amputation of hip and thigh, level unspecified
8989	S79 Other and specified injuries of hip and thigh
8990	S797 Multiple injuries of hip and thigh
8991	S798 Other specified injuries of hip and thigh
8992	S799 Unspecified injury of hip and thigh
8993	S80 Superficial injury of lower leg
8994	S800 Contusion of knee
8995	S801 Contusion of other and unspecified parts of lower leg
8996	S807 Multiple superficial injuries of lower leg
8997	S808 Other superficial injuries of lower leg
8998	S809 Superficial injury of lower leg, unspecified
8999	S81 Open wound of lower leg
9000	S810 Open wound of knee
9001	S817 Multiple open wounds of lower leg
9002	S818 Open wound of other parts of lower leg
9003	S819 Open wound of lower leg, part unspecified
9004	S82 Fracture of lower leg, including ankle
9005	S820 Fracture of patella
9006	S821 Fracture of upper end of tibia
9007	S822 Fracture of shaft of tibia
9008	S823 Fracture of lower end of tibia
9009	S824 Fracture of fibula alone
9010	S825 Fracture of medial malleolus
9011	S826 Fracture of lateral malleolus
9012	S827 Multiple fractures of lower leg
9013	S828 Fractures of other parts of lower leg
9014	S829 Fracture of lower leg, part unspecified
9015	S83 Dislocation, sprain and strain of joints and ligaments of knee
9016	S830 Dislocation of patella
9017	S831 Dislocation of knee
9018	S832 Tear of meniscus, current
9019	S833 Tear of articular cartilage of knee, current
9020	S834 Sprain and strain involving (fibular)(tibial) collateral ligament of knee
9021	S835 Sprain and strain involving (anterior)(posterior) cruciate ligament of knee
9022	S836 Sprain and strain of other and unspecified parts of knee
9023	S837 Injury to multiple structures of knee
9024	S84 Injury of nerves at lower leg level
9025	S840 Injury of tibial nerve at lower leg level
9026	S841 Injury of peroneal nerve at lower leg level
9027	S842 Injury of cutaneous sensory nerve at lower leg level
9028	S847 Injury of multiple nerves at lower leg level
9029	S848 Injury of other nerves at lower leg level
9030	S849 Injury of unspecified nerve at lower leg level
9031	S85 Injury of blood vessels at lower leg level
9032	S850 Injury of popliteal artery
9033	S851 Injury of (anterior)(posterior) tibial artery
9034	S852 Injury of peroneal artery
9035	S853 Injury of greater saphenous vein at lower leg level
9036	S854 Injury of lesser saphenous vein at lower leg level
9037	S855 Injury of popliteal vein
9038	S857 Injury of multiple blood vessels at lower leg level
9039	S858 Injury of other blood vessels at lower leg level
9040	S859 Injury of unspecified blood vessel at lower leg level
9041	S86 Injury of muscle and tendon at lower leg level
9042	S860 Injury of Achilles tendon
9043	S861 Injury of other muscle(s) and tendon(s) of posterior muscle group at lower leg level
9044	S862 Injury of muscle(s) and tendon(s) of anterior muscle group at lower leg level
9045	S863 Injury of muscle(s) and tendon(s) of peroneal muscle group at lower leg level
9046	S867 Injury of multiple muscles and tendons at lower leg level
9047	S868 Injury of other muscles and tendons at lower leg level
9048	S869 Injury of unspecified muscle and tendon at lower leg level
9049	S87 Crushing injury of lower leg
9050	S870 Crushing injury of knee
9051	S878 Crushing injury of other and unspecified parts of lower leg
9052	S88 Traumatic amputation of lower leg
9053	S880 Traumatic amputation at knee level
9054	S881 Traumatic amputation at level between knee and ankle
9055	S889 Traumatic amputation of lower leg, level unspecified
9056	S89 Other and unspecified injuries of lower leg
9057	S897 Multiple injuries of lower leg
9058	S898 Other specified injuries of lower leg
9059	S899 Unspecified injury of lower leg
9060	S90 Superficial injury of ankle and foot
9061	S900 Contusion of ankle
9062	S901 Contusion of toe(s) without damage to nail
9063	S902 Contusion of toe(s) with damage to nail
9064	S903 Contusion of other and unspecified parts of foot
9065	S907 Multiple superficial injuries of ankle and foot
9066	S908 Other superficial injuries of ankle and foot
9067	S909 Superficial injury of ankle and foot, unspecified
9068	S91 Open wound of ankle and foot
9069	S910 Open wound of ankle
9070	S911 Open wound of toe(s) without damage to nail
9071	S912 Open wound of toe(s) with damage to nail
9072	S913 Open wound of other parts of foot
9073	S917 Multiple open wounds of ankle and foot
9074	S92 Fracture of foot, except ankle
9075	S920 Fracture of calcaneus
9076	S921 Fracture of talus
9077	S922 Fracture of other tarsal bone(s)
9078	S923 Fracture of metatarsal bone
9079	S924 Fracture of great toe
9080	S925 Fracture of other toe
9081	S927 Multiple fractures of foot
9082	S929 Fracture of foot, unspecified
9083	S93 Dislocation, sprain and strain of joints and ligaments at ankle and foot level
9084	S930 Dislocation of ankle joint
9085	S931 Dislocation of toe(s)
9086	S932 Rupture of ligaments at ankle and foot level
9087	T475 Poisoning: Digestants
9088	S933 Dislocation of other and unspecified parts of foot
9089	S934 Sprain and strain of ankle
9090	S935 Sprain and strain of toe(s)
9091	S936 Sprain and strain of other and unspecified parts of foot
9092	S94 Injury of nerves at ankle and foot level
9093	S940 Injury of lateral plantar nerve
9094	S941 Injury of medial plantar nerve
9095	S942 Injury of deep peroneal nerve at ankle and foot level
9096	S943 Injury of cutaneous sensory nerve at ankle and foot level
9097	S947 Injury of multiple nerves at ankle and foot level
9098	S948 Injury of other nerves at ankle and foot level
9099	S949 Injury of unspecified nerve at ankle and foot level
9100	S95 Injury of blood vessels at ankle and foot level
9101	S950 Injury of dorsal artery of foot
9102	S951 Injury of plantar artery of foot
9103	S952 Injury of dorsal vein of foot
9104	S957 Injury of multiple blood vessels at ankle and foot level
9105	S958 Injury of other blood vessels at ankle and foot level
9106	S959 Injury of unspecified blood vessel at ankle and foot level
9107	S96 Injury of muscle and tendon at ankle and foot level
9108	S960 Injury of muscle and tendon of long flexor muscle of toe at ankle and foot level
9109	S961 Injury of muscle and tendon of long extensor muscle of toe at ankle and foot level
9110	S962 Injury of intrinsic muscle and tendon at ankle and foot level
9111	S967 Injury of multiple muscles and tendons at ankle and foot level
9112	S968 Injury of other muscles and tendons at ankle and foot level
9113	S969 Injury of unspecified muscle and tendon at ankle and foot level
9114	S97 Crushing injury of ankle and foot
9115	S970 Crushing injury of ankle
9116	S971 Crushing injury of toe(s)
9117	S978 Crushing injury of other parts of ankle and foot
9118	S98 Traumatic amputation of ankle and foot
9119	S980 Traumatic amputation of foot at ankle level
9120	S981 Traumatic amputation of one toe
9121	S982 Traumatic amputation of two or more toes
9122	S983 Traumatic amputation of other parts of foot
9123	S984 Traumatic amputation of foot, level unspecified
9124	S99 Other and unspecified injuries of ankle and foot
9125	S997 Multiple injuries of ankle and foot
9126	S998 Other specified injuries of ankle and foot
9127	S999 Unspecified injury of ankle and foot
9128	T00 Superficial injuries involving multiple body regions
9129	T000 Superficial injuries involving head with neck
9130	T001 Superficial injuries involving thorax with abdomen, lower back and pelvis
9131	T002 Superficial injuries involving multiple regions of upper limb(s)
9132	T003 Superficial injuries involving multiple regions of lower limb(s)
9133	T006 Superficial injuries involving multiple regions of upper limb(s) with lower limb(s)
9134	T008 Superficial injuries involving other combinations of body regions
9135	T009 Multiple superficial injuries, unspecified
9136	T01 Open wounds involving multiple body regions
9137	T010 Open wounds involving head with neck
9138	T011 Open wounds involving thorax with abdomen, lower back and pelvis
9139	T012 Open wounds involving multiple regions of upper limb(s)
9140	T013 Open wounds involving multiple regions of lower limb(s)
9141	T016 Open wounds involving multiple regions of upper limb(s) with lower limb(s)
9142	T018 Open wounds involving other combinations of body regions
9143	T019 Multiple open wounds, unspecified
9144	T02 Fractures involving multiple body regions
9145	T020 Fractures involving head with neck
9146	T021 Fractures involving thorax with lower back and pelvis
9147	T022 Fractures involving multiple regions of one upper limb
9148	T023 Fractures involving multiple regions of one lower limb
9149	T024 Fractures involving multiple regions of both upper limbs
9150	T025 Fractures involving multiple regions of both lower limbs
9151	T026 Fractures involving multiple regions of upper limb(s) with lower limb(s)
9152	T027 Fractures involving thorax with lower back and pelvis with limb(s)
9153	T028 Fractures involving other combinations of body regions
9154	T029 Multiple fractures, unspecified
9155	T03 Dislocations, sprains and strains involving multiple body regions
9156	T030 Dislocations, sprains and strains involving head with neck
9157	T031 Dislocations, sprains and strains involving thorax with lower back and pelvis
9158	T032 Dislocations, sprains and strains involving multiple regions of upper limb(s)
9159	T033 Dislocations, sprains and strains involving multiple regions of lower limb(s)
9160	T034 Dislocations, sprains and strains involving multiple regions of upper limb(s) with lower limb(s)
9161	T038 Dislocations, sprains and strains involving other combinations of body regions
9162	T039 Multiple dislocations, sprains and strains, unspecified
9163	T04 Crushing injuries involving multiple body regions
9164	T040 Crushing injuries involving head with neck
9165	T041 Crushing injuries involving thorax with abdomen, lower back and pelvis
9166	T042 Crushing injuries involving multiple regions of upper limb(s)
9167	T043 Crushing injuries involving multiple regions of lower limb(s)
9168	T044 Crushing injuries involving multiple regions of upper limb(s) with lower limb(s)
9169	T047 Crushing injuries of thorax with abdomen, lower back and pelvis with limb(s)
9170	T048 Crushing injuries involving other combinations of body regions
9171	T049 Multiple crushing injuries, unspecified
9172	T05 Traumatic amputations involving multiple body regions
9173	T050 Traumatic amputation of both hands
9174	T796 Traumatic ischaemia of muscle
9175	T051 Traumatic amputation of one hand and other arm [any level, except hand]
9176	T052 Traumatic amputation of both arms [any level]
9177	T053 Traumatic amputation of both feet
9178	T054 Traumatic amputation of one foot and other leg [any level, except foot]
9179	T055 Traumatic amputation of both legs [any level]
9180	T056 Traumatic amputation of upper and lower limbs, any combination [any level]
9181	T058 Traumatic amputations involving other combinations of body regions
9182	T059 Multiple traumatic amputations, unspecified
9183	T06 Other injuries involving multiple body regions, not elsewhere classified
9184	T060 Injuries of brain and cranial nerves with injuries of nerves and spinal cord at neck level
9185	T061 Injuries of nerves and spinal cord involving other multiple body regions
9186	T062 Injuries of nerves involving multiple body regions
9187	T063 Injuries of blood vessels involving multiple body regions
9188	T064 Injuries of muscles and tendons involving multiple body regions
9189	T065 Injuries of intrathoracic organs with intra-abdominal and pelvic organs
9190	T068 Other specified injuries involving multiple body regions
9191	T07 Unspecified multiple injuries
9192	T08 Fracture of spine, level unspecified
9193	T09 Other injuries of spine and trunk, level unspecified
9194	T090 Superficial injury of trunk, level unspecified
9195	T091 Open wound of trunk, level unspecified
9196	T092 Dislocation, sprain and strain of unspecified joint and ligament of trunk
9197	T093 Injury of spinal cord, level unspecified
9198	Y527 Peripheral vasodilators
9199	T094 Injury of unspecified nerve, spinal nerve root and plexus of trunk
9200	T095 Injury of unspecified muscle and tendon of trunk
9201	T096 Traumatic amputation of trunk, level unspecified
9202	T098 Other specified injuries of trunk, level unspecified
9203	T099 Unspecified injury of trunk, level unspecified
9204	T10 Fracture of upper limb, level unspecified
9205	T11 Other injuries of upper limb, level unspecified
9206	T110 Superficial injury of upper limb, level unspecified
9207	T111 Open wound of upper limb, level unspecified
9208	T112 Dislocation, sprain and strain of unspecified joint and ligament of upper limb, level unspecified
9209	T113 Injury of unspecified nerve of upper limb, level unspecified
9210	T114 Injury of unspecified blood vessel of upper limb, level unspecified
9211	T115 Injury of unspecified muscle and tendon of upper limb, level unspecified
9212	T116 Traumatic amputation of upper limb, level unspecified
9213	T118 Other specified injuries of upper limb, level unspecified
9214	T119 Unspecified injury of upper limb, level unspecified
9215	T12 Fracture of lower limb, level unspecified
9216	T13 Other injuries of lower limb, level unspecified
9217	T130 Superficial injury of lower limb, level unspecified
9218	T131 Open wound of lower limb, level unspecified
9219	T132 Dislocation, sprain and strain of unspecified joint and ligament of lower limb, level unspecified
9220	T133 Injury of unspecified nerve of lower limb, level unspecified
9221	T134 Injury of unspecified blood vessel of lower limb, level unspecified
9222	T135 Injury of unspecified muscle and tendon of lower limb, level unspecified
9223	T136 Traumatic amputation of lower limb, level unspecified
9224	T138 Other specified injuries of lower limb, level unspecified
9225	T139 Unspecified injury of lower limb, level unspecified
9226	T14 Injury of unspecified body region
9227	T140 Superficial injury of unspecified body region
9228	T141 Open wound of unspecified body region
9229	T142 Fracture of unspecified body region
9230	T143 Dislocation, sprain and strain of unspecified body region
9231	T144 Injury of nerve(s) of unspecified body region
9232	T145 Injury of blood vessel(s) of unspecified body region
9233	T146 Injury of muscles and tendons of unspecified body region
9234	T147 Crushing injury and traumatic amputation of unspecified body region
9235	T148 Other injuries of unspecified body region
9236	T149 Injury, unspecified
9237	T15 Foreign body on external eye
9238	T150 Foreign body in cornea
9239	T151 Foreign body in conjunctival sac
9240	T158 Foreign body in other and multiple parts of external eye
9241	T159 Foreign body on external eye, part unspecified
9242	T16 Foreign body in ear
9243	T17 Foreign body in respiratory tract
9244	T170 Foreign body in nasal sinus
9245	T171 Foreign body in nostril
9246	T172 Foreign body in pharynx
9247	T173 Foreign body in larynx
9248	T174 Foreign body in trachea
9249	T175 Foreign body in bronchus
9250	T178 Foreign body in other and multiple parts of respiratory tract
9251	T179 Foreign body in respiratory tract, part unspecified
9252	T18 Foreign body in alimentary tract
9253	T180 Foreign body in mouth
9254	T181 Foreign body in oesophagus
9255	T182 Foreign body in stomach
9256	T183 Foreign body in small intestine
9257	T184 Foreign body in colon
9258	T185 Foreign body in anus and rectum
9259	T188 Foreign body in other and multiple parts of alimentary tract
9260	T189 Foreign body in alimentary tract, part unspecified
9261	T19 Foreign body in genitourinary tract
9262	T190 Foreign body in urethra
9263	T191 Foreign body in bladder
9264	T192 Foreign body in vulva and vagina
9265	T193 Foreign body in uterus [any part]
9266	Y078 By other specified persons
9267	T198 Foreign body in other and multiple parts of genitourinary tract
9268	T199 Foreign body in genitourinary tract, part unspecified
9269	T20 Burn and corrosion of head and neck
9270	T200 Burn of unspecified degree of head and neck
9271	T201 Burn of first degree of head and neck
9272	T202 Burn of second degree of head and neck
9273	T203 Burn of third degree of head and neck
9274	T204 Corrosion of unspecified degree of head and neck
9275	T205 Corrosion of first degree of head and neck
9276	T206 Corrosion of second degree of head and neck
9277	T207 Corrosion of third degree of head and neck
9278	T21 Burn and corrosion of trunk
9279	T210 Burn of unspecified degree of trunk
9280	T211 Burn of first degree of trunk
9281	T212 Burn of second degree of trunk
9282	T213 Burn of third degree of trunk
9283	T214 Corrosion of unspecified degree of trunk
9284	T215 Corrosion of first degree of trunk
9285	T216 Corrosion of second degree of trunk
9286	T217 Corrosion of third degree of trunk
9287	T22 Burn and corrosion of shoulder and upper limb, except wrist and hand
9288	T220 Burn of unspecified degree of shoulder and upper limb, except wrist and hand
9289	T221 Burn of first degree of shoulder and upper limb, except wrist and hand
9290	T222 Burn of second degree of shoulder and upper limb, except wrist and hand
9291	T223 Burn of third degree of shoulder and upper limb, except wrist and hand
9292	T224 Corrosion of unspecified degree of shoulder and upper limb, except wrist and hand
9293	T225 Corrosion of first degree of shoulder and upper limb, except wrist and hand
9294	T226 Corrosion of second degree of shoulder and upper limb, except wrist and hand
9295	Z644 Discord with counsellors
9296	T227 Corrosion of third degree of shoulder and upper limb, except wrist and hand
9297	T23 Burn and corrosion of wrist and hand
9298	T230 Burn of unspecified degree of wrist and hand
9299	T231 Burn of first degree of wrist and hand
9300	T232 Burn of second degree of wrist and hand
9301	T233 Burn of third degree of wrist and hand
9302	T234 Corrosion of unspecified degree of wrist and hand
9303	T235 Corrosion of first degree of wrist and hand
9304	T236 Corrosion of second degree of wrist and hand
9305	T237 Corrosion of third degree of wrist and hand
9306	T24 Burn and corrosion of hip and lower limb, except ankle and foot
9307	T240 Burn of unspecified degree of hip and lower limb, except ankle and foot
9308	T241 Burn of first degree of hip and lower limb, except ankle and foot
9309	T242 Burn of second degree of hip and lower limb, except ankle and foot
9310	T243 Burn of third degree of hip and lower limb, except ankle and foot
9311	T244 Corrosion of unspecified degree of hip and lower limb, except ankle and foot
9312	T245 Corrosion of first degree of hip and lower limb, except ankle and foot
9313	T246 Corrosion of second degree of hip and lower limb, except ankle and foot
9314	T247 Corrosion of third degree of hip and lower limb, except ankle and foot
9315	T25 Burn and corrosion of ankle and foot
9316	T250 Burn of unspecified degree of ankle and foot
9317	T251 Burn of first degree of ankle and foot
9318	T252 Burn of second degree of ankle and foot
9319	T253 Burn of third degree of ankle and foot
9320	T254 Corrosion of unspecified degree of ankle and foot
9321	T255 Corrosion of first degree of ankle and foot
9322	T256 Corrosion of second degree of ankle and foot
9323	T257 Corrosion of third degree of ankle and foot
9324	T26 Burn and corrosion confined to eye and adnexa
9325	T260 Burn of eyelid and periocular area
9326	T261 Burn of cornea and conjunctival sac
9327	T262 Burn with resulting rupture and destruction of eyeball
9328	T263 Burn of other parts of eye and adnexa
9329	T264 Burn of eye and adnexa, part unspecified
9330	T265 Corrosion of eyelid and periocular area
9331	T266 Corrosion of cornea and conjunctival sac
9332	T267 Corrosion with resulting rupture and destruction of eyeball
9333	T268 Corrosion of other parts of eye and adnexa
9334	T269 Corrosion of eye and adnexa, part unspecified
9335	T27 Burn and corrosion of respiratory tract
9336	T270 Burn of larynx and trachea
9337	T271 Burn involving larynx and trachea with lung
9338	T272 Burn of other parts of respiratory tract
9339	T273 Burn of respiratory tract, part unspecified
9340	T274 Corrosion of larynx and trachea
9341	T275 Corrosion involving larynx and trachea with lung
9342	T276 Corrosion of other parts of respiratory tract
9343	T277 Corrosion of respiratory tract, part unspecified
9344	T28 Burn and corrosion of other internal organs
9345	T280 Burn of mouth and pharynx
9346	T281 Burn of oesophagus
9347	T282 Burn of other parts of alimentary tract
9348	T283 Burn of internal genitourinary organs
9349	T284 Burn of other and unspecified internal organs
9350	T285 Corrosion of mouth and pharynx
9351	T286 Corrosion of oesophagus
9352	T287 Corrosion of other parts of alimentary tract
9353	T288 Corrosion of internal genitourinary organs
9354	T289 Corrosion of other and unspecified internal organs
9355	T29 Burns and corrosions of multiple body regions
9356	T290 Burns of multiple regions, unspecified degree
9357	T291 Burns of multiple regions, no more than first-degree burns mentioned
9358	T292 Burns of multiple regions, no more than second-degree burns mentioned
9359	T293 Burns of multiple regions, at least one burn of third degree mentioned
9360	T294 Corrosions of multiple regions, unspecified degree
9361	T295 Corrosions of multiple regions, no more than first-degree corrosions mentioned
9362	T296 Corrosions of multiple regions, no more than second-degree corrosions mentioned
9363	T297 Corrosions of multiple regions, at least one corrosion of third degree mentioned
9364	T30 Burn and corrosion, body region unspecified
9365	T300 Burn of unspecified body region, unspecified degree
9366	T301 Burn of first degree, body region unspecified
9367	T302 Burn of second degree, body region unspecified
9368	T303 Burn of third degree, body region unspecified
9369	T304 Corrosion of unspecified body region, unspecified degree
9370	T305 Corrosion of first degree, body region unspecified
9371	T306 Corrosion of second degree, body region unspecified
9372	T307 Corrosion of third degree, body region unspecified
9373	T31 Burns classified according to extent of body surface involved
9374	T310 Burns involving less than 10% of body surface
9375	T311 Burns involving 10-19% of body surface
9376	T312 Burns involving 20-29% of body surface
9377	T313 Burns involving 30-39% of body surface
9378	T314 Burns involving 40-49% of body surface
9379	T315 Burns involving 50-59% of body surface
9380	T316 Burns involving 60-69% of body surface
9381	T317 Burns involving 70-79% of body surface
9382	T318 Burns involving 80-89% of body surface
9383	T319 Burns involving 90% or more of body surface
9384	T32 Corrosions classified according to extent of body surface involved
9385	T320 Corrosions involving less than 10% of body surface
9386	T321 Corrosions involving 10-19% of body surface
9387	T322 Corrosions involving 20-29% of body surface
9388	T323 Corrosions involving 30-39% of body surface
9389	T324 Corrosions involving 40-49% of body surface
9390	T325 Corrosions involving 50-59% of body surface
9391	T326 Corrosions involving 60-69% of body surface
9392	T327 Corrosions involving 70-79% of body surface
9393	T328 Corrosions involving 80-89% of body surface
9394	T329 Corrosions involving 90% or more of body surface
9395	T33 Superficial frostbite
9396	T330 Superficial frostbite of head
9397	T331 Superficial frostbite of neck
9398	T332 Superficial frostbite of thorax
9399	T333 Superficial frostbite of abdominal wall, lower back and pelvis
9400	T334 Superficial frostbite of arm
9401	T335 Superficial frostbite of wrist and hand
9402	T336 Superficial frostbite of hip and thigh
9403	T337 Superficial frostbite of knee and lower leg
9404	T338 Superficial frostbite of ankle and foot
9405	T339 Superficial frostbite of other and unspecified sites
9406	T34 Frostbite with tissue necrosis
9407	T340 Frostbite with tissue necrosis of head
9408	T341 Frostbite with tissue necrosis of neck
9409	T342 Frostbite with tissue necrosis of thorax
9410	T343 Frostbite with tissue necrosis of abdominal wall, lower back and pelvis
9411	T344 Frostbite with tissue necrosis of arm
9412	T345 Frostbite with tissue necrosis of wrist and hand
9413	T346 Frostbite with tissue necrosis of hip and thigh
9414	T347 Frostbite with tissue necrosis of knee and lower leg
9415	T348 Frostbite with tissue necrosis of ankle and foot
9416	T349 Frostbite with tissue necrosis of other and unspecified sites
9417	T35 Frostbite involving multiple body regions and unspecified frostbite
9418	T350 Superficial frostbite involving multiple body regions
9419	T351 Frostbite with tissue necrosis involving multiple body regions
9420	T352 Unspecified frostbite of head and neck
9421	T353 Unspecified frostbite of thorax, abdomen, lower back and pelvis
9422	T354 Unspecified frostbite of upper limb
9423	T355 Unspecified frostbite of lower limb
9424	T356 Unspecified frostbite involving multiple body regions
9425	T357 Unspecified frostbite of unspecified site
9426	T36 Poisoning by systemic antibiotics
9427	T360 Poisoning: Penicillins
9428	T361 Poisoning: Cefalosporins and other beta-lactam antibiotics
9429	T362 Poisoning: Chloramphenicol group
9430	T363 Poisoning: Macrolides
9431	T364 Poisoning: Tetracyclines
9432	T365 Poisoning: Aminoglycosides
9433	T366 Poisoning: Rifamycins
9434	T367 Poisoning: Antifungal antibiotics, systemically used
9435	T368 Poisoning: Other systemic antibiotics
9436	T369 Poisoning: Systemic antibiotic, unspecified
9437	T37 Poisoning by other systemic anti-infectives and antiparasitics
9438	T370 Poisoning: Sulfonamides
9439	T371 Poisoning: Antimycobacterial drugs
9440	T372 Poisoning: Antimalarials and drugs acting on other blood protozoa
9441	T373 Poisoning: Other antiprotozoal drugs
9442	T374 Poisoning: Anthelminthics
9443	T375 Poisoning: Antiviral drugs
9444	T378 Poisoning: Other specified systemic anti-infectives and antiparasitics
9445	T379 Poisoning: Systemic anti-infective and antiparasitic, unspecified
9446	T38 Poisoning by hormones and their synthetic substitutes and antagonists, not elsewhere classified
9447	T380 Poisoning: Glucocorticoids and synthetic analogues
9448	T381 Poisoning: Thyroid hormones and substitutes
9449	T382 Poisoning: Antithyroid drugs
9450	T383 Poisoning: Insulin and oral hypoglycaemic [antidiabetic] drugs
9451	T384 Poisoning: Oral contraceptives
9452	T385 Poisoning: Other estrogens and progestogens
9453	T386 Poisoning: Antigonadotrophins, antiestrogens, antiandrogens, not elsewhere classified
9454	Y079 By unspecified person
9455	T387 Poisoning: Androgens and anabolic congeners
9456	T388 Poisoning: Other and unspecified hormones and their synthetic substitutes
9457	T389 Poisoning: Other and unspecified hormone antagonists
9458	T39 Poisoning by nonopioid analgesics, antipyretics and antirheumatics
9459	T390 Poisoning: Salicylates
9460	T391 Poisoning: 4-Aminophenol derivatives
9461	T392 Poisoning: Pyrazolone derivatives
9462	T393 Poisoning: Other nonsteroidal anti-inflammatory drugs [NSAID]
9463	T394 Poisoning: Antirheumatics, not elsewhere classified
9464	T398 Poisoning: Other nonopioid analgesics and antipyretics, not elsewhere classified
9465	T399 Poisoning: Nonopioid analgesic, antipyretic and antirheumatic, unspecified
9466	T40 Poisoning by narcotics and psychodysleptics [hallucinogens]
9467	T400 Poisoning: Opium
9468	T401 Poisoning: Heroin
9469	T402 Poisoning: Other opioids
9470	T403 Poisoning: Methadone
9471	T404 Poisoning: Other synthetic narcotics
9472	T405 Poisoning: Cocaine
9473	T406 Poisoning: Other and unspecified narcotics
9474	T407 Poisoning: Cannabis (derivatives)
9475	T408 Poisoning: Lysergide [LSD]
9476	T409 Poisoning: Other and unspecified psychodysleptics [hallucinogens]
9477	T41 Poisoning by anaesthetics and therapeutic gases
9478	T410 Poisoning: Inhaled anaesthetics
9479	T411 Poisoning: Intravenous anaesthetics
9480	T412 Poisoning: Other and unspecified general anaesthetics
9481	T413 Poisoning: Local anaesthetics
9482	T414 Poisoning: Anaesthetic, unspecified
9483	T415 Poisoning: Therapeutic gases
9484	T42 Poisoning by antiepileptic, sedative-hypnotic and antiparkinsonism drugs
9485	T420 Poisoning: Hydantoin derivatives
9486	T421 Poisoning: Iminostilbenes
9487	T422 Poisoning: Succinimides and oxazolidinediones
9488	T423 Poisoning: Barbiturates
9489	T424 Poisoning: Benzodiazepines
9490	T425 Poisoning: Mixed antiepileptics, not elsewhere classified
9491	T426 Poisoning: Other antiepileptic and sedative-hypnotic drugs
9492	T427 Poisoning: Antiepileptic and sedative-hypnotic drugs, unspecified
9493	T428 Poisoning: Antiparkinsonism drugs and other central muscle-tone depressants
9494	T43 Poisoning by psychotropic drugs, not elsewhere classified
9495	T430 Poisoning: Tricyclic and tetracyclic antidepressants
9496	T431 Poisoning: Monoamine-oxidase-inhibitor antidepressants
9497	T432 Poisoning: Other and unspecified antidepressants
9498	T433 Poisoning: Phenothiazine antipsychotics and neuroleptics
9499	T434 Poisoning: Butyrophenone and thioxanthene neuroleptics
9500	T435 Poisoning: Other and unspecified antipsychotics and neuroleptics
9501	T436 Poisoning: Psychostimulants with abuse potential
9502	T438 Poisoning: Other psychotropic drugs, not elsewhere classified
9503	T439 Poisoning: Psychotropic drug, unspecified
9504	T44 Poisoning by drugs primarily affecting the autonomic nervous system
9505	T440 Poisoning: Anticholinesterase agents
9506	T441 Poisoning: Other parasympathomimetics [cholinergics]
9507	T442 Poisoning: Ganglionic blocking drugs, not elsewhere classified
9508	T443 Poisoning: Other parasympatholytics [anticholinergics and antimuscarinics] and spasmolytics, not elsewhere classified
9509	T444 Poisoning: Predominantly alpha-adrenoreceptor agonists, not elsewhere classified
9510	T445 Poisoning: Predominantly beta-adrenoreceptor agonists, not elsewhere classified
9511	T446 Poisoning: Alpha-adrenoreceptor antagonists, not elsewhere classified
9512	T447 Poisoning: Beta-adrenoreceptor antagonists, not elsewhere classified
9513	T448 Poisoning: Centrally acting and adrenergic-neuron-blocking agents, not elsewhere classified
9514	T449 Poisoning: Other and unspecified drugs primarily affecting the autonomic nervous system
9515	T45 Poisoning by primarily systemic and haematological agents, not elsewhere classified
9516	T450 Poisoning: Antiallergic and antiemetic drugs
9517	T451 Poisoning: Antineoplastic and immunosuppressive drugs
9518	T452 Poisoning: Vitamins, not elsewhere classified
9519	T453 Poisoning: Enzymes, not elsewhere classified
9520	T454 Poisoning: Iron and its compounds
9521	T455 Poisoning: Anticoagulants
9522	T456 Poisoning: Fibrinolysis-affecting drugs
9523	T457 Poisoning: Anticoagulant antagonists, vitamin K and other coagulants
9524	T458 Poisoning: Other primarily systemic and haematological agents
9525	T459 Poisoning: Primarily systemic and haematological agent, unspecified
9526	T46 Poisoning by agents primarily affecting the cardiovascular system
9527	T460 Poisoning: Cardiac-stimulant glycosides and drugs of similar action
9528	T461 Poisoning: Calcium-channel blockers
9529	T462 Poisoning: Other antidysrhythmic drugs, not elsewhere classified
9530	T463 Poisoning: Coronary vasodilators, not elsewhere classified
9531	T464 Poisoning: Angiotensin-converting-enzyme inhibitors
9532	T465 Poisoning: Other antihypertensive drugs, not elsewhere classified
9533	T466 Poisoning: Antihyperlipidaemic and antiarteriosclerotic drugs
9534	T467 Poisoning: Peripheral vasodilators
9535	T468 Poisoning: Antivaricose drugs, including sclerosing agents
9536	T469 Poisoning: Other and unspecified agents primarily affecting the cardiovascular system
9537	T47 Poisoning by agents primarily affecting the gastrointestinal system
9538	T470 Poisoning: Histamine H2-receptor antagonists
9539	T471 Poisoning: Other antacids and anti-gastric-secretion drugs
9540	T472 Poisoning: Stimulant laxatives
9541	T473 Poisoning: Saline and osmotic laxatives
9542	T474 Poisoning: Other laxatives
9543	T476 Poisoning: Antidiarrhoeal drugs
9544	T477 Poisoning: Emetics
9545	T478 Poisoning: Other agents primarily affecting the gastrointestinal system
9546	T479 Poisoning: Agent primarily affecting the gastrointestinal system, unspecified
9547	T48 Poisoning by agents primarily acting on smooth and skeletal muscles and the respiratory system
9548	T480 Poisoning: Oxytocic drugs
9549	T481 Poisoning: Skeletal muscle relaxants [neuromuscular blocking agents]
9550	T482 Poisoning: Other and unspecified agents primarily acting on muscles
9551	T483 Poisoning: Antitussives
9552	T484 Poisoning: Expectorants
9553	T485 Poisoning: Anti-common-cold drugs
9554	T486 Poisoning: Antiasthmatics, not elsewhere classified
9555	T487 Poisoning: Other and unspecified agents primarily acting on the respiratory system
9556	T49 Poisoning by topical agents primarily affecting skin and mucous membrane and by ophthalmological, otorhinolaryngological and dental drugs
9557	T490 Poisoning: Local antifungal, anti-infective and anti-inflammatory drugs, not elsewhere classified
9558	T491 Poisoning: Antipruritics
9559	T492 Poisoning: Local astringents and local detergents
9560	T493 Poisoning: Emollients, demulcents and protectants
9561	T494 Poisoning: Keratolytics, keratoplastics and other hair treatment drugs and preparations
9562	T495 Poisoning: Ophthalmological drugs and preparations
9563	T496 Poisoning: Otorhinolaryngological drugs and preparations
9564	T497 Poisoning: Dental drugs, topically applied
9565	T498 Poisoning: Other topical agents
9566	T499 Poisoning: Topical agent, unspecified
9567	T50 Poisoning by diuretics and other and unspecified drugs, medicaments and biological substances
9568	T500 Poisoning: Mineralocorticoids and their antagonists
9569	T501 Poisoning: Loop [high-ceiling] diuretics
9570	T502 Poisoning: Carbonic-anhydrase inhibitors, benzothiadiazides and other diuretics
9571	T503 Poisoning: Electrolytic, caloric and water-balance agents
9572	T504 Poisoning: Drugs affecting uric acid metabolism
9573	T505 Poisoning: Appetite depressants
9574	T506 Poisoning: Antidotes and chelating agents, not elsewhere classified
9575	T507 Poisoning: Analeptics and opioid receptor antagonists
9576	T508 Poisoning: Diagnostic agents
9577	T509 Poisoning: Other and unspecified drugs, medicaments and biological substances
9578	T51 Toxic effect of alcohol
9579	T510 Toxic effect: Ethanol
9580	T511 Toxic effect: Methanol
9581	T512 Toxic effect: 2-Propanol
9582	T513 Toxic effect: Fusel oil
9583	T518 Toxic effect: Other alcohols
9584	T519 Toxic effect: Alcohol, unspecified
9585	T52 Toxic effect of organic solvents
9586	T520 Toxic effect: Petroleum products
9587	T521 Toxic effect: Benzene
9588	T522 Toxic effect: Homologues of benzene
9589	T523 Toxic effect: Glycols
9590	T524 Toxic effect: Ketones
9591	T528 Toxic effect: Other organic solvents
9592	T529 Toxic effect: Organic solvent, unspecified
9593	T53 Toxic effect of halogen derivatives of aliphatic and aromatic hydrocarbons
9594	T530 Toxic effect: Carbon tetrachloride
9595	T531 Toxic effect: Chloroform
9596	T532 Toxic effect: Trichloroethylene
9597	T533 Toxic effect: Tetrachloroethylene
9598	T534 Toxic effect: Dichloromethane
9599	T535 Toxic effect: Chlorofluorocarbons
9600	T536 Toxic effect: Other halogen derivatives of aliphatic hydrocarbons
9601	T537 Toxic effect: Other halogen derivatives of aromatic hydrocarbons
9602	T539 Toxic effect: Halogen derivative of aliphatic and aromatic hydrocarbons, unspecified
9603	T54 Toxic effect of corrosive substances
9604	T540 Toxic effect: Phenol and phenol homologues
9605	T541 Toxic effect: Other corrosive organic compounds
9606	T542 Toxic effect: Corrosive acids and acid-like substances
9607	T543 Toxic effect: Corrosive alkalis and alkali-like substances
9608	T549 Toxic effect: Corrosive substance, unspecified
9609	T55 Toxic effect of soaps and detergents
9610	T56 Toxic effect of metals
9611	T560 Toxic effect: Lead and its compounds
9612	T561 Toxic effect: Mercury and its compounds
9613	T562 Toxic effect: Chromium and its compounds
9614	T563 Toxic effect: Cadmium and its compounds
9615	T564 Toxic effect: Copper and its compounds
9616	T565 Toxic effect: Zinc and its compounds
9617	T566 Toxic effect: Tin and its compounds
9618	T567 Toxic effect: Beryllium and its compounds
9619	T568 Toxic effect: Other metals
9620	T569 Toxic effect: Metal, unspecified
9621	T57 Toxic effect of other inorganic substances
9622	T570 Toxic effect: Arsenic and its compounds
9623	T571 Toxic effect: Phosphorus and its compounds
9624	T572 Toxic effect: Manganese and its compounds
9625	T573 Toxic effect: Hydrogen cyanide
9626	T578 Toxic effect: Other specified inorganic substances
9627	T579 Toxic effect: Inorganic substance, unspecified
9628	T58 Toxic effect of carbon monoxide
9629	T59 Toxic effect of other gases, fumes and vapours
9630	T590 Toxic effect: Nitrogen oxides
9631	T591 Toxic effect: Sulfur dioxide
9632	T592 Toxic effect: Formaldehyde
9633	T593 Toxic effect: Lacrimogenic gas
9634	T594 Toxic effect: Chlorine gas
9635	T595 Toxic effect: Fluorine gas and hydrogen fluoride
9636	T596 Toxic effect: Hydrogen sulfide
9637	T597 Toxic effect: Carbon dioxide
9638	Z28 Immunization not carried out
9639	T598 Toxic effect: Other specified gases, fumes and vapours
9640	T599 Toxic effect: Gases, fumes and vapours, unspecified
9641	T60 Toxic effect of pesticides
9642	T600 Toxic effect: Organophosphate and carbamate insecticides
9643	T601 Toxic effect: Halogenated insecticides
9644	T602 Toxic effect: Other insecticides
9645	T603 Toxic effect: Herbicides and fungicides
9646	T604 Toxic effect: Rodenticides
9647	T608 Toxic effect: Other pesticides
9648	T609 Toxic effect: Pesticide, unspecified
9649	T61 Toxic effect of noxious substances eaten as seafood
9650	T610 Toxic effect: Ciguatera fish poisoning
9651	T611 Toxic effect: Scombroid fish poisoning
9652	T612 Toxic effect: Other fish and shellfish poisoning
9653	T618 Toxic effect: Toxic effect of other seafoods
9654	T619 Toxic effect: Toxic effect of unspecified seafood
9655	T62 Toxic effect of other noxious substances eaten as food
9656	T620 Toxic effect: Ingested mushrooms
9657	T621 Toxic effect: Ingested berries
9658	T622 Toxic effect: Other ingested (parts of) plant(s)
9659	T628 Toxic effect: Other specified noxious substances eaten as food
9660	T629 Toxic effect: Noxious substance eaten as food, unspecified
9661	T63 Toxic effect of contact with venomous animals
9662	T630 Toxic effect: Snake venom
9663	T631 Toxic effect: Venom of other reptiles
9664	T632 Toxic effect: Venom of scorpion
9665	T633 Toxic effect: Venom of spider
9666	T634 Toxic effect: Venom of other arthropods
9667	T635 Toxic effect: Toxic effect of contact with fish
9668	T636 Toxic effect: Toxic effect of contact with other marine animals
9669	T638 Toxic effect: Toxic effect of contact with other venomous animals
9670	T639 Toxic effect: Toxic effect of contact with unspecified venomous animal
9671	T64 Toxic effect of aflatoxin and other mycotoxin food contaminants
9672	T65 Toxic effect of other and unspecified substances
9673	T650 Toxic effect: Cyanides
9674	T651 Toxic effect: Strychnine and its salts
9675	T652 Toxic effect: Tobacco and nicotine
9676	T653 Toxic effect: Nitroderivatives and aminoderivatives of benzene and its homologues
9677	T654 Toxic effect: Carbon disulfide
9678	T655 Toxic effect: Nitroglycerin and other nitric acids and esters
9679	T656 Toxic effect: Paints and dyes, not elsewhere classified
9680	T658 Toxic effect: Toxic effect of other specified substances
9681	T659 Toxic effect: Toxic effect of unspecified substance
9682	T66 Unspecified effects of radiation
9683	T67 Effects of heat and light
9684	T670 Heatstroke and sunstroke
9685	T671 Heat syncope
9686	T672 Heat cramp
9687	T673 Heat exhaustion, anhydrotic
9688	T674 Heat exhaustion due to salt depletion
9689	T675 Heat exhaustion, unspecified
9690	T676 Heat fatigue, transient
9691	T677 Heat oedema
9692	T678 Other effects of heat and light
9693	T679 Effect of heat and light, unspecified
9694	T68 Hypothermia
9695	T69 Other effects of reduced temperature
9696	T690 Immersion hand and foot
9697	T691 Chilblains
9698	T698 Other specified effects of reduced temperature
9699	T699 Effect of reduced temperature, unspecified
9700	T70 Effects of air pressure and water pressure
9701	T700 Otitic barotrauma
9702	T701 Sinus barotrauma
9703	T702 Other and unspecified effects of high altitude
9704	T703 Caisson disease [decompression sickness]
9705	T704 Effects of high-pressure fluids
9706	T708 Other effects of air pressure and water pressure
9707	T709 Effect of air pressure and water pressure, unspecified
9708	T71 Asphyxiation
9709	T73 Effects of other deprivation
9710	T730 Effects of hunger
9711	T731 Effects of thirst
9712	T732 Exhaustion due to exposure
9713	T733 Exhaustion due to excessive exertion
9714	T738 Other effects of deprivation
9715	T739 Effect of deprivation, unspecified
9716	T74 Maltreatment syndromes
9717	T740 Neglect or abandonment
9718	T741 Physical abuse
9719	T742 Sexual abuse
9720	T743 Psychological abuse
9721	T748 Other maltreatment syndromes
9722	T749 Maltreatment syndrome, unspecified
9723	T75 Effects of other external causes
9724	T750 Effects of lightning
9725	T751 Drowning and nonfatal submersion
9726	T752 Effects of vibration
9727	T753 Motion sickness
9728	T754 Effects of electric current
9729	T758 Other specified effects of external causes
9730	T78 Adverse effects, not elsewhere classified
9731	T780 Anaphylactic shock due to adverse food reaction
9732	T781 Other adverse food reactions, not elsewhere classified
9733	T782 Anaphylactic shock, unspecified
9734	T783 Angioneurotic oedema
9735	T784 Allergy, unspecified
9736	T788 Other adverse effects, not elsewhere classified
9737	T789 Adverse effect, unspecified
9738	T79 Certain early complications of trauma, not elsewhere classified
9739	T790 Air embolism (traumatic)
9740	T791 Fat embolism (traumatic)
9741	T792 Traumatic secondary and recurrent haemorrhage
9742	T793 Post-traumatic wound infection, not elsewhere classified
9743	T794 Traumatic shock
9744	T795 Traumatic anuria
9745	T797 Traumatic subcutaneous emphysema
9746	T798 Other early complications of trauma
9747	T799 Unspecified early complication of trauma
9748	T80 Complications following infusion, transfusion and therapeutic injection
9749	T800 Air embolism following infusion, transfusion and therapeutic injection
9750	T801 Vascular complications following infusion, transfusion and therapeutic injection
9751	T802 Infections following infusion, transfusion and therapeutic injection
9752	T803 ABO incompatibility reaction
9753	T804 Rh incompatibility reaction
9754	T805 Anaphylactic shock due to serum
9755	T806 Other serum reactions
9756	T808 Other complications following infusion, transfusion and therapeutic injection
9757	T809 Unspecified complication following infusion, transfusion and therapeutic injection
9758	T81 Complications of procedures, not elsewhere classified
9759	T810 Haemorrhage and haematoma complicating a procedure, not elsewhere classified
9760	T811 Shock during or resulting from a procedure, not elsewhere classified
9761	T812 Accidental puncture and laceration during a procedure, not elsewhere classified
9762	T813 Disruption of operation wound, not elsewhere classified
9763	T814 Infection following a procedure, not elsewhere classified
9764	T815 Foreign body accidentally left in body cavity or operation wound following a procedure
9765	T816 Acute reaction to foreign substance accidentally left during a procedure
9766	T817 Vascular complications following a procedure, not elsewhere classified
9767	T818 Other complications of procedures, not elsewhere classified
9768	T819 Unspecified complication of procedure
9769	T82 Complications of cardiac and vascular prosthetic devices, implants and grafts
9770	T820 Mechanical complication of heart valve prosthesis
9771	T821 Mechanical complication of cardiac electronic device
9772	T822 Mechanical complication of coronary artery bypass and valve grafts
9773	T823 Mechanical complication of other vascular grafts
9774	T824 Mechanical complication of vascular dialysis catheter
9775	T825 Mechanical complication of other cardiac and vascular devices and implants
9776	T826 Infection and inflammatory reaction due to cardiac valve prosthesis
9777	T827 Infection and inflammatory reaction due to other cardiac and vascular devices, implants and grafts
9778	T828 Other specified complications of cardiac and vascular prosthetic devices, implants and grafts
9779	T829 Unspecified complication of cardiac and vascular prosthetic device, implant and graft
9780	T83 Complications of genitourinary prosthetic devices, implants and grafts
9781	T830 Mechanical complication of urinary (indwelling) catheter
9782	T831 Mechanical complication of other urinary devices and implants
9783	T832 Mechanical complication of graft of urinary organ
9784	T833 Mechanical complication of intrauterine contraceptive device
9785	T834 Mechanical complication of other prosthetic devices, implants and grafts in genital tract
9786	T835 Infection and inflammatory reaction due to prosthetic device, implant and graft in urinary system
9787	T836 Infection and inflammatory reaction due to prosthetic device, implant and graft in genital tract
9788	T838 Other complications of genitourinary prosthetic devices, implants and grafts
9789	T839 Unspecified complication of genitourinary prosthetic device, implant and graft
9790	T84 Complications of internal orthopaedic prosthetic devices, implants and grafts
9791	T840 Mechanical complication of internal joint prosthesis
9792	T841 Mechanical complication of internal fixation device of bones of limb
9793	T842 Mechanical complication of internal fixation device of other bones
9794	T843 Mechanical complication of other bone devices, implants and grafts
9795	T844 Mechanical complication of other internal orthopaedic devices, implants and grafts
9796	T845 Infection and inflammatory reaction due to internal joint prosthesis
9797	T846 Infection and inflammatory reaction due to internal fixation device [any site]
9798	T847 Infection and inflammatory reaction due to other internal orthopaedic prosthetic devices, implants and grafts
9799	T848 Other complications of internal orthopaedic prosthetic devices, implants and grafts
9800	T849 Unspecified complication of internal orthopaedic prosthetic device, implant and graft
9801	T85 Complications of other internal prosthetic devices, implants and grafts
9802	T850 Mechanical complication of ventricular intracranial (communicating) shunt
9803	T851 Mechanical complication of implanted electronic stimulator of nervous system
9804	T852 Mechanical complication of intraocular lens
9805	T853 Mechanical complication of other ocular prosthetic devices, implants and grafts
9806	T854 Mechanical complication of breast prosthesis and implant
9807	T855 Mechanical complication of gastrointestinal prosthetic devices, implants and grafts
9808	T856 Mechanical complication of other specified internal prosthetic devices, implants and grafts
9809	T857 Infection and inflammatory reaction due to other internal prosthetic devices, implants and grafts
9810	T858 Other complications of internal prosthetic devices, implants and grafts, not elsewhere classified
9811	T859 Unspecified complication of internal prosthetic device, implant and graft
9812	T86 Failure and rejection of transplanted organs and tissues
9813	T860 Bone-marrow transplant rejection
9814	T861 Kidney transplant failure and rejection
9815	T862 Heart transplant failure and rejection
9816	T863 Heart-lung transplant failure and rejection
9817	T864 Liver transplant failure and rejection
9818	T868 Failure and rejection of other transplanted organs and tissues
9819	T869 Failure and rejection of unspecified transplanted organ and tissue
9820	T87 Complications peculiar to reattachment and amputation
11770	Z553 Underachievement in school
9821	T870 Complications of reattached (part of) upper extremity
9822	T871 Complications of reattached (part of) lower extremity
9823	T872 Complications of other reattached body part
9824	T873 Neuroma of amputation stump
9825	T874 Infection of amputation stump
9826	T875 Necrosis of amputation stump
9827	T876 Other and unspecified complications of amputation stump
9828	T88 Other complications of surgical and medical care, not elsewhere classified
9829	T880 Infection following immunization
9830	T881 Other complications following immunization, not elsewhere classified
9831	T882 Shock due to anaesthesia
9832	T883 Malignant hyperthermia due to anaesthesia
9833	T884 Failed or difficult intubation
9834	T885 Other complications of anaesthesia
9835	T886 Anaphylactic shock due to adverse effect of correct drug or medicament properly administered
9836	T887 Unspecified adverse effect of drug or medicament
9837	T888 Other specified complications of surgical and medical care, not elsewhere classified
9838	T889 Complication of surgical and medical care, unspecified
9839	T90 Sequelae of injuries of head
9840	T900 Sequelae of superficial injury of head
9841	T901 Sequelae of open wound of head
9842	T902 Sequelae of fracture of skull and facial bones
9843	T903 Sequelae of injury of cranial nerves
9844	T904 Sequelae of injury of eye and orbit
9845	T905 Sequelae of intracranial injury
9846	T908 Sequelae of other specified injuries of head
9847	T909 Sequelae of unspecified injury of head
9848	T91 Sequelae of injuries of neck and trunk
9849	T910 Sequelae of superficial injury and open wound of neck and trunk
9850	T911 Sequelae of fracture of spine
9851	T912 Sequelae of other fracture of thorax and pelvis
9852	T913 Sequelae of injury of spinal cord
9853	T914 Sequelae of injury of intrathoracic organs
9854	T915 Sequelae of injury of intra-abdominal and pelvic organs
9855	T918 Sequelae of other specified injuries of neck and trunk
9856	T919 Sequelae of unspecified injury of neck and trunk
9857	T92 Sequelae of injuries of upper limb
9858	T920 Sequelae of open wound of upper limb
9859	T921 Sequelae of fracture of arm
9860	T922 Sequelae of fracture at wrist and hand level
9861	T923 Sequelae of dislocation, sprain and strain of upper limb
9862	T924 Sequelae of injury of nerve of upper limb
9863	T925 Sequelae of injury of muscle and tendon of upper limb
9864	T926 Sequelae of crushing injury and traumatic amputation of upper limb
9865	T928 Sequelae of other specified injuries of upper limb
9866	T929 Sequelae of unspecified injury of upper limb
9867	T93 Sequelae of injuries of lower limb
9868	T930 Sequelae of open wound of lower limb
9869	T931 Sequelae of fracture of femur
9870	T932 Sequelae of other fractures of lower limb
9871	T933 Sequelae of dislocation, sprain and strain of lower limb
9872	T934 Sequelae of injury of nerve of lower limb
9873	T935 Sequelae of injury of muscle and tendon of lower limb
9874	T936 Sequelae of crushing injury and traumatic amputation of lower limb
9875	T938 Sequelae of other specified injuries of lower limb
9876	T939 Sequelae of unspecified injury of lower limb
9877	T94 Sequelae of injuries involving multiple and unspecified body regions
9878	T940 Sequelae of injuries involving multiple body regions
9879	T941 Sequelae of injuries, not specified by body region
9880	T95 Sequelae of burns, corrosions and frostbite
9881	T950 Sequelae of burn, corrosion and frostbite of head and neck
9882	T951 Sequelae of burn, corrosion and frostbite of trunk
9883	T952 Sequelae of burn, corrosion and frostbite of upper limb
9884	T953 Sequelae of burn, corrosion and frostbite of lower limb
9885	T954 Sequelae of burn and corrosion classifiable only according to extent of body surface involved
9886	T958 Sequelae of other specified burn, corrosion and frostbite
9887	T959 Sequelae of unspecified burn, corrosion and frostbite
9888	T96 Sequelae of poisoning by drugs, medicaments and biological substances
9889	T97 Sequelae of toxic effects of substances chiefly nonmedicinal as to source
9890	T98 Sequelae of other and unspecified effects of external causes
9891	T980 Sequelae of effects of foreign body entering through natural orifice
9892	T981 Sequelae of other and unspecified effects of external causes
9893	T982 Sequelae of certain early complications of trauma
9894	T983 Sequelae of complications of surgical and medical care, not elsewhere classified
9895	V01 Pedestrian injured in collision with pedal cycle
9896	V010 Pedestrian injured in collision with pedal cycle: Nontraffic accident
9897	V011 Pedestrian injured in collision with pedal cycle: Traffic accident
9898	V019 Pedestrian injured in collision with pedal cycle: Unspecified whether traffic or nontraffic accident
9899	V02 Pedestrian injured in collision with two- or three-wheeled motor vehicle
9900	V020 Pedestrian injured in collision with two- or three-wheeled motor vehicle: Nontraffic accident
9901	V021 Pedestrian injured in collision with two- or three-wheeled motor vehicle: Traffic accident
9902	V029 Pedestrian injured in collision with two- or three-wheeled motor vehicle: Unspecified whether traffic or nontraffic accident
9903	V03 Pedestrian injured in collision with car, pick-up truck or van
9904	V030 Pedestrian injured in collision with car, pick-up truck or van: Nontraffic accident
9905	V031 Pedestrian injured in collision with car, pick-up truck or van: Traffic accident
9906	V039 Pedestrian injured in collision with car, pick-up truck or van: Unspecified whether traffic or nontraffic accident
9907	V04 Pedestrian injured in collision with heavy transport vehicle or bus
9908	V040 Pedestrian injured in collision with heavy transport vehicle or bus: Nontraffic accident
9909	V041 Pedestrian injured in collision with heavy transport vehicle or bus: Traffic accident
9910	V049 Pedestrian injured in collision with heavy transport vehicle or bus: Unspecified whether traffic or nontraffic accident
9911	V05 Pedestrian injured in collision with railway train or railway vehicle
9912	V050 Pedestrian injured in collision with railway train or railway vehicle: Nontraffic accident
9913	V051 Pedestrian injured in collision with railway train or railway vehicle: Traffic accident
9914	V059 Pedestrian injured in collision with railway train or railway vehicle: Unspecified whether traffic or nontraffic accident
9915	V06 Pedestrian injured in collision with other nonmotor vehicle
9916	V060 Pedestrian injured in collision with other nonmotor vehicle: Nontraffic accident
9917	V061 Pedestrian injured in collision with other nonmotor vehicle: Traffic accident
9918	V069 Pedestrian injured in collision with other nonmotor vehicle: Unspecified whether traffic or nontraffic accident
9919	V09 Pedestrian injured in other and unspecified transport accidents
9920	V090 Pedestrian injured in nontraffic accident involving other and unspecified motor vehicles
9921	V091 Pedestrian injured in unspecified nontraffic accident
9922	V092 Pedestrian injured in traffic accident involving other and unspecified motor vehicles
9923	V093 Pedestrian injured in unspecified traffic accident
9924	V099 Pedestrian injured in unspecified transport accident
9925	V10 Pedal cyclist injured in collision with pedestrian or animal
9926	V100 Pedal cyclist injured in collision with pedestrian or animal: Driver injured in nontraffic accident
9927	V101 Pedal cyclist injured in collision with pedestrian or animal: Passenger injured in nontraffic accident
9928	V102 Pedal cyclist injured in collision with pedestrian or animal: Unspecified pedal cyclist injured in nontraffic accident
9929	V103 Pedal cyclist injured in collision with pedestrian or animal: Person injured while boarding or alighting
9930	V104 Pedal cyclist injured in collision with pedestrian or animal: Driver injured in traffic accident
9931	V105 Pedal cyclist injured in collision with pedestrian or animal: Passenger injured in traffic accident
9932	V109 Pedal cyclist injured in collision with pedestrian or animal: Unspecified pedal cyclist injured in traffic accident
9933	V11 Pedal cyclist injured in collision with other pedal cycle
9934	V110 Pedal cyclist injured in collision with other pedal cycle: Driver injured in nontraffic accident
9935	V111 Pedal cyclist injured in collision with other pedal cycle: Passenger injured in nontraffic accident
9936	V46 Car occupant injured in collision with other nonmotor vehicle
9937	V112 Pedal cyclist injured in collision with other pedal cycle: Unspecified pedal cyclist injured in nontraffic accident
9938	V113 Pedal cyclist injured in collision with other pedal cycle: Person injured while boarding or alighting
9939	V114 Pedal cyclist injured in collision with other pedal cycle: Driver injured in traffic accident
9940	V115 Pedal cyclist injured in collision with other pedal cycle: Passenger injured in traffic accident
9941	V119 Pedal cyclist injured in collision with other pedal cycle: Unspecified pedal cyclist injured in traffic accident
9942	V12 Pedal cyclist injured in collision with two- or three-wheeled motor vehicle
9943	V120 Pedal cyclist injured in collision with two- or three-wheeled motor vehicle: Driver injured in nontraffic accident
9944	V121 Pedal cyclist injured in collision with two- or three-wheeled motor vehicle: Passenger injured in nontraffic accident
9945	V122 Pedal cyclist injured in collision with two- or three-wheeled motor vehicle: Unspecified pedal cyclist injured in nontraffic accident
9946	V123 Pedal cyclist injured in collision with two- or three-wheeled motor vehicle: Person injured while boarding or alighting
9947	V124 Pedal cyclist injured in collision with two- or three-wheeled motor vehicle: Driver injured in traffic accident
9948	V125 Pedal cyclist injured in collision with two- or three-wheeled motor vehicle: Passenger injured in traffic accident
9949	V129 Pedal cyclist injured in collision with two- or three-wheeled motor vehicle: Unspecified pedal cyclist injured in traffic accident
9950	V13 Pedal cyclist injured in collision with car, pick-up truck or van
9951	V130 Pedal cyclist injured in collision with car, pick-up truck or van: Driver injured in nontraffic accident
9952	V131 Pedal cyclist injured in collision with car, pick-up truck or van: Passenger injured in nontraffic accident
9953	V132 Pedal cyclist injured in collision with car, pick-up truck or van: Unspecified pedal cyclist injured in nontraffic accident
9954	V133 Pedal cyclist injured in collision with car, pick-up truck or van: Person injured while boarding or alighting
9955	V134 Pedal cyclist injured in collision with car, pick-up truck or van: Driver injured in traffic accident
9956	V135 Pedal cyclist injured in collision with car, pick-up truck or van: Passenger injured in traffic accident
9957	V139 Pedal cyclist injured in collision with car, pick-up truck or van: Unspecified pedal cyclist injured in traffic accident
9958	V14 Pedal cyclist injured in collision with heavy transport vehicle or bus
9959	V140 Pedal cyclist injured in collision with heavy transport vehicle or bus: Driver injured in nontraffic accident
9960	V141 Pedal cyclist injured in collision with heavy transport vehicle or bus: Passenger injured in nontraffic accident
9961	V142 Pedal cyclist injured in collision with heavy transport vehicle or bus: Unspecified pedal cyclist injured in nontraffic accident
9962	V143 Pedal cyclist injured in collision with heavy transport vehicle or bus: Person injured while boarding or alighting
9963	V144 Pedal cyclist injured in collision with heavy transport vehicle or bus: Driver injured in traffic accident
9964	V145 Pedal cyclist injured in collision with heavy transport vehicle or bus: Passenger injured in traffic accident
9965	V149 Pedal cyclist injured in collision with heavy transport vehicle or bus: Unspecified pedal cyclist injured in traffic accident
9966	V15 Pedal cyclist injured in collision with railway train or railway vehicle
9967	V150 Pedal cyclist injured in collision with railway train or railway vehicle: Driver injured in nontraffic accident
9968	V151 Pedal cyclist injured in collision with railway train or railway vehicle: Passenger injured in nontraffic accident
9969	V152 Pedal cyclist injured in collision with railway train or railway vehicle: Unspecified pedal cyclist injured in nontraffic accident
9970	V153 Pedal cyclist injured in collision with railway train or railway vehicle: Person injured while boarding or alighting
9971	V154 Pedal cyclist injured in collision with railway train or railway vehicle: Driver injured in traffic accident
9972	V155 Pedal cyclist injured in collision with railway train or railway vehicle: Passenger injured in traffic accident
9973	V159 Pedal cyclist injured in collision with railway train or railway vehicle: Unspecified pedal cyclist injured in traffic accident
9974	V16 Pedal cyclist injured in collision with other nonmotor vehicle
9975	V160 Pedal cyclist injured in collision with other nonmotor vehicle: Driver injured in nontraffic accident
9976	V161 Pedal cyclist injured in collision with other nonmotor vehicle: Passenger injured in nontraffic accident
9977	V162 Pedal cyclist injured in collision with other nonmotor vehicle: Unspecified pedal cyclist injured in nontraffic accident
9978	V163 Pedal cyclist injured in collision with other nonmotor vehicle: Person injured while boarding or alighting
9979	V164 Pedal cyclist injured in collision with other nonmotor vehicle: Driver injured in traffic accident
9980	V165 Pedal cyclist injured in collision with other nonmotor vehicle: Passenger injured in traffic accident
9981	V169 Pedal cyclist injured in collision with other nonmotor vehicle: Unspecified pedal cyclist injured in traffic accident
9982	V17 Pedal cyclist injured in collision with fixed or stationary object
9983	V170 Pedal cyclist injured in collision with fixed or stationary object: Driver injured in nontraffic accident
9984	V171 Pedal cyclist injured in collision with fixed or stationary object: Passenger injured in nontraffic accident
9985	V172 Pedal cyclist injured in collision with fixed or stationary object: Unspecified pedal cyclist injured in nontraffic accident
9986	V173 Pedal cyclist injured in collision with fixed or stationary object: Person injured while boarding or alighting
9987	V174 Pedal cyclist injured in collision with fixed or stationary object: Driver injured in traffic accident
9988	V175 Pedal cyclist injured in collision with fixed or stationary object: Passenger injured in traffic accident
9989	V179 Pedal cyclist injured in collision with fixed or stationary object: Unspecified pedal cyclist injured in traffic accident
9990	V18 Pedal cyclist injured in noncollision transport accident
9991	V180 Pedal cyclist injured in noncollision transport accident: Driver injured in nontraffic accident
9992	V181 Pedal cyclist injured in noncollision transport accident: Passenger injured in nontraffic accident
9993	V182 Pedal cyclist injured in noncollision transport accident: Unspecified pedal cyclist injured in nontraffic accident
9994	V183 Pedal cyclist injured in noncollision transport accident: Person injured while boarding or alighting
9995	V184 Pedal cyclist injured in noncollision transport accident: Driver injured in traffic accident
9996	V185 Pedal cyclist injured in noncollision transport accident: Passenger injured in traffic accident
9997	V189 Pedal cyclist injured in noncollision transport accident: Unspecified pedal cyclist injured in traffic accident
9998	V19 Pedal cyclist injured in other and unspecified transport accidents
9999	V190 Driver injured in collision with other and unspecified motor vehicles in nontraffic accident
10000	V191 Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident
10001	V192 Unspecified pedal cyclist injured in collision with other and unspecified motor vehicles in nontraffic accident
10002	V193 Pedal cyclist [any] injured in unspecified nontraffic accident
10003	V194 Driver injured in collision with other and unspecified motor vehicles in traffic accident
10004	V195 Passenger injured in collision with other and unspecified motor vehicles in traffic accident
10005	V196 Unspecified pedal cyclist injured in collision with other and unspecified motor vehicles in traffic accident
10006	V198 Pedal cyclist [any] injured in other specified transport accidents
10007	V199 Pedal cyclist [any] injured in unspecified traffic accident
10008	V20 Motorcycle rider injured in collision with pedestrian or animal
10009	V200 Motorcycle rider injured in collision with pedestrian or animal: Driver injured in nontraffic accident
10010	V201 Motorcycle rider injured in collision with pedestrian or animal: Passenger injured in nontraffic accident
10011	V202 Motorcycle rider injured in collision with pedestrian or animal: Unspecified motorcycle rider injured in nontraffic accident
10012	V203 Motorcycle rider injured in collision with pedestrian or animal: Person injured while boarding or alighting
10013	V204 Motorcycle rider injured in collision with pedestrian or animal: Driver injured in traffic accident
10014	V205 Motorcycle rider injured in collision with pedestrian or animal: Passenger injured in traffic accident
10015	V209 Motorcycle rider injured in collision with pedestrian or animal: Unspecified motorcycle rider injured in traffic accident
10016	V21 Motorcycle rider injured in collision with pedal cycle
10017	V210 Motorcycle rider injured in collision with pedal cycle: Driver injured in nontraffic accident
10018	V211 Motorcycle rider injured in collision with pedal cycle: Passenger injured in nontraffic accident
10019	V212 Motorcycle rider injured in collision with pedal cycle: Unspecified motorcycle rider injured in nontraffic accident
10020	V213 Motorcycle rider injured in collision with pedal cycle: Person injured while boarding or alighting
10021	V214 Motorcycle rider injured in collision with pedal cycle: Driver injured in traffic accident
10022	V215 Motorcycle rider injured in collision with pedal cycle: Passenger injured in traffic accident
10023	V219 Motorcycle rider injured in collision with pedal cycle: Unspecified motorcycle rider injured in traffic accident
10024	V22 Motorcycle rider injured in collision with two- or three-wheeled motor vehicle
10025	V220 Motorcycle rider injured in collision with two- or three-wheeled motor vehicle: Driver injured in nontraffic accident
10026	V221 Motorcycle rider injured in collision with two- or three-wheeled motor vehicle: Passenger injured in nontraffic accident
10027	V222 Motorcycle rider injured in collision with two- or three-wheeled motor vehicle: Unspecified motorcycle rider injured in nontraffic accident
10028	V223 Motorcycle rider injured in collision with two- or three-wheeled motor vehicle: Person injured while boarding or alighting
10029	V224 Motorcycle rider injured in collision with two- or three-wheeled motor vehicle: Driver injured in traffic accident
10030	V225 Motorcycle rider injured in collision with two- or three-wheeled motor vehicle: Passenger injured in traffic accident
10031	V229 Motorcycle rider injured in collision with two- or three-wheeled motor vehicle: Unspecified motorcycle rider injured in traffic accident
10032	V23 Motorcycle rider injured in collision with car, pick-up truck or van
10033	V230 Motorcycle rider injured in collision with car, pick-up truck or van: Driver injured in nontraffic accident
10034	V231 Motorcycle rider injured in collision with car, pick-up truck or van: Passenger injured in nontraffic accident
10035	V232 Motorcycle rider injured in collision with car, pick-up truck or van: Unspecified motorcycle rider injured in nontraffic accident
10036	V233 Motorcycle rider injured in collision with car, pick-up truck or van: Person injured while boarding or alighting
10037	V234 Motorcycle rider injured in collision with car, pick-up truck or van: Driver injured in traffic accident
10038	V235 Motorcycle rider injured in collision with car, pick-up truck or van: Passenger injured in traffic accident
10039	V239 Motorcycle rider injured in collision with car, pick-up truck or van: Unspecified motorcycle rider injured in traffic accident
10040	V24 Motorcycle rider injured in collision with heavy transport vehicle or bus
10041	V240 Motorcycle rider injured in collision with heavy transport vehicle or bus: Driver injured in nontraffic accident
10042	V241 Motorcycle rider injured in collision with heavy transport vehicle or bus: Passenger injured in nontraffic accident
10043	V242 Motorcycle rider injured in collision with heavy transport vehicle or bus: Unspecified motorcycle rider injured in nontraffic accident
10044	V243 Motorcycle rider injured in collision with heavy transport vehicle or bus: Person injured while boarding or alighting
10045	V244 Motorcycle rider injured in collision with heavy transport vehicle or bus: Driver injured in traffic accident
10046	V245 Motorcycle rider injured in collision with heavy transport vehicle or bus: Passenger injured in traffic accident
10047	V249 Motorcycle rider injured in collision with heavy transport vehicle or bus: Unspecified motorcycle rider injured in traffic accident
10048	V25 Motorcycle rider injured in collision with railway train or railway vehicle
10049	V250 Motorcycle rider injured in collision with railway train or railway vehicle: Driver injured in nontraffic accident
10050	V251 Motorcycle rider injured in collision with railway train or railway vehicle: Passenger injured in nontraffic accident
10051	V252 Motorcycle rider injured in collision with railway train or railway vehicle: Unspecified motorcycle rider injured in nontraffic accident
10052	V253 Motorcycle rider injured in collision with railway train or railway vehicle: Person injured while boarding or alighting
10053	V254 Motorcycle rider injured in collision with railway train or railway vehicle: Driver injured in traffic accident
10054	V255 Motorcycle rider injured in collision with railway train or railway vehicle: Passenger injured in traffic accident
10055	V259 Motorcycle rider injured in collision with railway train or railway vehicle: Unspecified motorcycle rider injured in traffic accident
10056	V26 Motorcycle rider injured in collision with other nonmotor vehicle
10057	V260 Motorcycle rider injured in collision with other nonmotor vehicle: Driver injured in nontraffic accident
10058	V261 Motorcycle rider injured in collision with other nonmotor vehicle: Passenger injured in nontraffic accident
10059	V262 Motorcycle rider injured in collision with other nonmotor vehicle: Unspecified motorcycle rider injured in nontraffic accident
10060	V263 Motorcycle rider injured in collision with other nonmotor vehicle: Person injured while boarding or alighting
10061	V264 Motorcycle rider injured in collision with other nonmotor vehicle: Driver injured in traffic accident
10062	V265 Motorcycle rider injured in collision with other nonmotor vehicle: Passenger injured in traffic accident
10063	V269 Motorcycle rider injured in collision with other nonmotor vehicle: Unspecified motorcycle rider injured in traffic accident
10064	V27 Motorcycle rider injured in collision with fixed or stationary object
10065	V270 Motorcycle rider injured in collision with fixed or stationary object: Driver injured in nontraffic accident
10066	V271 Motorcycle rider injured in collision with fixed or stationary object: Passenger injured in nontraffic accident
10067	V272 Motorcycle rider injured in collision with fixed or stationary object: Unspecified motorcycle rider injured in nontraffic accident
10068	V273 Motorcycle rider injured in collision with fixed or stationary object: Person injured while boarding or alighting
10069	V274 Motorcycle rider injured in collision with fixed or stationary object: Driver injured in traffic accident
10070	V275 Motorcycle rider injured in collision with fixed or stationary object: Passenger injured in traffic accident
10071	V279 Motorcycle rider injured in collision with fixed or stationary object: Unspecified motorcycle rider injured in traffic accident
10072	V28 Motorcycle rider injured in noncollision transport accident
10073	V280 Motorcycle rider injured in noncollision transport accident: Driver injured in nontraffic accident
10074	V281 Motorcycle rider injured in noncollision transport accident: Passenger injured in nontraffic accident
10075	V282 Motorcycle rider injured in noncollision transport accident: Unspecified motorcycle rider injured in nontraffic accident
10076	V283 Motorcycle rider injured in noncollision transport accident: Person injured while boarding or alighting
10077	V915 Accident to watercraft causing other injury: Canoe or kayak
10078	V284 Motorcycle rider injured in noncollision transport accident: Driver injured in traffic accident
10079	V285 Motorcycle rider injured in noncollision transport accident: Passenger injured in traffic accident
10080	V289 Motorcycle rider injured in noncollision transport accident: Unspecified motorcycle rider injured in traffic accident
10081	V29 Motorcycle rider injured in other and unspecified transport accidents
10082	V290 Driver injured in collision with other and unspecified motor vehicles in nontraffic accident
10083	V291 Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident
10084	V292 Unspecified motorcycle rider injured in collision with other and unspecified motor vehicles in nontraffic accident
10085	V293 Motorcycle rider [any] injured in unspecified nontraffic accident
10086	V294 Driver injured in collision with other and unspecified motor vehicles in traffic accident
10087	V295 Passenger injured in collision with other and unspecified motor vehicles in traffic accident
10088	V296 Unspecified motorcycle rider injured in collision with other and unspecified motor vehicles in traffic accident
10089	V298 Motorcycle rider [any] injured in other specified transport accidents
10090	V299 Motorcycle rider [any] injured in unspecified traffic accident
10091	V30 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal
10092	V300 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Driver injured in nontraffic accident
10093	V301 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Passenger injured in nontraffic accident
10094	V302 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Person on outside of vehicle injured in nontraffic accident
10095	V303 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10096	V304 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Person injured while boarding or alighting
10097	V305 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Driver injured in traffic accident
10098	V306 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Passenger injured in traffic accident
10099	V307 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Person on outside of vehicle injured in traffic accident
10100	V309 Occupant of three-wheeled motor vehicle injured in collision with pedestrian or animal: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10101	V31 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle
10102	V310 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Driver injured in nontraffic accident
10103	V311 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Passenger injured in nontraffic accident
10104	V312 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Person on outside of vehicle injured in nontraffic accident
10105	V313 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10106	V314 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Person injured while boarding or alighting
10107	V315 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Driver injured in traffic accident
10108	V316 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Passenger injured in traffic accident
10109	V317 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Person on outside of vehicle injured in traffic accident
10110	V319 Occupant of three-wheeled motor vehicle injured in collision with pedal cycle: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10111	V32 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle
10112	V320 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Driver injured in nontraffic accident
10113	V321 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Passenger injured in nontraffic accident
10114	V322 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in nontraffic accident
10115	V323 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10116	V324 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Person injured while boarding or alighting
10117	V325 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Driver injured in traffic accident
10118	V326 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Passenger injured in traffic accident
10119	V327 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in traffic accident
10120	V329 Occupant of three-wheeled motor vehicle injured in collision with two- or three-wheeled motor vehicle: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10121	V33 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van
10122	V330 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Driver injured in nontraffic accident
10123	V331 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Passenger injured in nontraffic accident
10124	V332 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in nontraffic accident
10125	V333 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10126	W18 Other fall on same level
10789	W20 Struck by thrown, projected or falling object
10127	V334 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Person injured while boarding or alighting
10128	V335 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Driver injured in traffic accident
10129	V336 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Passenger injured in traffic accident
10130	V337 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in traffic accident
10131	V339 Occupant of three-wheeled motor vehicle injured in collision with car, pick-up truck or van: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10132	V34 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus
10133	V340 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Driver injured in nontraffic accident
10134	V341 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Passenger injured in nontraffic accident
10135	V342 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in nontraffic accident
10136	V343 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10137	V344 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Person injured while boarding or alighting
10138	V345 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Driver injured in traffic accident
10139	V346 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Passenger injured in traffic accident
10140	V347 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in traffic accident
10141	V349 Occupant of three-wheeled motor vehicle injured in collision with heavy transport vehicle or bus: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10142	V35 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle
10143	V350 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Driver injured in nontraffic accident
10144	V351 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Passenger injured in nontraffic accident
10145	V352 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in nontraffic accident
10146	V353 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10147	V354 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Person injured while boarding or alighting
10148	V355 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Driver injured in traffic accident
10149	V959 Unspecified aircraft accident injuring occupant
10150	V356 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Passenger injured in traffic accident
10151	V357 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in traffic accident
10152	V359 Occupant of three-wheeled motor vehicle injured in collision with railway train or railway vehicle: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10153	V36 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle
10154	V360 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Driver injured in nontraffic accident
10155	V361 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Passenger injured in nontraffic accident
10156	V362 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in nontraffic accident
10157	V363 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10158	V364 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Person injured while boarding or alighting
10159	V365 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Driver injured in traffic accident
10160	V366 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Passenger injured in traffic accident
10161	V367 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in traffic accident
10162	V369 Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10163	V37 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object
10164	V370 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Driver injured in nontraffic accident
10165	V371 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Passenger injured in nontraffic accident
10166	V372 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Person on outside of vehicle injured in nontraffic accident
10167	V373 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10168	V374 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Person injured while boarding or alighting
10169	V375 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Driver injured in traffic accident
10170	V483 Car occupant injured in noncollision transport accident: Unspecified car occupant injured in nontraffic accident
10790	W21 Striking against or struck by sports equipment
10171	V376 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Passenger injured in traffic accident
10172	V377 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Person on outside of vehicle injured in traffic accident
10173	V379 Occupant of three-wheeled motor vehicle injured in collision with fixed or stationary object: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10174	V38 Occupant of three-wheeled motor vehicle injured in noncollision transport accident
10175	V380 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Driver injured in nontraffic accident
10176	V381 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Passenger injured in nontraffic accident
10177	V382 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Person on outside of vehicle injured in nontraffic accident
10178	V383 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Unspecified occupant of three-wheeled motor vehicle injured in nontraffic accident
10179	V384 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Person injured while boarding or alighting
10180	V385 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Driver injured in traffic accident
10181	V386 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Passenger injured in traffic accident
10182	V387 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Person on outside of vehicle injured in traffic accident
10183	V389 Occupant of three-wheeled motor vehicle injured in noncollision transport accident: Unspecified occupant of three-wheeled motor vehicle injured in traffic accident
10184	V39 Occupant of three-wheeled motor vehicle injured in other and unspecified transport accidents
10185	V390 Driver injured in collision with other and unspecified motor vehicles in nontraffic accident
10186	V391 Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident
10187	V392 Unspecified occupant of three-wheeled motor vehicle injured in collision with other and unspecified motor vehicles in nontraffic accident
10188	V393 Occupant [any] of three-wheeled motor vehicle injured in unspecified nontraffic accident
10189	V394 Driver injured in collision with other and unspecified motor vehicles in traffic accident
10190	V395 Passenger injured in collision with other and unspecified motor vehicles in traffic accident
10191	V396 Unspecified occupant of three-wheeled motor vehicle injured in collision with other and unspecified motor vehicles in traffic accident
10192	V398 Occupant [any] of three-wheeled motor vehicle injured in other specified transport accidents
10193	V399 Occupant [any] of three-wheeled motor vehicle injured in unspecified traffic accident
10194	V40 Car occupant injured in collision with pedestrian or animal
10195	V400 Car occupant injured in collision with pedestrian or animal: Driver injured in nontraffic accident
10196	V401 Car occupant injured in collision with pedestrian or animal: Passenger injured in nontraffic accident
10197	V402 Car occupant injured in collision with pedestrian or animal: Person on outside of vehicle injured in nontraffic accident
10198	V403 Car occupant injured in collision with pedestrian or animal: Unspecified car occupant injured in nontraffic accident
10199	Y414 Anthelminthics
10200	V404 Car occupant injured in collision with pedestrian or animal: Person injured while boarding or alighting
10201	V405 Car occupant injured in collision with pedestrian or animal: Driver injured in traffic accident
10202	V406 Car occupant injured in collision with pedestrian or animal: Passenger injured in traffic accident
10203	V407 Car occupant injured in collision with pedestrian or animal: Person on outside of vehicle injured in traffic accident
10204	V409 Car occupant injured in collision with pedestrian or animal: Unspecified car occupant injured in traffic accident
10205	V41 Car occupant injured in collision with pedal cycle
10206	V410 Car occupant injured in collision with pedal cycle: Driver injured in nontraffic accident
10207	V411 Car occupant injured in collision with pedal cycle: Passenger injured in nontraffic accident
10208	V412 Car occupant injured in collision with pedal cycle: Person on outside of vehicle injured in nontraffic accident
10209	V413 Car occupant injured in collision with pedal cycle: Unspecified car occupant injured in nontraffic accident
10210	V414 Car occupant injured in collision with pedal cycle: Person injured while boarding or alighting
10211	V415 Car occupant injured in collision with pedal cycle: Driver injured in traffic accident
10212	V416 Car occupant injured in collision with pedal cycle: Passenger injured in traffic accident
10213	V417 Car occupant injured in collision with pedal cycle: Person on outside of vehicle injured in traffic accident
10214	V419 Car occupant injured in collision with pedal cycle: Unspecified car occupant injured in traffic accident
10215	V42 Car occupant injured in collision with two- or three-wheeled motor vehicle
10216	V420 Car occupant injured in collision with two- or three-wheeled motor vehicle: Driver injured in nontraffic accident
10217	V421 Car occupant injured in collision with two- or three-wheeled motor vehicle: Passenger injured in nontraffic accident
10218	V422 Car occupant injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in nontraffic accident
10219	V423 Car occupant injured in collision with two- or three-wheeled motor vehicle: Unspecified car occupant injured in nontraffic accident
10220	V424 Car occupant injured in collision with two- or three-wheeled motor vehicle: Person injured while boarding or alighting
10221	V425 Car occupant injured in collision with two- or three-wheeled motor vehicle: Driver injured in traffic accident
10222	V426 Car occupant injured in collision with two- or three-wheeled motor vehicle: Passenger injured in traffic accident
10223	V427 Car occupant injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in traffic accident
10224	V845 Driver of special agricultural vehicle injured in nontraffic accident
10225	V429 Car occupant injured in collision with two- or three-wheeled motor vehicle: Unspecified car occupant injured in traffic accident
10226	V43 Car occupant injured in collision with car, pick-up truck or van
10227	V430 Car occupant injured in collision with car, pick-up truck or van: Driver injured in nontraffic accident
10228	V431 Car occupant injured in collision with car, pick-up truck or van: Passenger injured in nontraffic accident
10229	V432 Car occupant injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in nontraffic accident
10230	V433 Car occupant injured in collision with car, pick-up truck or van: Unspecified car occupant injured in nontraffic accident
10231	V434 Car occupant injured in collision with car, pick-up truck or van: Person injured while boarding or alighting
10232	V435 Car occupant injured in collision with car, pick-up truck or van: Driver injured in traffic accident
10233	V436 Car occupant injured in collision with car, pick-up truck or van: Passenger injured in traffic accident
10234	V437 Car occupant injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in traffic accident
10235	V439 Car occupant injured in collision with car, pick-up truck or van: Unspecified car occupant injured in traffic accident
10236	V44 Car occupant injured in collision with heavy transport vehicle or bus
10237	V440 Car occupant injured in collision with heavy transport vehicle or bus: Driver injured in nontraffic accident
10238	V441 Car occupant injured in collision with heavy transport vehicle or bus: Passenger injured in nontraffic accident
10239	V442 Car occupant injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in nontraffic accident
10240	V443 Car occupant injured in collision with heavy transport vehicle or bus: Unspecified car occupant injured in nontraffic accident
10241	V444 Car occupant injured in collision with heavy transport vehicle or bus: Person injured while boarding or alighting
10242	V445 Car occupant injured in collision with heavy transport vehicle or bus: Driver injured in traffic accident
10243	V446 Car occupant injured in collision with heavy transport vehicle or bus: Passenger injured in traffic accident
10244	V447 Car occupant injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in traffic accident
10245	V449 Car occupant injured in collision with heavy transport vehicle or bus: Unspecified car occupant injured in traffic accident
10246	V45 Car occupant injured in collision with railway train or railway vehicle
10247	V450 Car occupant injured in collision with railway train or railway vehicle: Driver injured in nontraffic accident
10248	V451 Car occupant injured in collision with railway train or railway vehicle: Passenger injured in nontraffic accident
10249	V452 Car occupant injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in nontraffic accident
10250	V453 Car occupant injured in collision with railway train or railway vehicle: Unspecified car occupant injured in nontraffic accident
10251	V454 Car occupant injured in collision with railway train or railway vehicle: Person injured while boarding or alighting
10252	V455 Car occupant injured in collision with railway train or railway vehicle: Driver injured in traffic accident
10253	V456 Car occupant injured in collision with railway train or railway vehicle: Passenger injured in traffic accident
10254	V457 Car occupant injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in traffic accident
10255	V459 Car occupant injured in collision with railway train or railway vehicle: Unspecified car occupant injured in traffic accident
10256	V460 Car occupant injured in collision with other nonmotor vehicle: Driver injured in nontraffic accident
10257	V461 Car occupant injured in collision with other nonmotor vehicle: Passenger injured in nontraffic accident
10258	V462 Car occupant injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in nontraffic accident
10259	V463 Car occupant injured in collision with other nonmotor vehicle: Unspecified car occupant injured in nontraffic accident
10260	V464 Car occupant injured in collision with other nonmotor vehicle: Person injured while boarding or alighting
10261	V465 Car occupant injured in collision with other nonmotor vehicle: Driver injured in traffic accident
10262	V466 Car occupant injured in collision with other nonmotor vehicle: Passenger injured in traffic accident
10263	V467 Car occupant injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in traffic accident
10264	V469 Car occupant injured in collision with other nonmotor vehicle: Unspecified car occupant injured in traffic accident
10265	V47 Car occupant injured in collision with fixed or stationary object
10266	V470 Car occupant injured in collision with fixed or stationary object: Driver injured in nontraffic accident
10267	V471 Car occupant injured in collision with fixed or stationary object: Passenger injured in nontraffic accident
10268	V472 Car occupant injured in collision with fixed or stationary object: Person on outside of vehicle injured in nontraffic accident
10269	V473 Car occupant injured in collision with fixed or stationary object: Unspecified car occupant injured in nontraffic accident
10270	V474 Car occupant injured in collision with fixed or stationary object: Person injured while boarding or alighting
10271	V475 Car occupant injured in collision with fixed or stationary object: Driver injured in traffic accident
10272	V476 Car occupant injured in collision with fixed or stationary object: Passenger injured in traffic accident
10273	V477 Car occupant injured in collision with fixed or stationary object: Person on outside of vehicle injured in traffic accident
10274	V479 Car occupant injured in collision with fixed or stationary object: Unspecified car occupant injured in traffic accident
10275	V48 Car occupant injured in noncollision transport accident
10276	V480 Car occupant injured in noncollision transport accident: Driver injured in nontraffic accident
10277	V481 Car occupant injured in noncollision transport accident: Passenger injured in nontraffic accident
10278	V482 Car occupant injured in noncollision transport accident: Person on outside of vehicle injured in nontraffic accident
10279	V484 Car occupant injured in noncollision transport accident: Person injured while boarding or alighting
10280	V485 Car occupant injured in noncollision transport accident: Driver injured in traffic accident
10281	V486 Car occupant injured in noncollision transport accident: Passenger injured in traffic accident
10282	V487 Car occupant injured in noncollision transport accident: Person on outside of vehicle injured in traffic accident
10283	V489 Car occupant injured in noncollision transport accident: Unspecified car occupant injured in traffic accident
10284	V49 Car occupant injured in other and unspecified transport accidents
10285	V490 Driver injured in collision with other and unspecified motor vehicles in nontraffic accident
10286	V491 Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident
10287	V492 Unspecified car occupant injured in collision with other and unspecified motor vehicles in nontraffic accident
10288	V493 Car occupant [any] injured in unspecified nontraffic accident
10289	V494 Driver injured in collision with other and unspecified motor vehicles in traffic accident
10290	V495 Passenger injured in collision with other and unspecified motor vehicles in traffic accident
10291	V496 Unspecified car occupant injured in collision with other and unspecified motor vehicles in traffic accident
10292	V498 Car occupant [any] injured in other specified transport accidents
10293	V499 Car occupant [any] injured in unspecified traffic accident
10294	V50 Occupant of pick-up truck or van injured in collision with pedestrian or animal
10295	V500 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Driver injured in nontraffic accident
10296	V501 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Passenger injured in nontraffic accident
10297	V502 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Person on outside of vehicle injured in nontraffic accident
10298	V503 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10299	V504 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Person injured while boarding or alighting
10300	V505 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Driver injured in traffic accident
10301	V506 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Passenger injured in traffic accident
10302	V507 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Person on outside of vehicle injured in traffic accident
10303	V509 Occupant of pick-up truck or van injured in collision with pedestrian or animal: Unspecified occupant of pick-up truck or van injured in traffic accident
10304	V51 Occupant of pick-up truck or van injured in collision with pedal cycle
10305	V510 Occupant of pick-up truck or van injured in collision with pedal cycle: Driver injured in nontraffic accident
10306	V511 Occupant of pick-up truck or van injured in collision with pedal cycle: Passenger injured in nontraffic accident
10307	V512 Occupant of pick-up truck or van injured in collision with pedal cycle: Person on outside of vehicle injured in nontraffic accident
10308	V513 Occupant of pick-up truck or van injured in collision with pedal cycle: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10309	V514 Occupant of pick-up truck or van injured in collision with pedal cycle: Person injured while boarding or alighting
10310	V515 Occupant of pick-up truck or van injured in collision with pedal cycle: Driver injured in traffic accident
10311	V516 Occupant of pick-up truck or van injured in collision with pedal cycle: Passenger injured in traffic accident
10312	V517 Occupant of pick-up truck or van injured in collision with pedal cycle: Person on outside of vehicle injured in traffic accident
10313	V519 Occupant of pick-up truck or van injured in collision with pedal cycle: Unspecified occupant of pick-up truck or van injured in traffic accident
10314	V52 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle
10315	V520 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Driver injured in nontraffic accident
10316	V521 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Passenger injured in nontraffic accident
10317	V522 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in nontraffic accident
10318	V523 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10319	V524 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Person injured while boarding or alighting
10320	V525 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Driver injured in traffic accident
10321	V526 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Passenger injured in traffic accident
10322	V527 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in traffic accident
10323	V529 Occupant of pick-up truck or van injured in collision with two- or three-wheeled motor vehicle: Unspecified occupant of pick-up truck or van injured in traffic accident
10324	V53 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van
10325	V530 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Driver injured in nontraffic accident
10326	V531 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Passenger injured in nontraffic accident
10327	V532 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in nontraffic accident
10328	V533 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10329	V534 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Person injured while boarding or alighting
11780	Z565 Uncongenial work
10330	V535 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Driver injured in traffic accident
10331	V536 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Passenger injured in traffic accident
10332	V537 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in traffic accident
10333	V539 Occupant of pick-up truck or van injured in collision with car, pick-up truck or van: Unspecified occupant of pick-up truck or van injured in traffic accident
10334	V54 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus
10335	V540 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Driver injured in nontraffic accident
10336	V541 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Passenger injured in nontraffic accident
10337	V542 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in nontraffic accident
10338	V543 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10339	V544 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Person injured while boarding or alighting
10340	V545 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Driver injured in traffic accident
10341	V546 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Passenger injured in traffic accident
10342	V547 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in traffic accident
10343	V549 Occupant of pick-up truck or van injured in collision with heavy transport vehicle or bus: Unspecified occupant of pick-up truck or van injured in traffic accident
10344	V55 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle
10345	V550 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Driver injured in nontraffic accident
10346	V551 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Passenger injured in nontraffic accident
10347	V552 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in nontraffic accident
10348	V553 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10349	V554 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Person injured while boarding or alighting
10350	V555 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Driver injured in traffic accident
10351	V556 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Passenger injured in traffic accident
10352	V557 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in traffic accident
10353	V559 Occupant of pick-up truck or van injured in collision with railway train or railway vehicle: Unspecified occupant of pick-up truck or van injured in traffic accident
10354	V56 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle
10355	V560 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Driver injured in nontraffic accident
10356	V820 Occupant of streetcar injured in collision with motor vehicle in nontraffic accident
10357	V561 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Passenger injured in nontraffic accident
10358	V562 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in nontraffic accident
10359	V563 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10360	V564 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Person injured while boarding or alighting
10361	V565 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Driver injured in traffic accident
10362	V566 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Passenger injured in traffic accident
10363	V567 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in traffic accident
10364	V569 Occupant of pick-up truck or van injured in collision with other nonmotor vehicle: Unspecified occupant of pick-up truck or van injured in traffic accident
10365	V57 Occupant of pick-up truck or van injured in collision with fixed or stationary object
10366	V570 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Driver injured in nontraffic accident
10367	V571 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Passenger injured in nontraffic accident
10368	V572 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Person on outside of vehicle injured in nontraffic accident
10369	V573 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10370	V574 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Person injured while boarding or alighting
10371	V575 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Driver injured in traffic accident
10372	V576 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Passenger injured in traffic accident
10373	V577 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Person on outside of vehicle injured in traffic accident
10374	V579 Occupant of pick-up truck or van injured in collision with fixed or stationary object: Unspecified occupant of pick-up truck or van injured in traffic accident
10375	V58 Occupant of pick-up truck or van injured in noncollision transport accident
10791	W22 Striking against or struck by other objects
10376	V580 Occupant of pick-up truck or van injured in noncollision transport accident: Driver injured in nontraffic accident
10377	V581 Occupant of pick-up truck or van injured in noncollision transport accident: Passenger injured in nontraffic accident
10378	V582 Occupant of pick-up truck or van injured in noncollision transport accident: Person on outside of vehicle injured in nontraffic accident
10379	V583 Occupant of pick-up truck or van injured in noncollision transport accident: Unspecified occupant of pick-up truck or van injured in nontraffic accident
10380	V584 Occupant of pick-up truck or van injured in noncollision transport accident: Person injured while boarding or alighting
10381	V585 Occupant of pick-up truck or van injured in noncollision transport accident: Driver injured in traffic accident
10382	V586 Occupant of pick-up truck or van injured in noncollision transport accident: Passenger injured in traffic accident
10383	V587 Occupant of pick-up truck or van injured in noncollision transport accident: Person on outside of vehicle injured in traffic accident
10384	V589 Occupant of pick-up truck or van injured in noncollision transport accident: Unspecified occupant of pick-up truck or van injured in traffic accident
10385	V59 Occupant of pick-up truck or van injured in other and unspecified transport accidents
10386	V590 Driver injured in collision with other and unspecified motor vehicles in nontraffic accident
10387	V591 Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident
10388	V592 Unspecified occupant of pick-up truck or van injured in collision with other and unspecified motor vehicles in nontraffic accident
10389	V593 Occupant [any] of pick-up truck or van injured in unspecified nontraffic accident
10390	V594 Driver injured in collision with other and unspecified motor vehicles in traffic accident
10391	V595 Passenger injured in collision with other and unspecified motor vehicles in traffic accident
10392	V596 Unspecified occupant of pick-up truck or van injured in collision with other and unspecified motor vehicles in traffic accident
10393	V598 Occupant [any] of pick-up truck or van injured in other specified transport accidents
10394	V599 Occupant [any] of pick-up truck or van injured in unspecified traffic accident
10395	V60 Occupant of heavy transport vehicle injured in collision with pedestrian or animal
10396	V600 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Driver injured in nontraffic accident
10397	V601 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Passenger injured in nontraffic accident
10398	V602 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Person on outside of vehicle injured in nontraffic accident
10399	V603 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10400	V604 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Person injured while boarding or alighting
10401	V605 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Driver injured in traffic accident
10402	V606 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Passenger injured in traffic accident
10403	V607 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Person on outside of vehicle injured in traffic accident
10404	V609 Occupant of heavy transport vehicle injured in collision with pedestrian or animal: Unspecified occupant of heavy transport vehicle injured in traffic accident
10405	V61 Occupant of heavy transport vehicle injured in collision with pedal cycle
10406	V610 Occupant of heavy transport vehicle injured in collision with pedal cycle: Driver injured in nontraffic accident
10407	V611 Occupant of heavy transport vehicle injured in collision with pedal cycle: Passenger injured in nontraffic accident
10408	V612 Occupant of heavy transport vehicle injured in collision with pedal cycle: Person on outside of vehicle injured in nontraffic accident
10409	V613 Occupant of heavy transport vehicle injured in collision with pedal cycle: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10410	V614 Occupant of heavy transport vehicle injured in collision with pedal cycle: Person injured while boarding or alighting
10411	V615 Occupant of heavy transport vehicle injured in collision with pedal cycle: Driver injured in traffic accident
10412	V616 Occupant of heavy transport vehicle injured in collision with pedal cycle: Passenger injured in traffic accident
10413	V617 Occupant of heavy transport vehicle injured in collision with pedal cycle: Person on outside of vehicle injured in traffic accident
10414	V619 Occupant of heavy transport vehicle injured in collision with pedal cycle: Unspecified occupant of heavy transport vehicle injured in traffic accident
10415	V62 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle
10416	V620 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Driver injured in nontraffic accident
10417	V621 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Passenger injured in nontraffic accident
10418	V622 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in nontraffic accident
10419	V623 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10420	V624 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Person injured while boarding or alighting
10421	V625 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Driver injured in traffic accident
10422	V626 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Passenger injured in traffic accident
10423	V627 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in traffic accident
10424	V725 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Driver injured in traffic accident
11876	Z708 Other sex counselling
10425	V629 Occupant of heavy transport vehicle injured in collision with two- or three-wheeled motor vehicle: Unspecified occupant of heavy transport vehicle injured in traffic accident
10426	V63 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van
10427	V630 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Driver injured in nontraffic accident
10428	V631 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Passenger injured in nontraffic accident
10429	V632 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in nontraffic accident
10430	V633 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10431	V634 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Person injured while boarding or alighting
10432	V635 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Driver injured in traffic accident
10433	V636 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Passenger injured in traffic accident
10434	V637 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in traffic accident
10435	V639 Occupant of heavy transport vehicle injured in collision with car, pick-up truck or van: Unspecified occupant of heavy transport vehicle injured in traffic accident
10436	V64 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus
10437	V640 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Driver injured in nontraffic accident
10438	V641 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Passenger injured in nontraffic accident
10439	V642 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in nontraffic accident
10440	V643 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10441	V644 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Person injured while boarding or alighting
10442	V645 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Driver injured in traffic accident
10443	V646 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Passenger injured in traffic accident
10444	V647 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in traffic accident
10445	V649 Occupant of heavy transport vehicle injured in collision with heavy transport vehicle or bus: Unspecified occupant of heavy transport vehicle injured in traffic accident
10446	V65 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle
10447	V650 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Driver injured in nontraffic accident
10448	V651 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Passenger injured in nontraffic accident
10449	V652 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in nontraffic accident
10450	V653 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10451	V654 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Person injured while boarding or alighting
10452	V655 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Driver injured in traffic accident
10453	V656 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Passenger injured in traffic accident
10454	V657 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in traffic accident
10455	V659 Occupant of heavy transport vehicle injured in collision with railway train or railway vehicle: Unspecified occupant of heavy transport vehicle injured in traffic accident
10456	V66 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle
10457	V660 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Driver injured in nontraffic accident
10458	V661 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Passenger injured in nontraffic accident
10459	V662 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in nontraffic accident
10460	V663 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10461	V664 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Person injured while boarding or alighting
10462	V665 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Driver injured in traffic accident
10463	V666 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Passenger injured in traffic accident
10464	V667 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in traffic accident
10465	V669 Occupant of heavy transport vehicle injured in collision with other nonmotor vehicle: Unspecified occupant of heavy transport vehicle injured in traffic accident
10466	V67 Occupant of heavy transport vehicle injured in collision with fixed or stationary object
10467	V670 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Driver injured in nontraffic accident
10468	V671 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Passenger injured in nontraffic accident
10469	V726 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Passenger injured in traffic accident
10792	W23 Caught, crushed, jammed or pinched in or between objects
10470	V672 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Person on outside of vehicle injured in nontraffic accident
10471	V673 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10472	V674 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Person injured while boarding or alighting
10473	V675 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Driver injured in traffic accident
10474	V676 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Passenger injured in traffic accident
10475	V677 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Person on outside of vehicle injured in traffic accident
10476	V679 Occupant of heavy transport vehicle injured in collision with fixed or stationary object: Unspecified occupant of heavy transport vehicle injured in traffic accident
10477	V68 Occupant of heavy transport vehicle injured in noncollision transport accident
10478	V680 Occupant of heavy transport vehicle injured in noncollision transport accident: Driver injured in nontraffic accident
10479	V681 Occupant of heavy transport vehicle injured in noncollision transport accident: Passenger injured in nontraffic accident
10480	V682 Occupant of heavy transport vehicle injured in noncollision transport accident: Person on outside of vehicle injured in nontraffic accident
10481	V683 Occupant of heavy transport vehicle injured in noncollision transport accident: Unspecified occupant of heavy transport vehicle injured in nontraffic accident
10482	V684 Occupant of heavy transport vehicle injured in noncollision transport accident: Person injured while boarding or alighting
10483	V685 Occupant of heavy transport vehicle injured in noncollision transport accident: Driver injured in traffic accident
10484	V686 Occupant of heavy transport vehicle injured in noncollision transport accident: Passenger injured in traffic accident
10485	V687 Occupant of heavy transport vehicle injured in noncollision transport accident: Person on outside of vehicle injured in traffic accident
10486	V689 Occupant of heavy transport vehicle injured in noncollision transport accident: Unspecified occupant of heavy transport vehicle injured in traffic accident
10487	V69 Occupant of heavy transport vehicle injured in other and unspecified transport accidents
10488	V690 Driver injured in collision with other and unspecified motor vehicles in nontraffic accident
10489	V691 Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident
10490	V692 Unspecified occupant of heavy transport vehicle injured in collision with other and unspecified motor vehicles in nontraffic accident
10491	V693 Occupant [any] of heavy transport vehicle injured in unspecified nontraffic accident
10492	V694 Driver injured in collision with other and unspecified motor vehicles in traffic accident
10493	V695 Passenger injured in collision with other and unspecified motor vehicles in traffic accident
10494	V696 Unspecified occupant of heavy transport vehicle injured in collision with other and unspecified motor vehicles in traffic accident
10495	V698 Occupant [any] of heavy transport vehicle injured in other specified transport accidents
10496	V699 Occupant [any] of heavy transport vehicle injured in unspecified traffic accident
10497	V70 Bus occupant injured in collision with pedestrian or animal
10498	V700 Bus occupant injured in collision with pedestrian or animal: Driver injured in nontraffic accident
10499	V701 Bus occupant injured in collision with pedestrian or animal: Passenger injured in nontraffic accident
10500	V702 Bus occupant injured in collision with pedestrian or animal: Person on outside of vehicle injured in nontraffic accident
10501	V703 Bus occupant injured in collision with pedestrian or animal: Unspecified bus occupant injured in nontraffic accident
10502	V704 Bus occupant injured in collision with pedestrian or animal: Person injured while boarding or alighting
10503	V705 Bus occupant injured in collision with pedestrian or animal: Driver injured in traffic accident
10504	V706 Bus occupant injured in collision with pedestrian or animal: Passenger injured in traffic accident
10505	V707 Bus occupant injured in collision with pedestrian or animal: Person on outside of vehicle injured in traffic accident
10506	V709 Bus occupant injured in collision with pedestrian or animal: Unspecified bus occupant injured in traffic accident
10507	V71 Bus occupant injured in collision with pedal cycle
10508	V710 Bus occupant injured in collision with pedal cycle: Driver injured in nontraffic accident
10509	V711 Bus occupant injured in collision with pedal cycle: Passenger injured in nontraffic accident
10510	V712 Bus occupant injured in collision with pedal cycle: Person on outside of vehicle injured in nontraffic accident
10511	V713 Bus occupant injured in collision with pedal cycle: Unspecified bus occupant injured in nontraffic accident
10512	V714 Bus occupant injured in collision with pedal cycle: Person injured while boarding or alighting
10513	V715 Bus occupant injured in collision with pedal cycle: Driver injured in traffic accident
10514	V716 Bus occupant injured in collision with pedal cycle: Passenger injured in traffic accident
10515	V717 Bus occupant injured in collision with pedal cycle: Person on outside of vehicle injured in traffic accident
10516	V719 Bus occupant injured in collision with pedal cycle: Unspecified bus occupant injured in traffic accident
10517	V72 Bus occupant injured in collision with two- or three-wheeled motor vehicle
10518	V720 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Driver injured in nontraffic accident
10519	V721 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Passenger injured in nontraffic accident
10520	V722 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in nontraffic accident
10521	V723 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Unspecified bus occupant injured in nontraffic accident
10522	V724 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Person injured while boarding or alighting
10523	V727 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Person on outside of vehicle injured in traffic accident
10524	V729 Bus occupant injured in collision with two- or three-wheeled motor vehicle: Unspecified bus occupant injured in traffic accident
10525	V73 Bus occupant injured in collision with car, pick-up truck or van
10526	V730 Bus occupant injured in collision with car, pick-up truck or van: Driver injured in nontraffic accident
10527	V731 Bus occupant injured in collision with car, pick-up truck or van: Passenger injured in nontraffic accident
10528	V732 Bus occupant injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in nontraffic accident
10529	V733 Bus occupant injured in collision with car, pick-up truck or van: Unspecified bus occupant injured in nontraffic accident
10530	V734 Bus occupant injured in collision with car, pick-up truck or van: Person injured while boarding or alighting
10531	V735 Bus occupant injured in collision with car, pick-up truck or van: Driver injured in traffic accident
10532	V736 Bus occupant injured in collision with car, pick-up truck or van: Passenger injured in traffic accident
10533	V737 Bus occupant injured in collision with car, pick-up truck or van: Person on outside of vehicle injured in traffic accident
10534	V739 Bus occupant injured in collision with car, pick-up truck or van: Unspecified bus occupant injured in traffic accident
10535	V74 Bus occupant injured in collision with heavy transport vehicle or bus
10536	V740 Bus occupant injured in collision with heavy transport vehicle or bus: Driver injured in nontraffic accident
10537	V741 Bus occupant injured in collision with heavy transport vehicle or bus: Passenger injured in nontraffic accident
10538	V742 Bus occupant injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in nontraffic accident
10539	V743 Bus occupant injured in collision with heavy transport vehicle or bus: Unspecified bus occupant injured in nontraffic accident
10540	V744 Bus occupant injured in collision with heavy transport vehicle or bus: Person injured while boarding or alighting
10541	V745 Bus occupant injured in collision with heavy transport vehicle or bus: Driver injured in traffic accident
10542	V746 Bus occupant injured in collision with heavy transport vehicle or bus: Passenger injured in traffic accident
10543	V747 Bus occupant injured in collision with heavy transport vehicle or bus: Person on outside of vehicle injured in traffic accident
10544	V749 Bus occupant injured in collision with heavy transport vehicle or bus: Unspecified bus occupant injured in traffic accident
10545	V75 Bus occupant injured in collision with railway train or railway vehicle
10546	V750 Bus occupant injured in collision with railway train or railway vehicle: Driver injured in nontraffic accident
10547	V751 Bus occupant injured in collision with railway train or railway vehicle: Passenger injured in nontraffic accident
10548	V752 Bus occupant injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in nontraffic accident
10549	V753 Bus occupant injured in collision with railway train or railway vehicle: Unspecified bus occupant injured in nontraffic accident
10550	V754 Bus occupant injured in collision with railway train or railway vehicle: Person injured while boarding or alighting
10551	V755 Bus occupant injured in collision with railway train or railway vehicle: Driver injured in traffic accident
10552	V756 Bus occupant injured in collision with railway train or railway vehicle: Passenger injured in traffic accident
10553	V757 Bus occupant injured in collision with railway train or railway vehicle: Person on outside of vehicle injured in traffic accident
10554	V759 Bus occupant injured in collision with railway train or railway vehicle: Unspecified bus occupant injured in traffic accident
10555	V76 Bus occupant injured in collision with other nonmotor vehicle
10556	V760 Bus occupant injured in collision with other nonmotor vehicle: Driver injured in nontraffic accident
10557	V761 Bus occupant injured in collision with other nonmotor vehicle: Passenger injured in nontraffic accident
10558	V762 Bus occupant injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in nontraffic accident
10559	V763 Bus occupant injured in collision with other nonmotor vehicle: Unspecified bus occupant injured in nontraffic accident
10560	V764 Bus occupant injured in collision with other nonmotor vehicle: Person injured while boarding or alighting
10561	V765 Bus occupant injured in collision with other nonmotor vehicle: Driver injured in traffic accident
10562	V766 Bus occupant injured in collision with other nonmotor vehicle: Passenger injured in traffic accident
10563	V767 Bus occupant injured in collision with other nonmotor vehicle: Person on outside of vehicle injured in traffic accident
10564	V769 Bus occupant injured in collision with other nonmotor vehicle: Unspecified bus occupant injured in traffic accident
10565	V77 Bus occupant injured in collision with fixed or stationary object
10566	V770 Bus occupant injured in collision with fixed or stationary object: Driver injured in nontraffic accident
10567	V771 Bus occupant injured in collision with fixed or stationary object: Passenger injured in nontraffic accident
10568	V772 Bus occupant injured in collision with fixed or stationary object: Person on outside of vehicle injured in nontraffic accident
10569	V773 Bus occupant injured in collision with fixed or stationary object: Unspecified bus occupant injured in nontraffic accident
10570	V774 Bus occupant injured in collision with fixed or stationary object: Person injured while boarding or alighting
10571	V775 Bus occupant injured in collision with fixed or stationary object: Driver injured in traffic accident
10572	V776 Bus occupant injured in collision with fixed or stationary object: Passenger injured in traffic accident
10573	V777 Bus occupant injured in collision with fixed or stationary object: Person on outside of vehicle injured in traffic accident
10574	V779 Bus occupant injured in collision with fixed or stationary object: Unspecified bus occupant injured in traffic accident
10575	V78 Bus occupant injured in noncollision transport accident
10576	V780 Bus occupant injured in noncollision transport accident: Driver injured in nontraffic accident
10577	V781 Bus occupant injured in noncollision transport accident: Passenger injured in nontraffic accident
10578	V782 Bus occupant injured in noncollision transport accident: Person on outside of vehicle injured in nontraffic accident
10579	V783 Bus occupant injured in noncollision transport accident: Unspecified bus occupant injured in nontraffic accident
10580	V784 Bus occupant injured in noncollision transport accident: Person injured while boarding or alighting
10581	V785 Bus occupant injured in noncollision transport accident: Driver injured in traffic accident
10582	V786 Bus occupant injured in noncollision transport accident: Passenger injured in traffic accident
10583	V787 Bus occupant injured in noncollision transport accident: Person on outside of vehicle injured in traffic accident
10584	V789 Bus occupant injured in noncollision transport accident: Unspecified bus occupant injured in traffic accident
10585	V79 Bus occupant injured in other and unspecified transport accidents
10586	V790 Driver injured in collision with other and unspecified motor vehicles in nontraffic accident
10587	V791 Passenger injured in collision with other and unspecified motor vehicles in nontraffic accident
10588	V792 Unspecified bus occupant injured in collision with other and unspecified motor vehicles in nontraffic accident
10589	V793 Bus occupant [any] injured in unspecified nontraffic accident
10590	V794 Driver injured in collision with other and unspecified motor vehicles in traffic accident
10591	V795 Passenger injured in collision with other and unspecified motor vehicles in traffic accident
10592	V796 Unspecified bus occupant injured in collision with other and unspecified motor vehicles in traffic accident
10593	V798 Bus occupant [any] injured in other specified transport accidents
10594	V799 Bus occupant [any] injured in unspecified traffic accident
10595	V80 Animal-rider or occupant of animal-drawn vehicle injured in transport accident
10596	V800 Rider or occupant injured by fall from or being thrown from animal or animal-drawn vehicle in noncollision accident
10597	V801 Rider or occupant injured in collision with pedestrian or animal
10598	V802 Rider or occupant injured in collision with pedal cycle
10599	V803 Rider or occupant injured in collision with two- or three-wheeled motor vehicle
10600	V804 Rider or occupant injured in collision with car, pick-up truck, van, heavy transport vehicle or bus
10601	V805 Rider or occupant injured in collision with other specified motor vehicle
10602	V806 Rider or occupant injured in collision with railway train or railway vehicle
10603	V807 Rider or occupant injured in collision with other nonmotor vehicle
10604	V808 Rider or occupant injured in collision with fixed or stationary object
10605	V809 Rider or occupant injured in other and unspecified transport accidents
10606	V81 Occupant of railway train or railway vehicle injured in transport accident
10607	V810 Occupant of railway train or railway vehicle injured in collision with motor vehicle in nontraffic accident
10608	V811 Occupant of railway train or railway vehicle injured in collision with motor vehicle in traffic accident
10609	V812 Occupant of railway train or railway vehicle injured in collision with or hit by rolling stock
10610	V813 Occupant of railway train or railway vehicle injured in collision with other object
10611	V814 Person injured while boarding or alighting from railway train or railway vehicle
10612	V815 Occupant of railway train or railway vehicle injured by fall in railway train or railway vehicle
10613	V816 Occupant of railway train or railway vehicle injured by fall from railway train or railway vehicle
10614	V817 Occupant of railway train or railway vehicle injured in derailment without antecedent collision
10615	V818 Occupant of railway train or railway vehicle injured in other specified railway accidents
10616	V819 Occupant of railway train or railway vehicle injured in unspecified railway accident
10617	V82 Occupant of streetcar injured in transport accident
10618	Y415 Antiviral drugs
10619	V821 Occupant of streetcar injured in collision with motor vehicle in traffic accident
10620	V822 Occupant of streetcar injured in collision with or hit by rolling stock
10621	V823 Occupant of streetcar injured in collision with other object
10622	V824 Person injured while boarding or alighting from streetcar
10623	V825 Occupant of streetcar injured by fall in streetcar
10624	V826 Occupant of streetcar injured by fall from streetcar
10625	V827 Occupant of streetcar injured in derailment without antecedent collision
10626	V828 Occupant of streetcar injured in other specified transport accidents
10627	V829 Occupant of streetcar injured in unspecified traffic accident
10628	V83 Occupant of special vehicle mainly used on industrial premises injured in transport accident
10629	V830 Driver of special industrial vehicle injured in traffic accident
10630	V831 Passenger of special industrial vehicle injured in traffic accident
10631	V832 Person on outside of special industrial vehicle injured in traffic accident
10632	V833 Unspecified occupant of special industrial vehicle injured in traffic accident
10633	V834 Person injured while boarding or alighting from special industrial vehicle
10634	V835 Driver of special industrial vehicle injured in nontraffic accident
10635	V836 Passenger of special industrial vehicle injured in nontraffic accident
10636	V837 Person on outside of special industrial vehicle injured in nontraffic accident
10637	V839 Unspecified occupant of special industrial vehicle injured in nontraffic accident
10638	V84 Occupant of special vehicle mainly used in agriculture injured in transport accident
10639	V840 Driver of special agricultural vehicle injured in traffic accident
10640	V841 Passenger of special agricultural vehicle injured in traffic accident
10641	V842 Person on outside of special agricultural vehicle injured in traffic accident
10642	V843 Unspecified occupant of special agricultural vehicle injured in traffic accident
10643	V844 Person injured while boarding or alighting from special agricultural vehicle
10644	V846 Passenger of special agricultural vehicle injured in nontraffic accident
10645	V847 Person on outside of special agricultural vehicle injured in nontraffic accident
10646	V849 Unspecified occupant of special agricultural vehicle injured in nontraffic accident
10647	V85 Occupant of special construction vehicle injured in transport accident
10648	V850 Driver of special construction vehicle injured in traffic accident
10649	V851 Passenger of special construction vehicle injured in traffic accident
10650	V852 Person on outside of special construction vehicle injured in traffic accident
10651	V853 Unspecified occupant of special construction vehicle injured in traffic accident
10652	V854 Person injured while boarding or alighting from special construction vehicle
10653	V855 Driver of special construction vehicle injured in nontraffic accident
10654	V856 Passenger of special construction vehicle injured in nontraffic accident
10655	V857 Person on outside of special construction vehicle injured in nontraffic accident
10656	V859 Unspecified occupant of special construction vehicle injured in nontraffic accident
10657	V86 Occupant of special all-terrain or other motor vehicle designed primarily for off-road use, injured in transport accident
10658	V860 Driver of all-terrain or other off-road motor vehicle injured in traffic accident
10659	V861 Passenger of all-terrain or other off-road motor vehicle injured in traffic accident
10660	V862 Person on outside of all-terrain or other off-road motor vehicle injured in traffic accident
10661	V863 Unspecified occupant of all-terrain or other off-road motor vehicle injured in traffic accident
10662	V864 Person injured while boarding or alighting from all-terrain or other off-road motor vehicle
10663	V865 Driver of all-terrain or other off-road motor vehicle injured in nontraffic accident
10664	V866 Passenger of all-terrain or other off-road motor vehicle injured in nontraffic accident
10665	V867 Person on outside of all-terrain or other off-road motor vehicle injured in nontraffic accident
10666	V869 Unspecified occupant of all-terrain or other off-road motor vehicle injured in nontraffic accident
10667	V87 Traffic accident of specified type but victim's mode of transport unknown
10668	V870 Person injured in collision between car and two- or three-wheeled motor vehicle (traffic)
10669	V871 Person injured in collision between other motor vehicle and two- or three-wheeled motor vehicle (traffic)
10670	V872 Person injured in collision between car and pick-up truck or van (traffic)
10671	V873 Person injured in collision between car and bus (traffic)
10672	V874 Person injured in collision between car and heavy transport vehicle (traffic)
10673	V875 Person injured in collision between heavy transport vehicle and bus (traffic)
10674	V876 Person injured in collision between railway train or railway vehicle and car (traffic)
10675	V877 Person injured in collision between other specified motor vehicles (traffic)
10676	V878 Person injured in other specified noncollision transport accidents involving motor vehicle (traffic)
10677	V879 Person injured in other specified (collision)(noncollision) transport accidents involving nonmotor vehicle (traffic)
10678	V88 Nontraffic accident of specified type but victim's mode of transport unknown
10679	V880 Person injured in collision between car and two- or three-wheeled motor vehicle, nontraffic
10680	V881 Person injured in collision between other motor vehicle and two- or three-wheeled motor vehicle, nontraffic
10681	V882 Person injured in collision between car and pick-up truck or van, nontraffic
10682	V883 Person injured in collision between car and bus, nontraffic
10683	V884 Person injured in collision between car and heavy transport vehicle, nontraffic
10684	V885 Person injured in collision between heavy transport vehicle and bus, nontraffic
10685	V886 Person injured in collision between railway train or railway vehicle and car, nontraffic
10686	V887 Person injured in collision between other specified motor vehicles, nontraffic
10687	V888 Person injured in other specified noncollision transport accidents involving motor vehicle, nontraffic
10688	V889 Person injured in other specified (collision)(noncollision) transport accidents involving nonmotor vehicle, nontraffic
10689	V89 Motor- or nonmotor-vehicle accident, type of vehicle unspecified
10690	V890 Person injured in unspecified motor-vehicle accident, nontraffic
10691	V891 Person injured in unspecified nonmotor-vehicle accident, nontraffic
10692	V892 Person injured in unspecified motor-vehicle accident, traffic
10693	V893 Person injured in unspecified nonmotor-vehicle accident, traffic
10694	V899 Person injured in unspecified vehicle accident
10695	V90 Accident to watercraft causing drowning and submersion
10696	V900 Accident to watercraft causing drowning and submersion: Merchant ship
10697	V901 Accident to watercraft causing drowning and submersion: Passenger ship
10698	V902 Accident to watercraft causing drowning and submersion: Fishing boat
10699	V903 Accident to watercraft causing drowning and submersion: Other powered watercraft
10700	V904 Accident to watercraft causing drowning and submersion: Sailboat
10701	V905 Accident to watercraft causing drowning and submersion: Canoe or kayak
10702	V906 Accident to watercraft causing drowning and submersion: Inflatable craft (nonpowered)
10703	V907 Accident to watercraft causing drowning and submersion: Water-skis
10704	V908 Accident to watercraft causing drowning and submersion: Other unpowered watercraft
10705	V909 Accident to watercraft causing drowning and submersion: Unspecified watercraft
10706	V91 Accident to watercraft causing other injury
10707	V910 Accident to watercraft causing other injury: Merchant ship
10708	V911 Accident to watercraft causing other injury: Passenger ship
10709	V912 Accident to watercraft causing other injury: Fishing boat
10710	V913 Accident to watercraft causing other injury: Other powered watercraft
10711	V914 Accident to watercraft causing other injury: Sailboat
10712	W19 Unspecified fall
10713	V916 Accident to watercraft causing other injury: Inflatable craft (nonpowered)
10714	V917 Accident to watercraft causing other injury: Water-skis
10715	V918 Accident to watercraft causing other injury: Other unpowered watercraft
10716	V919 Accident to watercraft causing other injury: Unspecified watercraft
10717	V92 Water-transport-related drowning and submersion without accident to watercraft
10718	V920 Water-transport-related drowning and submersion without accident to watercraft: Merchant ship
10719	V921 Water-transport-related drowning and submersion without accident to watercraft: Passenger ship
10720	V922 Water-transport-related drowning and submersion without accident to watercraft: Fishing boat
10721	V923 Water-transport-related drowning and submersion without accident to watercraft: Other powered watercraft
10722	V924 Water-transport-related drowning and submersion without accident to watercraft: Sailboat
10723	V925 Water-transport-related drowning and submersion without accident to watercraft: Canoe or kayak
10724	V926 Water-transport-related drowning and submersion without accident to watercraft: Inflatable craft (nonpowered)
10725	V927 Water-transport-related drowning and submersion without accident to watercraft: Water-skis
10726	V928 Water-transport-related drowning and submersion without accident to watercraft: Other unpowered watercraft
10727	V929 Water-transport-related drowning and submersion without accident to watercraft: Unspecified watercraft
10728	V93 Accident on board watercraft without accident to watercraft, not causing drowning and submersion
10729	V930 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Merchant ship
10730	V931 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Passenger ship
10731	V932 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Fishing boat
10732	V933 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Other powered watercraft
10733	V934 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Sailboat
10734	V935 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Canoe or kayak
10735	V936 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Inflatable craft (nonpowered)
10736	V937 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Water-skis
10737	V938 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Other unpowered watercraft
10738	V939 Accident on board watercraft without accident to watercraft, not causing drowning and submersion: Unspecified watercraft
10739	V94 Other and unspecified water transport accidents
10740	V940 Other and unspecified water transport accidents: Merchant ship
10741	V941 Other and unspecified water transport accidents: Passenger ship
10742	V942 Other and unspecified water transport accidents: Fishing boat
10743	V943 Other and unspecified water transport accidents: Other powered watercraft
10744	V944 Other and unspecified water transport accidents: Sailboat
10745	V945 Other and unspecified water transport accidents: Canoe or kayak
10746	V946 Other and unspecified water transport accidents: Inflatable craft (nonpowered)
10747	V947 Other and unspecified water transport accidents: Water-skis
10748	V948 Other and unspecified water transport accidents: Other unpowered watercraft
10749	V949 Other and unspecified water transport accidents: Unspecified watercraft
10750	V95 Accident to powered aircraft causing injury to occupant
10751	V950 Helicopter accident injuring occupant
10752	V951 Ultralight, microlight or powered-glider accident injuring occupant
10753	V952 Accident to other private fixed-wing aircraft, injuring occupant
10754	V953 Accident to commercial fixed-wing aircraft, injuring occupant
10755	V954 Spacecraft accident injuring occupant
10756	V958 Other aircraft accidents injuring occupant
10757	V96 Accident to nonpowered aircraft causing injury to occupant
10758	V960 Balloon accident injuring occupant
10759	V961 Hang-glider accident injuring occupant
10760	V962 Glider (nonpowered) accident injuring occupant
10761	V968 Other nonpowered-aircraft accidents injuring occupant
10762	V969 Unspecified nonpowered-aircraft accident injuring occupant
10763	V97 Other specified air transport accidents
10764	V970 Occupant of aircraft injured in other specified air transport accidents
10765	V971 Person injured while boarding or alighting from aircraft
10766	V972 Parachutist injured in air transport accident
10767	V973 Person on ground injured in air transport accident
10768	V978 Other air transport accidents, not elsewhere classified
10769	V98 Other specified transport accidents
10770	V99 Unspecified transport accident
10771	W00 Fall on same level involving ice and snow
10772	W01 Fall on same level from slipping, tripping and stumbling
10773	W02 Fall involving ice-skates, skis, roller-skates or skateboards
10774	W03 Other fall on same level due to collision with, or pushing by, another person
10775	W04 Fall while being carried or supported by other persons
10776	W05 Fall involving wheelchair
10777	W06 Fall involving bed
10778	W07 Fall involving chair
10779	W08 Fall involving other furniture
10780	W09 Fall involving playground equipment
10781	W10 Fall on and from stairs and steps
10782	W11 Fall on and from ladder
10783	W12 Fall on and from scaffolding
10784	W13 Fall from, out of or through building or structure
10785	W14 Fall from tree
10786	W15 Fall from cliff
10787	W16 Diving or jumping into water causing injury other than drowning or submersion
10788	W17 Other fall from one level to another
10793	W24 Contact with lifting and transmission devices, not elsewhere classified
10794	W25 Contact with sharp glass
10795	W26 Contact with knife, sword or dagger
10796	W27 Contact with nonpowered hand tool
10797	W28 Contact with powered lawnmower
10798	W29 Contact with other powered hand tools and household machinery
10799	W30 Contact with agricultural machinery
10800	W31 Contact with other and unspecified machinery
10801	W32 Handgun discharge
10802	W33 Rifle, shotgun and larger firearm discharge
10803	W34 Discharge from other and unspecified firearms
10804	W35 Explosion and rupture of boiler
10805	W36 Explosion and rupture of gas cylinder
10806	W37 Explosion and rupture of pressurized tyre, pipe or hose
10807	W38 Explosion and rupture of other specified pressurized devices
10808	W39 Discharge of firework
10809	W40 Explosion of other materials
10810	W41 Exposure to high-pressure jet
10811	W42 Exposure to noise
10812	W43 Exposure to vibration
10813	W44 Foreign body entering into or through eye or natural orifice
10814	W45 Foreign body or object entering through skin
10815	W46 Contact with hypodermic needle
10816	W49 Exposure to other and unspecified inanimate mechanical forces
10817	W50 Hit, struck, kicked, twisted, bitten or scratched by another person
10818	W51 Striking against or bumped into by another person
10819	W52 Crushed, pushed or stepped on by crowd or human stampede
10820	W53 Bitten by rat
10821	W54 Bitten or struck by dog
10822	W55 Bitten or struck by other mammals
10823	W56 Contact with marine animal
10824	W57 Bitten or stung by nonvenomous insect and other nonvenomous arthropods
10825	W58 Bitten or struck by crocodile or alligator
10826	W59 Bitten or crushed by other reptiles
10827	W60 Contact with plant thorns and spines and sharp leaves
10828	W64 Exposure to other and unspecified animate mechanical forces
10829	W65 Drowning and submersion while in bath-tub
10830	W66 Drowning and submersion following fall into bath-tub
10831	W67 Drowning and submersion while in swimming-pool
10832	W68 Drowning and submersion following fall into swimming-pool
10833	W69 Drowning and submersion while in natural water
10834	W70 Drowning and submersion following fall into natural water
10835	W73 Other specified drowning and submersion
10836	W74 Unspecified drowning and submersion
10837	W75 Accidental suffocation and strangulation in bed
10838	W76 Other accidental hanging and strangulation
10839	W77 Threat to breathing due to cave-in, falling earth and other substances
10840	W78 Inhalation of gastric contents
10841	W79 Inhalation and ingestion of food causing obstruction of respiratory tract
10842	W80 Inhalation and ingestion of other objects causing obstruction of respiratory tract
10843	W81 Confined to or trapped in a low-oxygen environment
10844	W83 Other specified threats to breathing
10845	W84 Unspecified threat to breathing
10846	W85 Exposure to electric transmission lines
10847	W86 Exposure to other specified electric current
10848	W87 Exposure to unspecified electric current
10849	W88 Exposure to ionizing radiation
10850	W89 Exposure to man-made visible and ultraviolet light
10851	W90 Exposure to other nonionizing radiation
10852	W91 Exposure to unspecified type of radiation
10853	W92 Exposure to excessive heat of man-made origin
10854	W93 Exposure to excessive cold of man-made origin
10855	W94 Exposure to high and low air pressure and changes in air pressure
10856	W99 Exposure to other and unspecified man-made environmental factors
10857	X00 Exposure to uncontrolled fire in building or structure
10858	X01 Exposure to uncontrolled fire, not in building or structure
10859	X02 Exposure to controlled fire in building or structure
10860	X03 Exposure to controlled fire, not in building or structure
10861	X04 Exposure to ignition of highly flammable material
10862	X05 Exposure to ignition or melting of nightwear
10863	X06 Exposure to ignition or melting of other clothing and apparel
10864	X08 Exposure to other specified smoke, fire and flames
10865	X09 Exposure to unspecified smoke, fire and flames
10866	X10 Contact with hot drinks, food, fats and cooking oils
10867	X11 Contact with hot tap-water
10868	X12 Contact with other hot fluids
10869	X13 Contact with steam and hot vapours
10870	X14 Contact with hot air and gases
10871	X15 Contact with hot household appliances
10872	X16 Contact with hot heating appliances, radiators and pipes
10873	X17 Contact with hot engines, machinery and tools
10874	X18 Contact with other hot metals
10875	X19 Contact with other and unspecified heat and hot substances
10876	X20 Contact with venomous snakes and lizards
10877	X21 Contact with venomous spiders
10878	X22 Contact with scorpions
10879	X23 Contact with hornets, wasps and bees
10880	X24 Contact with centipedes and venomous millipedes (tropical)
10881	X25 Contact with other venomous arthropods
10882	X26 Contact with venomous marine animals and plants
10883	X27 Contact with other specified venomous animals
10884	X28 Contact with other specified venomous plants
10885	X29 Contact with unspecified venomous animal or plant
10886	X30 Exposure to excessive natural heat
10887	X31 Exposure to excessive natural cold
10888	X32 Exposure to sunlight
10889	X33 Victim of lightning
10890	X34 Victim of earthquake
10891	X340 Victim of cataclysmic earth movements caused by earthquake
10892	X341 Victim of tsunami
10893	X348 Victim of other specified effects of earthquake
10894	X349 Victim of unspecified effect of earthquake
10895	X35 Victim of volcanic eruption
10896	X36 Victim of avalanche, landslide and other earth movements
10897	X37 Victim of cataclysmic storm
10898	X38 Victim of flood
10899	X39 Exposure to other and unspecified forces of nature
10900	X40 Accidental poisoning by and exposure to nonopioid analgesics, antipyretics and antirheumatics
10901	X41 Accidental poisoning by and exposure to antiepileptic, sedative-hypnotic, antiparkinsonism and psychotropic drugs, not elsewhere classified
10902	X42 Accidental poisoning by and exposure to narcotics and psychodysleptics [hallucinogens], not elsewhere classified
10903	X43 Accidental poisoning by and exposure to other drugs acting on the autonomic nervous system
10904	X44 Accidental poisoning by and exposure to other and unspecified drugs, medicaments and biological substances
10905	X45 Accidental poisoning by and exposure to alcohol
10906	X46 Accidental poisoning by and exposure to organic solvents and halogenated hydrocarbons and their vapours
10907	X47 Accidental poisoning by and exposure to other gases and vapours
10908	X48 Accidental poisoning by and exposure to pesticides
10909	X49 Accidental poisoning by and exposure to other and unspecified chemicals and noxious substances
10910	X50 Overexertion and strenuous or repetitive movements
10911	X51 Travel and motion
10912	X52 Prolonged stay in weightless environment
10913	X53 Lack of food
10914	X54 Lack of water
10915	X57 Unspecified privation
10916	X58 Exposure to other specified factors
10917	X59 Exposure to unspecified factor
10918	X590 Exposure to unspecified factor causing fracture
10919	X599 Exposure to unspecified factor causing other and unspecified injury
10920	X60 Intentional self-poisoning by and exposure to nonopioid analgesics, antipyretics and antirheumatics
10921	X61 Intentional self-poisoning by and exposure to antiepileptic, sedative-hypnotic, antiparkinsonism and psychotropic drugs, not elsewhere classified
10922	X62 Intentional self-poisoning by and exposure to narcotics and psychodysleptics [hallucinogens], not elsewhere classified
10923	X63 Intentional self-poisoning by and exposure to other drugs acting on the autonomic nervous system
10924	X64 Intentional self-poisoning by and exposure to other and unspecified drugs, medicaments and biological substances
10925	X65 Intentional self-poisoning by and exposure to alcohol
10926	X66 Intentional self-poisoning by and exposure to organic solvents and halogenated hydrocarbons and their vapours
10927	X67 Intentional self-poisoning by and exposure to other gases and vapours
10928	X68 Intentional self-poisoning by and exposure to pesticides
10929	X69 Intentional self-poisoning by and exposure to other and unspecified chemicals and noxious substances
10930	X70 Intentional self-harm by hanging, strangulation and suffocation
10931	X71 Intentional self-harm by drowning and submersion
10932	X72 Intentional self-harm by handgun discharge
10933	X73 Intentional self-harm by rifle, shotgun and larger firearm discharge
10934	X74 Intentional self-harm by other and unspecified firearm discharge
10935	X75 Intentional self-harm by explosive material
10936	X76 Intentional self-harm by smoke, fire and flames
10937	X77 Intentional self-harm by steam, hot vapours and hot objects
10938	X78 Intentional self-harm by sharp object
10939	X79 Intentional self-harm by blunt object
10940	X80 Intentional self-harm by jumping from a high place
10941	X81 Intentional self-harm by jumping or lying before moving object
10942	X82 Intentional self-harm by crashing of motor vehicle
10943	X83 Intentional self-harm by other specified means
10944	X84 Intentional self-harm by unspecified means
10945	X85 Assault by drugs, medicaments and biological substances
10946	X86 Assault by corrosive substance
10947	X87 Assault by pesticides
10948	X88 Assault by gases and vapours
10949	X89 Assault by other specified chemicals and noxious substances
10950	X90 Assault by unspecified chemical or noxious substance
10951	X91 Assault by hanging, strangulation and suffocation
10952	X92 Assault by drowning and submersion
10953	X93 Assault by handgun discharge
10954	X94 Assault by rifle, shotgun and larger firearm discharge
10955	X95 Assault by other and unspecified firearm discharge
10956	X96 Assault by explosive material
10957	X97 Assault by smoke, fire and flames
10958	X98 Assault by steam, hot vapours and hot objects
10959	X99 Assault by sharp object
10960	Y00 Assault by blunt object
10961	Y01 Assault by pushing from high place
10962	Y02 Assault by pushing or placing victim before moving object
10963	Y03 Assault by crashing of motor vehicle
10964	Y04 Assault by bodily force
10965	Y05 Sexual assault by bodily force
10966	Y06 Neglect and abandonment
10967	Y060 By spouse or partner
10968	Y061 By parent
10969	Y062 By acquaintance or friend
10970	Y068 By other specified persons
10971	Y069 By unspecified person
10972	Y07 Other maltreatment
10973	Y070 By spouse or partner
10974	Y071 By parent
10975	Y072 By acquaintance or friend
10976	Y073 By official authorities
10977	Y08 Assault by other specified means
10978	Y09 Assault by unspecified means
10979	Y10 Poisoning by and exposure to nonopioid analgesics, antipyretics and antirheumatics, undetermined intent
11673	Z431 Attention to gastrostomy
10980	Y11 Poisoning by and exposure to antiepileptic, sedative-hypnotic, antiparkinsonism and psychotropic drugs, not elsewhere classified, undetermined intent
10981	Y12 Poisoning by and exposure to narcotics and psychodysleptics [hallucinogens], not elsewhere classified, undetermined intent
10982	Y13 Poisoning by and exposure to other drugs acting on the autonomic nervous system, undetermined intent
10983	Y14 Poisoning by and exposure to other and unspecified drugs, medicaments and biological substances, undetermined intent
10984	Y15 Poisoning by and exposure to alcohol, undetermined intent
10985	Y16 Poisoning by and exposure to organic solvents and halogenated hydrocarbons and their vapours, undetermined intent
10986	Y17 Poisoning by and exposure to other gases and vapours, undetermined intent
10987	Y18 Poisoning by and exposure to pesticides, undetermined intent
10988	Y19 Poisoning by and exposure to other and unspecified chemicals and noxious substances, undetermined intent
10989	Y20 Hanging, strangulation and suffocation, undetermined intent
10990	Y21 Drowning and submersion, undetermined intent
10991	Y22 Handgun discharge, undetermined intent
10992	Y23 Rifle, shotgun and larger firearm discharge, undetermined intent
10993	Y24 Other and unspecified firearm discharge, undetermined intent
10994	Y25 Contact with explosive material, undetermined intent
10995	Y26 Exposure to smoke, fire and flames, undetermined intent
10996	Y27 Contact with steam, hot vapours and hot objects, undetermined intent
10997	Y28 Contact with sharp object, undetermined intent
10998	Y29 Contact with blunt object, undetermined intent
10999	Y30 Falling, jumping or pushed from a high place, undetermined intent
11000	Y31 Falling, lying or running before or into moving object, undetermined intent
11001	Y32 Crashing of motor vehicle, undetermined intent
11002	Y33 Other specified events, undetermined intent
11003	Y34 Unspecified event, undetermined intent
11004	Y35 Legal intervention
11005	Y350 Legal intervention involving firearm discharge
11006	Y351 Legal intervention involving explosives
11007	Y352 Legal intervention involving gas
11008	Y353 Legal intervention involving blunt objects
11009	Y354 Legal intervention involving sharp objects
11010	Y355 Legal execution
11011	Y356 Legal intervention involving other specified means
11012	Y357 Legal intervention, means unspecified
11013	Y36 Operations of war
11014	Y360 War operations involving explosion of marine weapons
11015	Y361 War operations involving destruction of aircraft
11016	Y362 War operations involving other explosions and fragments
11017	Y363 War operations involving fires, conflagrations and hot substances
11018	Y364 War operations involving firearm discharge and other forms of conventional warfare
11019	Y365 War operations involving nuclear weapons
11020	Y366 War operations involving biological weapons
11021	Y367 War operations involving chemical weapons and other forms of unconventional warfare
11022	Y368 War operations occurring after cessation of hostilities
11023	Y369 War operations, unspecified
11024	Y40 Systemic antibiotics
11025	Y400 Penicillins
11026	Y401 Cefalosporins and other beta-lactam antibiotics
11027	Y402 Chloramphenicol group
11028	Y403 Macrolides
11029	Y404 Tetracyclines
11030	Y405 Aminoglycosides
11031	Y406 Rifamycins
11032	Y407 Antifungal antibiotics, systemically used
11033	Y408 Other systemic antibiotics
11034	Y409 Systemic antibiotic, unspecified
11035	Y41 Other systemic anti-infectives and antiparasitics
11036	Y410 Sulfonamides
11037	Y411 Antimycobacterial drugs
11038	Y412 Antimalarials and drugs acting on other blood protozoa
11039	Y413 Other antiprotozoal drugs
11040	Y418 Other specified systemic anti-infectives and antiparasitics
11041	Y419 Systemic anti-infective and antiparasitic, unspecified
11042	Y42 Hormones and their synthetic substitutes and antagonists, not elsewhere classified
11043	Y420 Glucocorticoids and synthetic analogues
11044	Y421 Thyroid hormones and substitutes
11045	Y422 Antithyroid drugs
11046	Y423 Insulin and oral hypoglycaemic [antidiabetic] drugs
11047	Y424 Oral contraceptives
11048	Y425 Other estrogens and progestogens
11049	Y426 Antigonadotrophins, antiestrogens, antiandrogens, not elsewhere classified
11050	Y427 Androgens and anabolic congeners
11051	Y428 Other and unspecified hormones and their synthetic substitutes
11052	Y429 Other and unspecified hormone antagonists
11053	Y43 Primarily systemic agents
11054	Y430 Antiallergic and antiemetic drugs
11055	Y431 Antineoplastic antimetabolites
11056	Y432 Antineoplastic natural products
11057	Y433 Other antineoplastic drugs
11058	Y434 Immunosuppressive agents
11059	Y435 Acidifying and alkalizing agents
11060	Y436 Enzymes, not elsewhere classified
11061	Y438 Other primarily systemic agents, not elsewhere classified
11062	Y439 Primarily systemic agent, unspecified
11063	Y44 Agents primarily affecting blood constituents
11064	Y440 Iron preparations and other anti-hypochromic-anaemia preparations
11065	Y441 Vitamin B12, folic acid and other anti-megaloblastic-anaemia preparations
11066	Y442 Anticoagulants
11067	Y443 Anticoagulant antagonists, vitamin K and other coagulants
11068	Y444 Antithrombotic drugs [platelet-aggregation inhibitors]
11069	Y445 Thrombolytic drugs
11070	Y446 Natural blood and blood products
11071	Y447 Plasma substitutes
11072	Y449 Other and unspecified agents affecting blood constituents
11073	Y45 Analgesics, antipyretics and anti-inflammatory drugs
11074	Y450 Opioids and related analgesics
11075	Y451 Salicylates
11076	Y452 Propionic acid derivatives
11077	Y453 Other nonsteroidal anti-inflammatory drugs [NSAID]
11078	Y454 Antirheumatics
11079	Y455 4-Aminophenol derivatives
11080	Y458 Other analgesics and antipyretics
11081	Y459 Analgesic, antipyretic and anti-inflammatory drug, unspecified
11082	Y46 Antiepileptics and antiparkinsonism drugs
11083	Y460 Succinimides
11084	Y461 Oxazolidinediones
11085	Y462 Hydantoin derivatives
11086	Y463 Deoxybarbiturates
11087	Y464 Iminostilbenes
11088	Y465 Valproic acid
11089	Y466 Other and unspecified antiepileptics
11090	Y467 Antiparkinsonism drugs
11091	Y468 Antispasticity drugs
11092	Y47 Sedatives, hypnotics and antianxiety drugs
11093	Y470 Barbiturates, not elsewhere classified
11094	Y471 Benzodiazepines
11095	Y472 Cloral derivatives
11096	Y473 Paraldehyde
11097	Y474 Bromine compounds
11098	Y475 Mixed sedatives and hypnotics, not elsewhere classified
11099	Y478 Other sedatives, hypnotics and antianxiety drugs
11100	Y479 Sedative, hypnotic and antianxiety drug, unspecified
11101	Y48 Anaesthetics and therapeutic gases
11102	Y480 Inhaled anaesthetics
11103	Y481 Parenteral anaesthetics
11104	Y482 Other and unspecified general anaesthetics
11105	Y483 Local anaesthetics
11106	Y484 Anaesthetic, unspecified
11107	Y485 Therapeutic gases
11108	Y49 Psychotropic drugs, not elsewhere classified
11109	Y490 Tricyclic and tetracyclic antidepressants
11110	Y491 Monoamine-oxidase-inhibitor antidepressants
11111	Y492 Other and unspecified antidepressants
11112	Y493 Phenothiazine antipsychotics and neuroleptics
11113	Y494 Butyrophenone and thioxanthene neuroleptics
11114	Y495 Other antipsychotics and neuroleptics
11115	Y496 Psychodysleptics [hallucinogens]
11116	Y497 Psychostimulants with abuse potential
11117	Y498 Other psychotropic drugs, not elsewhere classified
11118	Y499 Psychotropic drug, unspecified
11119	Y50 Central nervous system stimulants, not elsewhere classified
11120	Y500 Analeptics
11121	Y501 Opioid receptor antagonists
11122	Y502 Methylxanthines, not elsewhere classified
11123	Y508 Other central nervous system stimulants
11124	Y509 Central nervous system stimulant, unspecified
11125	Y51 Drugs primarily affecting the autonomic nervous system
11126	Y510 Anticholinesterase agents
11127	Y511 Other parasympathomimetics [cholinergics]
11128	Y512 Ganglionic blocking drugs, not elsewhere classified
11129	Y513 Other parasympatholytics [anticholinergics and antimuscarinics] and spasmolytics, not elsewhere classified
11130	Y514 Predominantly alpha-adrenoreceptor agonists, not elsewhere classified
11131	Y515 Predominantly beta-adrenoreceptor agonists, not elsewhere classified
11132	Y516 Alpha-adrenoreceptor antagonists, not elsewhere classified
11133	Y517 Beta-adrenoreceptor antagonists, not elsewhere classified
11134	Y518 Centrally acting and adrenergic-neuron-blocking agents, not elsewhere classified
11135	Y519 Other and unspecified drugs primarily affecting the autonomic nervous system
11136	Y52 Agents primarily affecting the cardiovascular system
11137	Y520 Cardiac-stimulant glycosides and drugs of similar action
11138	Y521 Calcium-channel blockers
11139	Y522 Other antidysrhythmic drugs, not elsewhere classified
11140	Y523 Coronary vasodilators, not elsewhere classified
11141	Y524 Angiotensin-converting-enzyme inhibitors
11142	Y525 Other antihypertensive drugs, not elsewhere classified
11143	Y526 Antihyperlipidaemic and antiarteriosclerotic drugs
11144	Y528 Antivaricose drugs, including sclerosing agents
11145	Y529 Other and unspecified agents primarily affecting the cardiovascular system
11146	Y53 Agents primarily affecting the gastrointestinal system
11147	Y530 Histamine H2-receptor antagonists
11148	Y531 Other antacids and anti-gastric-secretion drugs
11149	Y532 Stimulant laxatives
11150	Y533 Saline and osmotic laxatives
11151	Y534 Other laxatives
11152	Y535 Digestants
11153	Y536 Antidiarrhoeal drugs
11154	Y537 Emetics
11155	Y538 Other agents primarily affecting the gastrointestinal system
11156	Y539 Agent primarily affecting the gastrointestinal system, unspecified
11157	Y54 Agents primarily affecting water-balance and mineral and uric acid metabolism
11158	Y540 Mineralocorticoids
11159	Y541 Mineralocorticoid antagonists [aldosterone antagonists]
11160	Y542 Carbonic-anhydrase inhibitors
11161	Y543 Benzothiadiazine derivatives
11162	Y544 Loop [high-ceiling] diuretics
11163	Y545 Other diuretics
11164	Y546 Electrolytic, caloric and water-balance agents
11165	Y547 Agents affecting calcification
11166	Y548 Agents affecting uric acid metabolism
11167	Y549 Mineral salts, not elsewhere classified
11168	Y55 Agents primarily acting on smooth and skeletal muscles and the respiratory system
11169	Y550 Oxytocic drugs
11170	Y551 Skeletal muscle relaxants [neuromuscular blocking agents]
11171	Y552 Other and unspecified agents primarily acting on muscles
11172	Y553 Antitussives
11173	Y554 Expectorants
11174	Y555 Anti-common-cold drugs
11175	Y556 Antiasthmatics, not elsewhere classified
11176	Y557 Other and unspecified agents primarily acting on the respiratory system
11177	Y56 Topical agents primarily affecting skin and mucous membrane and ophthalmological, otorhinolaryngological and dental drugs
11178	Y560 Local antifungal, anti-infective and anti-inflammatory drugs, not elsewhere classified
11179	Y561 Antipruritics
11180	Y562 Local astringents and local detergents
11181	Y563 Emollients, demulcents and protectants
11182	Y564 Keratolytics, keratoplastics and other hair treatment drugs and preparations
11183	Y565 Ophthalmological drugs and preparations
11184	Y566 Otorhinolaryngological drugs and preparations
11185	Y567 Dental drugs, topically applied
11186	Y568 Other topical agents
11187	Y569 Topical agent, unspecified
11188	Y57 Other and unspecified drugs and medicaments
11189	Y570 Appetite depressants [anorectics]
11190	Y571 Lipotropic drugs
11191	Y572 Antidotes and chelating agents, not elsewhere classified
11192	Y573 Alcohol deterrents
11193	Y574 Pharmaceutical excipients
11194	Y575 X-ray contrast media
11195	Y576 Other diagnostic agents
11196	Y577 Vitamins, not elsewhere classified
11197	Y578 Other drugs and medicaments
11198	Y579 Drug or medicament, unspecified
11199	Y58 Bacterial vaccines
11200	Y580 BCG vaccine
11201	Y581 Typhoid and paratyphoid vaccine
11202	Y582 Cholera vaccine
11203	Y583 Plague vaccine
11204	Y584 Tetanus vaccine
11205	Y585 Diphtheria vaccine
11206	Y586 Pertussis vaccine, including combinations with a pertussis component
11207	Y588 Mixed bacterial vaccines, except combinations with a pertussis component
11208	Y589 Other and unspecified bacterial vaccines
11209	Y59 Other and unspecified vaccines and biological substances
11210	Y590 Viral vaccines
11211	Y591 Rickettsial vaccines
11212	Y592 Protozoal vaccines
11213	Y593 Immunoglobulin
11214	Y598 Other specified vaccines and biological substances
11215	Y599 Vaccine or biological substance, unspecified
11216	Y60 Unintentional cut, puncture, perforation or haemorrhage during surgical and medical care
11217	Y600 During surgical operation
11218	Y601 During infusion or transfusion
11219	Y602 During kidney dialysis or other perfusion
11220	Y603 During injection or immunization
11221	Y604 During endoscopic examination
11222	Y605 During heart catheterization
11223	Y606 During aspiration, puncture and other catheterization
11224	Y607 During administration of enema
11225	Y608 During other surgical and medical care
11226	Y609 During unspecified surgical and medical care
11227	Y61 Foreign object accidentally left in body during surgical and medical care
11228	Y610 During surgical operation
11229	Y611 During infusion or transfusion
11230	Y612 During kidney dialysis or other perfusion
11231	Y613 During injection or immunization
11232	Y614 During endoscopic examination
11233	Y615 During heart catheterization
11234	Y616 During aspiration, puncture and other catheterization
11235	Y617 During removal of catheter or packing
11236	Y618 During other surgical and medical care
11237	Y619 During unspecified surgical and medical care
11238	Y62 Failure of sterile precautions during surgical and medical care
11239	Y620 During surgical operation
11240	Y621 During infusion or transfusion
11241	Y622 During kidney dialysis or other perfusion
11242	Y623 During injection or immunization
11243	Y624 During endoscopic examination
11244	Y625 During heart catheterization
11245	Y626 During aspiration, puncture and other catheterization
11246	Y628 During other surgical and medical care
11247	Y629 During unspecified surgical and medical care
11248	Y63 Failure in dosage during surgical and medical care
11249	Y630 Excessive amount of blood or other fluid given during transfusion or infusion
11250	Y631 Incorrect dilution of fluid used during infusion
11251	Y632 Overdose of radiation given during therapy
11252	Y633 Inadvertent exposure of patient to radiation during medical care
11253	Y634 Failure in dosage in electroshock or insulin-shock therapy
11254	Y635 Inappropriate temperature in local application and packing
11255	Y636 Nonadministration of necessary drug, medicament or biological substance
11256	Y638 Failure in dosage during other surgical and medical care
11257	Y639 Failure in dosage during unspecified surgical and medical care
11258	Y64 Contaminated medical or biological substances
11259	Y640 Contaminated medical or biological substance, transfused or infused
11260	Y641 Contaminated medical or biological substance, injected or used for immunization
11261	Y648 Contaminated medical or biological substance administered by other means
11262	Y649 Contaminated medical or biological substance administered by unspecified means
11263	Y65 Other misadventures during surgical and medical care
11264	Y650 Mismatched blood used in transfusion
11265	Y651 Wrong fluid used in infusion
11266	Y652 Failure in suture or ligature during surgical operation
11267	Y653 Endotracheal tube wrongly placed during anaesthetic procedure
11268	Y654 Failure to introduce or to remove other tube or instrument
11269	Y655 Performance of inappropriate operation
11270	Y658 Other specified misadventures during surgical and medical care
11271	Y66 Nonadministration of surgical and medical care
11674	Z432 Attention to ileostomy
11272	Y69 Unspecified misadventure during surgical and medical care
11273	Y70 Anaesthesiology devices associated with adverse incidents
11274	Y700 Anaesthesiology devices associated with adverse incidents: Diagnostic and monitoring devices
11275	Y701 Anaesthesiology devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11276	Y702 Anaesthesiology devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11277	Y703 Anaesthesiology devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11278	Y708 Anaesthesiology devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11279	Y71 Cardiovascular devices associated with adverse incidents
11280	Y710 Cardiovascular devices associated with adverse incidents: Diagnostic and monitoring devices
11281	Y711 Cardiovascular devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11282	Y712 Cardiovascular devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11283	Y713 Cardiovascular devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11284	Y718 Cardiovascular devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11285	Y72 Otorhinolaryngological devices associated with adverse incidents
11286	Y720 Otorhinolaryngological devices associated with adverse incidents: Diagnostic and monitoring devices
11287	Y721 Otorhinolaryngological devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11288	Y722 Otorhinolaryngological devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11289	Y723 Otorhinolaryngological devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11290	Y728 Otorhinolaryngological devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11291	Y73 Gastroenterology and urology devices associated with adverse incidents
11292	Y730 Gastroenterology and urology devices associated with adverse incidents: Diagnostic and monitoring devices
11293	Y731 Gastroenterology and urology devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11294	Y732 Gastroenterology and urology devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11295	Y733 Gastroenterology and urology devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11296	Y738 Gastroenterology and urology devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11297	Y74 General hospital and personal-use devices associated with adverse incidents
11298	Y740 General hospital and personal-use devices associated with adverse incidents: Diagnostic and monitoring devices
11299	Y741 General hospital and personal-use devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11300	Y742 General hospital and personal-use devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11301	Y743 General hospital and personal-use devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11302	Y748 General hospital and personal-use devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11303	Y75 Neurological devices associated with adverse incidents
11304	Y750 Neurological devices associated with adverse incidents: Diagnostic and monitoring devices
11305	Y751 Neurological devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11306	Y752 Neurological devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11307	Y753 Neurological devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11308	Y758 Neurological devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11309	Y76 Obstetric and gynaecological devices associated with adverse incidents
11310	Y760 Obstetric and gynaecological devices associated with adverse incidents: Diagnostic and monitoring devices
11311	Y761 Obstetric and gynaecological devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11312	Y762 Obstetric and gynaecological devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11313	Y763 Obstetric and gynaecological devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11314	Y768 Obstetric and gynaecological devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11315	Y77 Ophthalmic devices associated with adverse incidents
11316	Y770 Ophthalmic devices associated with adverse incidents: Diagnostic and monitoring devices
11317	Y771 Ophthalmic devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11318	Y772 Ophthalmic devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11319	Y773 Ophthalmic devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11320	Y778 Ophthalmic devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11321	Y78 Radiological devices associated with adverse incidents
11322	Y780 Radiological devices associated with adverse incidents: Diagnostic and monitoring devices
11323	Y781 Radiological devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11324	Y782 Radiological devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11325	Y783 Radiological devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11326	Y788 Radiological devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11327	Y79 Orthopaedic devices associated with adverse incidents
11328	Y790 Orthopaedic devices associated with adverse incidents: Diagnostic and monitoring devices
11329	Y791 Orthopaedic devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11330	Y792 Orthopaedic devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11331	Y793 Orthopaedic devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11332	Y798 Orthopaedic devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11333	Y80 Physical medicine devices associated with adverse incidents
11334	Y800 Physical medicine devices associated with adverse incidents: Diagnostic and monitoring devices
11335	Y801 Physical medicine devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11336	Y802 Physical medicine devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11337	Y803 Physical medicine devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11338	Y808 Physical medicine devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11339	Y81 General- and plastic-surgery devices associated with adverse incidents
11340	Y810 General- and plastic-surgery devices associated with adverse incidents: Diagnostic and monitoring devices
11341	Y811 General- and plastic-surgery devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11342	Y812 General- and plastic-surgery devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11343	Y813 General- and plastic-surgery devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11344	Y818 General- and plastic-surgery devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11345	Y82 Other and unspecified medical devices associated with adverse incidents
11346	Y820 Other and unspecified medical devices associated with adverse incidents: Diagnostic and monitoring devices
11347	Y821 Other and unspecified medical devices associated with adverse incidents: Therapeutic (nonsurgical) and rehabilitative devices
11348	Y822 Other and unspecified medical devices associated with adverse incidents: Prosthetic and other implants, materials and accessory devices
11349	Y823 Other and unspecified medical devices associated with adverse incidents: Surgical instruments, materials and devices (including sutures)
11350	Y828 Other and unspecified medical devices associated with adverse incidents: Miscellaneous devices, not elsewhere classified
11351	Y83 Surgical operation and other surgical procedures as the cause of abnormal reaction of the patient, or of later complication, without mention of misadventure at the time of the procedure
11352	Y830 Surgical operation with transplant of whole organ
11353	Y831 Surgical operation with implant of artificial internal device
11354	Y832 Surgical operation with anastomosis, bypass or graft
11355	Y833 Surgical operation with formation of external stoma
11356	Y834 Other reconstructive surgery
11357	Y835 Amputation of limb(s)
11358	Y836 Removal of other organ (partial) (total)
11359	Y838 Other surgical procedures
11360	Y839 Surgical procedure, unspecified
11361	Y84 Other medical procedures as the cause of abnormal reaction of the patient, or of later complication, without mention of misadventure at the time of the procedure
11362	Y840 Cardiac catheterization
11363	Y841 Kidney dialysis
11364	Y842 Radiological procedure and radiotherapy
11365	Y843 Shock therapy
11366	Y844 Aspiration of fluid
11367	Y845 Insertion of gastric or duodenal sound
11368	Y846 Urinary catheterization
11369	Y847 Blood-sampling
11370	Y848 Other medical procedures
11371	Y849 Medical procedure, unspecified
11372	Y85 Sequelae of transport accidents
11373	Y850 Sequelae of motor-vehicle accident
11374	Y859 Sequelae of other and unspecified transport accidents
11375	Y86 Sequelae of other accidents
11376	Y87 Sequelae of intentional self-harm, assault and events of undetermined intent
11377	Y870 Sequelae of intentional self-harm
11378	Y871 Sequelae of assault
11379	Y872 Sequelae of events of undetermined intent
11380	Y88 Sequelae with surgical and medical care as external cause
11381	Z094 Follow-up examination after treatment of fracture
11382	Y880 Sequelae of adverse effects caused by drugs, medicaments and biological substances in therapeutic use
11383	Y881 Sequelae of misadventures to patients during surgical and medical procedures
11384	Y882 Sequelae of adverse incidents associated with medical devices in diagnostic and therapeutic use
11385	Y883 Sequelae of surgical and medical procedures as the cause of abnormal reaction of the patient, or of later complication, without mention of misadventure at the time of the procedure
11386	Y89 Sequelae of other external causes
11387	Y890 Sequelae of legal intervention
11388	Y891 Sequelae of war operations
11389	Y899 Sequelae of unspecified external cause
11390	Y90 Evidence of alcohol involvement determined by blood alcohol level
11391	Y900 Blood alcohol level of less than 20 mg/100 ml
11392	Y901 Blood alcohol level of 20-39 mg/100 ml
11393	Y902 Blood alcohol level of 40-59 mg/100 ml
11394	Y903 Blood alcohol level of 60-79 mg/100 ml
11395	Y904 Blood alcohol level of 80-99 mg/100 ml
11396	Y905 Blood alcohol level of 100-119 mg/100 ml
11397	Y906 Blood alcohol level of 120-199 mg/100 ml
11398	Y907 Blood alcohol level of 200-239 mg/100 ml
11399	Y908 Blood alcohol level of 240 mg/100 ml or more
11400	Y909 Presence of alcohol in blood, level not specified
11675	Z433 Attention to colostomy
11401	Y91 Evidence of alcohol involvement determined by level of intoxication
11402	Y910 Mild alcohol intoxication
11403	Y911 Moderate alcohol intoxication
11404	Y912 Severe alcohol intoxication
11405	Y913 Very severe alcohol intoxication
11406	Y919 Alcohol involvement, not otherwise specified
11407	Y95 Nosocomial condition
11408	Y96 Work-related condition
11409	Y97 Environmental-pollution-related condition
11410	Y98 Lifestyle-related condition
11411	Z00 General examination and investigation of persons without complaint and reported diagnosis
11412	Z000 General medical examination
11413	Z001 Routine child health examination
11414	Z002 Examination for period of rapid growth in childhood
11415	Z003 Examination for adolescent development state
11416	Z004 General psychiatric examination, not elsewhere classified
11417	Z005 Examination of potential donor of organ and tissue
11418	Z006 Examination for normal comparison and control in clinical research programme
11419	Z008 Other general examinations
11420	Z01 Other special examinations and investigations of persons without complaint or reported diagnosis
11421	Z010 Examination of eyes and vision
11422	Z011 Examination of ears and hearing
11423	Z012 Dental examination
11424	Z013 Examination of blood pressure
11425	Z014 Gynaecological examination (general)(routine)
11426	Z015 Diagnostic skin and sensitization tests
11427	Z016 Radiological examination, not elsewhere classified
11428	Z017 Laboratory examination
11429	Z018 Other specified special examinations
11430	Z019 Special examination, unspecified
11431	Z02 Examination and encounter for administrative purposes
11432	Z020 Examination for admission to educational institution
11433	Z021 Pre-employment examination
11434	Z022 Examination for admission to residential institutions
11435	Z023 Examination for recruitment to armed forces
11436	Z024 Examination for driving licence
11437	Z025 Examination for participation in sport
11438	Z026 Examination for insurance purposes
11439	Z027 Issue of medical certificate
11440	Z028 Other examinations for administrative purposes
11441	Z029 Examination for administrative purposes, unspecified
11442	Z03 Medical observation and evaluation for suspected diseases and conditions
11443	Z030 Observation for suspected tuberculosis
11444	Z031 Observation for suspected malignant neoplasm
11445	Z032 Observation for suspected mental and behavioural disorders
11446	Z033 Observation for suspected nervous system disorder
11447	Z034 Observation for suspected myocardial infarction
11448	Z035 Observation for other suspected cardiovascular diseases
11449	Z036 Observation for suspected toxic effect from ingested substance
11450	Z038 Observation for other suspected diseases and conditions
11451	Z039 Observation for suspected disease or condition, unspecified
11452	Z04 Examination and observation for other reasons
11453	Z040 Blood-alcohol and blood-drug test
11454	Z041 Examination and observation following transport accident
11455	Z042 Examination and observation following work accident
11456	Z043 Examination and observation following other accident
11457	Z044 Examination and observation following alleged rape and seduction
11458	Z045 Examination and observation following other inflicted injury
11459	Z046 General psychiatric examination, requested by authority
11460	Z048 Examination and observation for other specified reasons
11461	Z049 Examination and observation for unspecified reason
11462	Z08 Follow-up examination after treatment for malignant neoplasms
11463	Z080 Follow-up examination after surgery for malignant neoplasm
11464	Z081 Follow-up examination after radiotherapy for malignant neoplasm
11465	Z082 Follow-up examination after chemotherapy for malignant neoplasm
11466	Z087 Follow-up examination after combined treatment for malignant neoplasm
11467	Z088 Follow-up examination after other treatment for malignant neoplasm
11468	Z089 Follow-up examination after unspecified treatment for malignant neoplasm
11469	Z09 Follow-up examination after treatment for conditions other than malignant neoplasms
11470	Z090 Follow-up examination after surgery for other conditions
11471	Z091 Follow-up examination after radiotherapy for other conditions
11472	Z092 Follow-up examination after chemotherapy for other conditions
11473	Z093 Follow-up examination after psychotherapy
11474	Z097 Follow-up examination after combined treatment for other conditions
11475	Z098 Follow-up examination after other treatment for other conditions
11476	Z099 Follow-up examination after unspecified treatment for other conditions
11477	Z10 Routine general health check-up of defined subpopulation
11478	Z100 Occupational health examination
11479	Z101 Routine general health check-up of inhabitants of institutions
11480	Z102 Routine general health check-up of armed forces
11481	Z103 Routine general health check-up of sports teams
11482	Z108 Routine general health check-up of other defined subpopulations
11483	Z11 Special screening examination for infectious and parasitic diseases
11484	Z110 Special screening examination for intestinal infectious diseases
11485	Z111 Special screening examination for respiratory tuberculosis
11486	Z112 Special screening examination for other bacterial diseases
11487	Z113 Special screening examination for infections with a predominantly sexual mode of transmission
11488	Z114 Special screening examination for human immunodeficiency virus [HIV]
11489	Z115 Special screening examination for other viral diseases
11490	Z116 Special screening examination for other protozoal diseases and helminthiases
11491	Z118 Special screening examination for other infectious and parasitic diseases
11492	Z119 Special screening examination for infectious and parasitic diseases, unspecified
11493	Z12 Special screening examination for neoplasms
11494	Z120 Special screening examination for neoplasm of stomach
11495	Z121 Special screening examination for neoplasm of intestinal tract
11496	Z122 Special screening examination for neoplasm of respiratory organs
11497	Z123 Special screening examination for neoplasm of breast
11498	Z124 Special screening examination for neoplasm of cervix
11499	Z125 Special screening examination for neoplasm of prostate
11500	Z126 Special screening examination for neoplasm of bladder
11501	Z128 Special screening examination for neoplasms of other sites
11502	Z129 Special screening examination for neoplasm, unspecified
11503	Z13 Special screening examination for other diseases and disorders
11504	Z130 Special screening examination for diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism
11505	Z131 Special screening examination for diabetes mellitus
11506	Z132 Special screening examination for nutritional disorders
11507	Z133 Special screening examination for mental and behavioural disorders
11508	Z134 Special screening examination for certain developmental disorders in childhood
11509	Z135 Special screening examination for eye and ear disorders
11510	Z136 Special screening examination for cardiovascular disorders
11511	Z137 Special screening examination for congenital malformations, deformations and chromosomal abnormalities
11512	Z138 Special screening examination for other specified diseases and disorders
11513	Z139 Special screening examination, unspecified
11514	Z20 Contact with and exposure to communicable diseases
11515	Z200 Contact with and exposure to intestinal infectious diseases
11516	Z201 Contact with and exposure to tuberculosis
11517	Z202 Contact with and exposure to infections with a predominantly sexual mode of transmission
11518	Z203 Contact with and exposure to rabies
11519	Z204 Contact with and exposure to rubella
11520	Z205 Contact with and exposure to viral hepatitis
11521	Z206 Contact with and exposure to human immunodeficiency virus [HIV]
11522	Z207 Contact with and exposure to pediculosis, acariasis and other infestations
11523	Z208 Contact with and exposure to other communicable diseases
11524	Z209 Contact with and exposure to unspecified communicable disease
11525	Z21 Asymptomatic human immunodeficiency virus [HIV] infection status
11526	Z22 Carrier of infectious disease
11527	Z220 Carrier of typhoid
11528	Z221 Carrier of other intestinal infectious diseases
11529	Z222 Carrier of diphtheria
11530	Z223 Carrier of other specified bacterial diseases
11531	Z224 Carrier of infections with a predominantly sexual mode of transmission
11532	Z225 Carrier of viral hepatitis
11533	Z226 Carrier of human T-lymphotropic virus type- 1 [HTLV-1] infection
11534	Z228 Carrier of other infectious diseases
11535	Z229 Carrier of infectious disease, unspecified
11536	Z23 Need for immunization against single bacterial diseases
11537	Z230 Need for immunization against cholera alone
11538	Z231 Need for immunization against typhoid-paratyphoid alone [TAB]
11539	Z232 Need for immunization against tuberculosis [BCG]
11540	Z233 Need for immunization against plague
11541	Z234 Need for immunization against tularaemia
11542	Z235 Need for immunization against tetanus alone
11543	Z236 Need for immunization against diphtheria alone
11544	Z237 Need for immunization against pertussis alone
11545	Z238 Need for immunization against other single bacterial diseases
11546	Z24 Need for immunization against certain single viral diseases
11547	Z240 Need for immunization against poliomyelitis
11548	Z241 Need for immunization against arthropod-borne viral encephalitis
11549	Z242 Need for immunization against rabies
11550	Z243 Need for immunization against yellow fever
11551	Z244 Need for immunization against measles alone
11552	Z245 Need for immunization against rubella alone
11553	Z246 Need for immunization against viral hepatitis
11554	Z25 Need for immunization against other single viral diseases
11555	Z250 Need for immunization against mumps alone
11556	Z251 Need for immunization against influenza
11557	Z258 Need for immunization against other specified single viral diseases
11558	Z26 Need for immunization against other single infectious diseases
11559	Z260 Need for immunization against leishmaniasis
11560	Z268 Need for immunization against other specified single infectious diseases
11561	Z269 Need for immunization against unspecified infectious disease
11562	Z27 Need for immunization against combinations of infectious diseases
11563	Z270 Need for immunization against cholera with typhoid-paratyphoid [cholera + TAB]
11564	Z271 Need for immunization against diphtheria-tetanus-pertussis, combined [DTP]
11565	Z272 Need for immunization against diphtheria-tetanus-pertussis with typhoid-paratyphoid [DTP + TAB]
11566	Z273 Need for immunization against diphtheria-tetanus-pertussis with poliomyelitis [DTP + polio]
11567	Z274 Need for immunization against measles-mumps-rubella [MMR]
11568	Z278 Need for immunization against other combinations of infectious diseases
11569	Z279 Need for immunization against unspecified combinations of infectious diseases
11570	Z280 Immunization not carried out because of contraindication
11571	Z281 Immunization not carried out because of patient's decision for reasons of belief or group pressure
11777	Z562 Threat of job loss
11572	Z282 Immunization not carried out because of patient's decision for other and unspecified reasons
11573	Z288 Immunization not carried out for other reasons
11574	Z289 Immunization not carried out for unspecified reason
11575	Z29 Need for other prophylactic measures
11576	Z290 Isolation
11577	Z291 Prophylactic immunotherapy
11578	Z292 Other prophylactic chemotherapy
11579	Z298 Other specified prophylactic measures
11580	Z299 Prophylactic measure, unspecified
11581	Z30 Contraceptive management
11582	Z300 General counselling and advice on contraception
11583	Z301 Insertion of (intrauterine) contraceptive device
11584	Z302 Sterilization
11585	Z303 Menstrual extraction
11586	Z304 Surveillance of contraceptive drugs
11587	Z305 Surveillance of (intrauterine) contraceptive device
11588	Z308 Other contraceptive management
11589	Z309 Contraceptive management, unspecified
11590	Z31 Procreative management
11591	Z310 Tuboplasty or vasoplasty after previous sterilization
11592	Z311 Artificial insemination
11593	Z312 In vitro fertilization
11594	Z313 Other assisted fertilization methods
11595	Z314 Procreative investigation and testing
11596	Z315 Genetic counselling
11597	Z316 General counselling and advice on procreation
11598	Z318 Other procreative management
11599	Z319 Procreative management, unspecified
11600	Z32 Pregnancy examination and test
11601	Z320 Pregnancy, not (yet) confirmed
11602	Z321 Pregnancy confirmed
11603	Z33 Pregnant state, incidental
11604	Z34 Supervision of normal pregnancy
11605	Z340 Supervision of normal first pregnancy
11606	Z348 Supervision of other normal pregnancy
11607	Z349 Supervision of normal pregnancy, unspecified
11608	Z35 Supervision of high-risk pregnancy
11609	Z350 Supervision of pregnancy with history of infertility
11610	Z351 Supervision of pregnancy with history of abortive outcome
11611	Z352 Supervision of pregnancy with other poor reproductive or obstetric history
11612	Z353 Supervision of pregnancy with history of insufficient antenatal care
11613	Z354 Supervision of pregnancy with grand multiparity
11614	Z355 Supervision of elderly primigravida
11615	Z356 Supervision of very young primigravida
11616	Z357 Supervision of high-risk pregnancy due to social problems
11617	Z358 Supervision of other high-risk pregnancies
11618	Z359 Supervision of high-risk pregnancy, unspecified
11619	Z36 Antenatal screening
11620	Z360 Antenatal screening for chromosomal anomalies
11621	Z361 Antenatal screening for raised alphafetoprotein level
11622	Z362 Other antenatal screening based on amniocentesis
11623	Z363 Antenatal screening for malformations using ultrasound and other physical methods
11624	Z364 Antenatal screening for fetal growth retardation using ultrasound and other physical methods
11625	Z365 Antenatal screening for isoimmunization
11626	Z368 Other antenatal screening
11627	Z369 Antenatal screening, unspecified
11628	Z37 Outcome of delivery
11629	Z370 Single live birth
11630	Z371 Single stillbirth
11631	Z372 Twins, both liveborn
11632	Z373 Twins, one liveborn and one stillborn
11633	Z374 Twins, both stillborn
11634	Z375 Other multiple births, all liveborn
11635	Z376 Other multiple births, some liveborn
11636	Z377 Other multiple births, all stillborn
11637	Z379 Outcome of delivery, unspecified
11638	Z38 Liveborn infants according to place of birth
11639	Z380 Singleton, born in hospital
11640	Z381 Singleton, born outside hospital
11641	Z382 Singleton, unspecified as to place of birth
11642	Z383 Twin, born in hospital
11643	Z384 Twin, born outside hospital
11644	Z385 Twin, unspecified as to place of birth
11645	Z386 Other multiple, born in hospital
11646	Z387 Other multiple, born outside hospital
11647	Z388 Other multiple, unspecified as to place of birth
11648	Z39 Postpartum care and examination
11649	Z390 Care and examination immediately after delivery
11650	Z391 Care and examination of lactating mother
11651	Z392 Routine postpartum follow-up
11652	Z40 Prophylactic surgery
11653	Z400 Prophylactic surgery for risk-factors related to malignant neoplasms
11654	Z408 Other prophylactic surgery
11655	Z409 Prophylactic surgery, unspecified
11656	Z41 Procedures for purposes other than remedying health state
11657	Z410 Hair transplant
11658	Z411 Other plastic surgery for unacceptable cosmetic appearance
11659	Z412 Routine and ritual circumcision
11660	Z413 Ear piercing
11661	Z418 Other procedures for purposes other than remedying health state
11662	Z419 Procedure for purposes other than remedying health state, unspecified
11663	Z42 Follow-up care involving plastic surgery
11664	Z420 Follow-up care involving plastic surgery of head and neck
11665	Z421 Follow-up care involving plastic surgery of breast
11666	Z422 Follow-up care involving plastic surgery of other parts of trunk
11667	Z423 Follow-up care involving plastic surgery of upper extremity
11668	Z424 Follow-up care involving plastic surgery of lower extremity
11669	Z428 Follow-up care involving plastic surgery of other body part
11670	Z429 Follow-up care involving plastic surgery, unspecified
11671	Z43 Attention to artificial openings
11672	Z430 Attention to tracheostomy
11676	Z434 Attention to other artificial openings of digestive tract
11677	Z435 Attention to cystostomy
11678	Z436 Attention to other artificial openings of urinary tract
11679	Z437 Attention to artificial vagina
11680	Z438 Attention to other artificial openings
11681	Z439 Attention to unspecified artificial opening
11682	Z44 Fitting and adjustment of external prosthetic device
11683	Z440 Fitting and adjustment of artificial arm (complete)(partial)
11684	Z441 Fitting and adjustment of artificial leg (complete)(partial)
11685	Z442 Fitting and adjustment of artificial eye
11686	Z443 Fitting and adjustment of external breast prosthesis
11687	Z448 Fitting and adjustment of other external prosthetic devices
11688	Z449 Fitting and adjustment of unspecified external prosthetic device
11689	Z45 Adjustment and management of implanted device
11690	Z450 Adjustment and management of cardiac pacemaker
11691	Z451 Adjustment and management of infusion pump
11692	Z452 Adjustment and management of vascular access device
11693	Z453 Adjustment and management of implanted hearing device
11694	Z458 Adjustment and management of other implanted devices
11695	Z459 Adjustment and management of unspecified implanted device
11696	Z46 Fitting and adjustment of other devices
11697	Z460 Fitting and adjustment of spectacles and contact lenses
11698	Z461 Fitting and adjustment of hearing aid
11699	Z462 Fitting and adjustment of other devices related to nervous system and special senses
11700	Z463 Fitting and adjustment of dental prosthetic device
11701	Z464 Fitting and adjustment of orthodontic device
11702	Z465 Fitting and adjustment of ileostomy and other intestinal appliances
11703	Z466 Fitting and adjustment of urinary device
11704	Z467 Fitting and adjustment of orthopaedic device
11705	Z468 Fitting and adjustment of other specified devices
11706	Z469 Fitting and adjustment of unspecified device
11707	Z47 Other orthopaedic follow-up care
11708	Z470 Follow-up care involving removal of fracture plate and other internal fixation device
11709	Z478 Other specified orthopaedic follow-up care
11710	Z479 Orthopaedic follow-up care, unspecified
11711	Z48 Other surgical follow-up care
11712	Z480 Attention to surgical dressings and sutures
11713	Z488 Other specified surgical follow-up care
11714	Z489 Surgical follow-up care, unspecified
11715	Z49 Care involving dialysis
11716	Z490 Preparatory care for dialysis
11717	Z491 Extracorporeal dialysis
11718	Z492 Other dialysis
11719	Z50 Care involving use of rehabilitation procedures
11720	Z500 Cardiac rehabilitation
11721	Z501 Other physical therapy
11722	Z502 Alcohol rehabilitation
11723	Z503 Drug rehabilitation
11724	Z504 Psychotherapy, not elsewhere classified
11725	Z505 Speech therapy
11726	Z506 Orthoptic training
11727	Z507 Occupational therapy and vocational rehabilitation, not elsewhere classified
11728	Z508 Care involving use of other rehabilitation procedures
11729	Z509 Care involving use of rehabilitation procedure, unspecified
11730	Z51 Other medical care
11731	Z510 Radiotherapy session
11732	Z511 Chemotherapy session for neoplasm
11733	Z512 Other chemotherapy
11734	Z513 Blood transfusion (without reported diagnosis)
11735	Z514 Preparatory care for subsequent treatment, not elsewhere classified
11736	Z515 Palliative care
11737	Z516 Desensitization to allergens
11738	Z518 Other specified medical care
11739	Z519 Medical care, unspecified
11740	Z52 Donors of organs and tissues
11741	Z520 Blood donor
11742	Z521 Skin donor
11743	Z522 Bone donor
11744	Z523 Bone marrow donor
11745	Z524 Kidney donor
11746	Z525 Cornea donor
11747	Z526 Liver donor
11748	Z527 Heart donor
11749	Z528 Donor of other organs and tissues
11750	Z529 Donor of unspecified organ or tissue
11751	Z53 Persons encountering health services for specific procedures, not carried out
11752	Z530 Procedure not carried out because of contraindication
11753	Z531 Procedure not carried out because of patient's decision for reasons of belief and group pressure
11754	Z532 Procedure not carried out because of patient's decision for other and unspecified reasons
11755	Z538 Procedure not carried out for other reasons
11756	Z539 Procedure not carried out, unspecified reason
11757	Z54 Convalescence
11758	Z540 Convalescence following surgery
11759	Z541 Convalescence following radiotherapy
11760	Z542 Convalescence following chemotherapy
11761	Z543 Convalescence following psychotherapy
11762	Z544 Convalescence following treatment of fracture
11763	Z547 Convalescence following combined treatment
11764	Z548 Convalescence following other treatment
11765	Z549 Convalescence following unspecified treatment
11766	Z55 Problems related to education and literacy
11767	Z550 Illiteracy and low-level literacy
11768	Z551 Schooling unavailable and unattainable
11769	Z552 Failed examinations
11771	Z554 Educational maladjustment and discord with teachers and classmates
11772	Z558 Other problems related to education and literacy
11773	Z559 Problem related to education and literacy, unspecified
11774	Z56 Problems related to employment and unemployment
11775	Z560 Unemployment, unspecified
11776	Z561 Change of job
11779	Z564 Discord with boss and workmates
11781	Z566 Other physical and mental strain related to work
11782	Z567 Other and unspecified problems related to employment
11783	Z57 Occupational exposure to risk-factors
11784	Z570 Occupational exposure to noise
11785	Z571 Occupational exposure to radiation
11786	Z572 Occupational exposure to dust
11787	Z573 Occupational exposure to other air contaminants
11788	Z574 Occupational exposure to toxic agents in agriculture
11789	Z575 Occupational exposure to toxic agents in other industries
11790	Z576 Occupational exposure to extreme temperature
11791	Z577 Occupational exposure to vibration
11792	Z578 Occupational exposure to other risk-factors
11793	Z579 Occupational exposure to unspecified risk-factor
11794	Z58 Problems related to physical environment
11795	Z580 Exposure to noise
11796	Z581 Exposure to air pollution
11797	Z582 Exposure to water pollution
11798	Z583 Exposure to soil pollution
11799	Z584 Exposure to radiation
11800	Z585 Exposure to other pollution
11801	Z586 Inadequate drinking-water supply
11802	Z587 Exposure to tobacco smoke
11803	Z588 Other problems related to physical environment
11804	Z589 Problem related to physical environment, unspecified
11805	Z59 Problems related to housing and economic circumstances
11806	Z590 Homelessness
11807	Z591 Inadequate housing
11808	Z592 Discord with neighbours, lodgers and landlord
11809	Z593 Problems related to living in residential institution
11810	Z594 Lack of adequate food
11811	Z595 Extreme poverty
11812	Z596 Low income
11813	Z597 Insufficient social insurance and welfare support
11814	Z598 Other problems related to housing and economic circumstances
11815	Z599 Problem related to housing and economic circumstances, unspecified
11816	Z60 Problems related to social environment
11817	Z600 Problems of adjustment to life-cycle transitions
11818	Z601 Atypical parenting situation
11819	Z602 Living alone
11820	Z603 Acculturation difficulty
11821	Z604 Social exclusion and rejection
11822	Z605 Target of perceived adverse discrimination and persecution
11823	Z608 Other problems related to social environment
11824	Z609 Problem related to social environment, unspecified
11825	Z61 Problems related to negative life events in childhood
11826	Z610 Loss of love relationship in childhood
11827	Z611 Removal from home in childhood
11828	Z612 Altered pattern of family relationships in childhood
11829	Z613 Events resulting in loss of self-esteem in childhood
11830	Z614 Problems related to alleged sexual abuse of child by person within primary support group
11831	Z615 Problems related to alleged sexual abuse of child by person outside primary support group
11832	Z616 Problems related to alleged physical abuse of child
11833	Z617 Personal frightening experience in childhood
11834	Z618 Other negative life events in childhood
11835	Z619 Negative life event in childhood, unspecified
11836	Z62 Other problems related to upbringing
11837	Z620 Inadequate parental supervision and control
11838	Z621 Parental overprotection
11839	Z622 Institutional upbringing
11840	Z623 Hostility towards and scapegoating of child
11841	Z624 Emotional neglect of child
11842	Z625 Other problems related to neglect in upbringing
11843	Z626 Inappropriate parental pressure and other abnormal qualities of upbringing
11844	Z628 Other specified problems related to upbringing
11845	Z629 Problem related to upbringing, unspecified
11846	Z63 Other problems related to primary support group, including family circumstances
11847	Z630 Problems in relationship with spouse or partner
11848	Z631 Problems in relationship with parents and in-laws
11849	Z632 Inadequate family support
11850	Z633 Absence of family member
11851	Z634 Disappearance and death of family member
11852	Z635 Disruption of family by separation and divorce
11853	Z636 Dependent relative needing care at home
11854	Z637 Other stressful life events affecting family and household
11855	Z638 Other specified problems related to primary support group
11856	Z639 Problem related to primary support group, unspecified
11857	Z64 Problems related to certain psychosocial circumstances
11858	Z640 Problems related to unwanted pregnancy
11859	Z641 Problems related to multiparity
11860	Z642 Seeking and accepting physical, nutritional and chemical interventions known to be hazardous and harmful
11861	Z643 Seeking and accepting behavioural and psychological interventions known to be hazardous and harmful
11862	Z65 Problems related to other psychosocial circumstances
11863	Z650 Conviction in civil and criminal proceedings without imprisonment
11864	Z651 Imprisonment and other incarceration
11865	Z652 Problems related to release from prison
11866	Z653 Problems related to other legal circumstances
11867	Z654 Victim of crime and terrorism
11868	Z655 Exposure to disaster, war and other hostilities
11869	Z658 Other specified problems related to psychosocial circumstances
11870	Z659 Problem related to unspecified psychosocial circumstances
11871	Z70 Counselling related to sexual attitude, behaviour and orientation
11872	Z700 Counselling related to sexual attitude
11873	Z701 Counselling related to patient's sexual behaviour and orientation
11874	Z702 Counselling related to sexual behaviour and orientation of third party
11875	Z703 Counselling related to combined concerns regarding sexual attitude, behaviour and orientation
11877	Z709 Sex counselling, unspecified
11878	Z71 Persons encountering health services for other counselling and medical advice, not elsewhere classified
11879	Z710 Person consulting on behalf of another person
11880	Z711 Person with feared complaint in whom no diagnosis is made
11881	Z712 Person consulting for explanation of investigation findings
11882	Z713 Dietary counselling and surveillance
11883	Z714 Alcohol abuse counselling and surveillance
11884	Z715 Drug abuse counselling and surveillance
11885	Z716 Tobacco abuse counselling
11886	Z717 Human immunodeficiency virus [HIV] counselling
11887	Z718 Other specified counselling
11888	Z719 Counselling, unspecified
11889	Z72 Problems related to lifestyle
11890	Z720 Tobacco use
11891	Z721 Alcohol use
11892	Z722 Drug use
11893	Z723 Lack of physical exercise
11894	Z724 Inappropriate diet and eating habits
11895	Z725 High-risk sexual behaviour
11896	Z726 Gambling and betting
11897	Z728 Other problems related to lifestyle
11898	Z729 Problem related to lifestyle, unspecified
11899	Z73 Problems related to life-management difficulty
11900	Z730 Burn-out
11901	Z731 Accentuation of personality traits
11902	Z732 Lack of relaxation and leisure
11903	Z733 Stress, not elsewhere classified
11904	Z734 Inadequate social skills, not elsewhere classified
11905	Z735 Social role conflict, not elsewhere classified
11906	Z736 Limitation of activities due to disability
11907	Z738 Other problems related to life-management difficulty
11908	Z739 Problem related to life-management difficulty, unspecified
11909	Z74 Problems related to care-provider dependency
11910	Z740 Need for assistance due to reduced mobility
11911	Z741 Need for assistance with personal care
11912	Z742 Need for assistance at home and no other household member able to render care
11913	Z743 Need for continuous supervision
11914	Z748 Other problems related to care-provider dependency
11915	Z749 Problem related to care-provider dependency, unspecified
11916	Z75 Problems related to medical facilities and other health care
11917	Z750 Medical services not available in home
11918	Z751 Person awaiting admission to adequate facility elsewhere
11919	Z752 Other waiting period for investigation and treatment
11920	Z753 Unavailability and inaccessibility of health-care facilities
11921	Z754 Unavailability and inaccessibility of other helping agencies
11922	Z755 Holiday relief care
11923	Z758 Other problems related to medical facilities and other health care
11924	Z759 Unspecified problem related to medical facilities and other health care
11925	Z76 Persons encountering health services in other circumstances
11926	Z760 Issue of repeat prescription
11927	Z761 Health supervision and care of foundling
11928	Z762 Health supervision and care of other healthy infant and child
11929	Z763 Healthy person accompanying sick person
11930	Z764 Other boarder in health-care facility
11931	Z765 Malingerer [conscious simulation]
11932	Z768 Persons encountering health services in other specified circumstances
11933	Z769 Person encountering health services in unspecified circumstances
11934	Z80 Family history of malignant neoplasm
11935	Z800 Family history of malignant neoplasm of digestive organs
11936	Z801 Family history of malignant neoplasm of trachea, bronchus and lung
11937	Z802 Family history of malignant neoplasm of other respiratory and intrathoracic organs
11938	Z803 Family history of malignant neoplasm of breast
11939	Z804 Family history of malignant neoplasm of genital organs
11940	Z805 Family history of malignant neoplasm of urinary tract
11941	Z806 Family history of leukaemia
11942	Z807 Family history of other malignant neoplasms of lymphoid, haematopoietic and related tissues
11943	Z808 Family history of malignant neoplasm of other organs or systems
11944	Z809 Family history of malignant neoplasm, unspecified
11945	Z81 Family history of mental and behavioural disorders
11946	Z810 Family history of mental retardation
11947	Z811 Family history of alcohol abuse
11948	Z812 Family history of tobacco abuse
11949	Z813 Family history of other psychoactive substance abuse
11950	Z814 Family history of other substance abuse
11951	Z818 Family history of other mental and behavioural disorders
11952	Z82 Family history of certain disabilities and chronic diseases leading to disablement
11953	Z820 Family history of epilepsy and other diseases of the nervous system
11954	Z821 Family history of blindness and visual loss
11955	Z822 Family history of deafness and hearing loss
11956	Z823 Family history of stroke
11957	Z824 Family history of ischaemic heart disease and other diseases of the circulatory system
11958	Z825 Family history of asthma and other chronic lower respiratory diseases
11959	Z826 Family history of arthritis and other diseases of the musculoskeletal system and connective tissue
11960	Z827 Family history of congenital malformations, deformations and chromosomal abnormalities
11961	Z828 Family history of other disabilities and chronic diseases leading to disablement, not elsewhere classified
11962	Z83 Family history of other specific disorders
11963	Z830 Family history of human immunodeficiency virus [HIV] disease
11964	Z831 Family history of other infectious and parasitic diseases
12051	Z922 Personal history of long-term (current) use of other medicaments
11965	Z832 Family history of diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism
11966	Z833 Family history of diabetes mellitus
11967	Z834 Family history of other endocrine, nutritional and metabolic diseases
11968	Z835 Family history of eye and ear disorders
11969	Z836 Family history of diseases of the respiratory system
11970	Z837 Family history of diseases of the digestive system
11971	Z84 Family history of other conditions
11972	Z840 Family history of diseases of the skin and subcutaneous tissue
11973	Z841 Family history of disorders of kidney and ureter
11974	Z842 Family history of other diseases of the genitourinary system
11975	Z843 Family history of consanguinity
11976	Z848 Family history of other specified conditions
11977	Z85 Personal history of malignant neoplasm
11978	Z850 Personal history of malignant neoplasm of digestive organs
11979	Z851 Personal history of malignant neoplasm of trachea, bronchus and lung
11980	Z852 Personal history of malignant neoplasm of other respiratory and intrathoracic organs
11981	Z853 Personal history of malignant neoplasm of breast
11982	Z854 Personal history of malignant neoplasm of genital organs
11983	Z855 Personal history of malignant neoplasm of urinary tract
11984	Z856 Personal history of leukaemia
11985	Z857 Personal history of other malignant neoplasms of lymphoid, haematopoietic and related tissues
11986	Z858 Personal history of malignant neoplasms of other organs and systems
11987	Z859 Personal history of malignant neoplasm, unspecified
11988	Z86 Personal history of certain other diseases
11989	Z860 Personal history of other neoplasms
11990	Z861 Personal history of infectious and parasitic diseases
11991	Z862 Personal history of diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism
11992	Z863 Personal history of endocrine, nutritional and metabolic diseases
11993	Z864 Personal history of psychoactive substance abuse
11994	Z865 Personal history of other mental and behavioural disorders
11995	Z866 Personal history of diseases of the nervous system and sense organs
11996	Z867 Personal history of diseases of the circulatory system
11997	Z87 Personal history of other diseases and conditions
11998	Z870 Personal history of diseases of the respiratory system
11999	Z871 Personal history of diseases of the digestive system
12000	Z872 Personal history of diseases of the skin and subcutaneous tissue
12001	Z873 Personal history of diseases of the musculoskeletal system and connective tissue
12002	Z874 Personal history of diseases of the genitourinary system
12003	Z875 Personal history of complications of pregnancy, childbirth and the puerperium
12004	Z876 Personal history of certain conditions arising in the perinatal period
12005	Z877 Personal history of congenital malformations, deformations and chromosomal abnormalities
12006	Z878 Personal history of other specified conditions
12007	Z88 Personal history of allergy to drugs, medicaments and biological substances
12008	Z880 Personal history of allergy to penicillin
12009	Z881 Personal history of allergy to other antibiotic agents
12010	Z882 Personal history of allergy to sulfonamides
12011	Z883 Personal history of allergy to other anti-infective agents
12012	Z884 Personal history of allergy to anaesthetic agent
12013	Z885 Personal history of allergy to narcotic agent
12014	Z886 Personal history of allergy to analgesic agent
12015	Z887 Personal history of allergy to serum and vaccine
12016	Z888 Personal history of allergy to other drugs, medicaments and biological substances
12017	Z889 Personal history of allergy to unspecified drugs, medicaments and biological substances
12018	Z89 Acquired absence of limb
12019	Z890 Acquired absence of finger(s) [including thumb], unilateral
12020	Z891 Acquired absence of hand and wrist
12021	Z892 Acquired absence of upper limb above wrist
12022	Z893 Acquired absence of both upper limbs [any level]
12023	Z894 Acquired absence of foot and ankle
12024	Z895 Acquired absence of leg at or below knee
12025	Z896 Acquired absence of leg above knee
12026	Z897 Acquired absence of both lower limbs [any level, except toes alone]
12027	Z898 Acquired absence of upper and lower limbs [any level]
12028	Z899 Acquired absence of limb, unspecified
12029	Z90 Acquired absence of organs, not elsewhere classified
12030	Z900 Acquired absence of part of head and neck
12031	Z901 Acquired absence of breast(s)
12032	Z902 Acquired absence of lung [part of]
12033	Z903 Acquired absence of part of stomach
12034	Z904 Acquired absence of other parts of digestive tract
12035	Z905 Acquired absence of kidney
12036	Z906 Acquired absence of other organs of urinary tract
12037	Z907 Acquired absence of genital organ(s)
12038	Z908 Acquired absence of other organs
12039	Z91 Personal history of risk-factors, not elsewhere classified
12040	Z910 Personal history of allergy, other than to drugs and biological substances
12041	Z911 Personal history of noncompliance with medical treatment and regimen
12042	Z912 Personal history of poor personal hygiene
12043	Z913 Personal history of unhealthy sleep-wake schedule
12044	Z914 Personal history of psychological trauma, not elsewhere classified
12045	Z915 Personal history of self-harm
12046	Z916 Personal history of other physical trauma
12047	Z918 Personal history of other specified risk-factors, not elsewhere classified
12048	Z92 Personal history of medical treatment
12049	Z920 Personal history of contraception
12050	Z921 Personal history of long-term (current) use of anticoagulants
12052	Z923 Personal history of irradiation
12053	Z924 Personal history of major surgery, not elsewhere classified
12054	Z925 Personal history of rehabilitation measures
12055	Z926 Personal history of chemotherapy for neoplastic disease
12056	Z928 Personal history of other medical treatment
12057	Z929 Personal history of medical treatment, unspecified
12058	Z93 Artificial opening status
12059	Z930 Tracheostomy status
12060	Z931 Gastrostomy status
12061	Z932 Ileostomy status
12062	Z933 Colostomy status
12063	Z934 Other artificial openings of gastrointestinal tract status
12064	Z935 Cystostomy status
12065	Z936 Other artificial openings of urinary tract status
12066	Z938 Other artificial opening status
12067	Z939 Artificial opening status, unspecified
12068	Z94 Transplanted organ and tissue status
12069	Z940 Kidney transplant status
12070	Z941 Heart transplant status
12071	Z942 Lung transplant status
12072	Z943 Heart and lungs transplant status
12073	Z944 Liver transplant status
12074	Z945 Skin transplant status
12075	Z946 Bone transplant status
12076	Z947 Corneal transplant status
12077	Z948 Other transplanted organ and tissue status
12078	Z949 Transplanted organ and tissue status, unspecified
12079	Z95 Presence of cardiac and vascular implants and grafts
12080	Z950 Presence of cardiac pacemaker
12081	Z951 Presence of aortocoronary bypass graft
12082	Z952 Presence of prosthetic heart valve
12083	Z953 Presence of xenogenic heart valve
12084	Z954 Presence of other heart-valve replacement
12085	Z955 Presence of coronary angioplasty implant and graft
12086	Z958 Presence of other cardiac and vascular implants and grafts
12087	Z959 Presence of cardiac and vascular implant and graft, unspecified
12088	Z96 Presence of other functional implants
12089	Z960 Presence of urogenital implants
12090	Z961 Presence of intraocular lens
12091	Z962 Presence of otological and audiological implants
12092	Z963 Presence of artificial larynx
12093	Z964 Presence of endocrine implants
12094	Z965 Presence of tooth-root and mandibular implants
12095	Z966 Presence of orthopaedic joint implants
12096	Z967 Presence of other bone and tendon implants
12097	Z968 Presence of other specified functional implants
12098	Z969 Presence of functional implant, unspecified
12099	Z97 Presence of other devices
12100	Z970 Presence of artificial eye
12101	Z971 Presence of artificial limb (complete)(partial)
12102	Z972 Presence of dental prosthetic device (complete)(partial)
12103	Z973 Presence of spectacles and contact lenses
12104	Z974 Presence of external hearing-aid
12105	Z975 Presence of (intrauterine) contraceptive device
12106	Z978 Presence of other specified devices
12107	Z98 Other postsurgical states
12108	Z980 Intestinal bypass and anastomosis status
12109	Z981 Arthrodesis status
12110	Z982 Presence of cerebrospinal fluid drainage device
12111	Z988 Other specified postsurgical states
12112	Z99 Dependence on enabling machines and devices, not elsewhere classified
12113	Z990 Dependence on aspirator
12114	Z991 Dependence on respirator
12115	Z992 Dependence on renal dialysis
12116	Z993 Dependence on wheelchair
12117	Z998 Dependence on other enabling machines and devices
12118	Z999 Dependence on unspecified enabling machine and device
12119	U04 Severe acute respiratory syndrome [SARS]
12120	U049 Severe acute respiratory syndrome [SARS], unspecified
12121	U80 Agent resistant to penicillin and related antibiotics
12122	U800 Penicillin resistant agent
12123	U801 Methicillin resistant agent
12124	U808 Agent resistant to other penicillin-related antibiotic
12125	U81 Agent resistant to vancomycin and related antibiotics
12126	U810 Vancomycin resistant agent
12127	U818 Agent resistant to other vancomycin-related antibiotic
12128	U88 Agent resistant to multiple antibiotics
12129	U89 Agent resistant to other and unspecified antibiotics
12130	U898 Agent resistant to other single specified antibiotic
12131	U899 Agent resistant to unspecified antibiotic
\.


--
-- Data for Name: email_internal; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.email_internal (rec_id, user_id, user_name, fullname, alert, incident, property, support) FROM stdin;
\.


--
-- Data for Name: email_notification; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.email_notification (rec_id, user_id, user_name, user_email, alert, incident, property, support) FROM stdin;
\.


--
-- Data for Name: entitlements; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.entitlements (rec_id, client_id, unit_id, unit_lname, track_id, social_security, ssi, ssd, medicaid, managed_care, medicare, medicare_id, snap, snap_id, snap_amt, public_assistance, public_amount, wages, insurance, insurance_carrier, insurance_id, alimony, pension, unemployment, workers_comp, retirement_income, child_support, other_income, wic, tanf, section_8, other_non_cash, va_disability, va_medical, staff_id, staff_name, time_insert, time_update, update_by) FROM stdin;
\.


--
-- Data for Name: functional; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.functional (rec_id, client_id, unit_id, unit_lname, track_id, staff_id, staff_name, start_date, end_date, skill_level, skill_area, skill_text, time_in, time_update, ftype) FROM stdin;
\.


--
-- Data for Name: functional_skills; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.functional_skills (rec_id, medicaid_id, skill_area) FROM stdin;
1	1	[1] AT I-1   Shows adjustment to personal growth.
2	1	[1] AT I-2   Takes some risks for personal growth.
3	1	[1] AT I-3   Accepts constructive criticism.
4	1	[1] AT I-4   Follow through on plans and committments
5	1	[1] AT I-5   Builds on recognized strengths.
6	1	[1] AT I-6   Handles own sexuality appropriately.
7	1	[1] AT I-7   Identifies decision focus.
8	1	[1] AT I-8   Realizes alternative solutions.
9	1	[1] AT I-9   Consults others.
10	1	[1] AT I-10  Selects an alternative solution and follows through.
11	1	[1] AT I-11  Tries again if results are not effective.
12	1	[1] AT I-12  Responds when spoken to.
13	1	[1] AT I-13  Knows how to handle mail, write a letter, etc.
14	1	[1] AT I-14  Initiates conversation.
15	1	[1] AT I-15  Communicates needs appropriately.
16	1	[1] AT I-16  Seeks assistance when unable to resolve problems.
17	1	[1] AT I-17  Approaches problems directly.
18	1	[1] AT I-18  Accepts responsibility for problems without external blaming.
19	1	[1] AT I-19  Accepts consequences of own behaviour.
20	1	[1] AT I-20  Asks if does not understand.
21	1	[1] AT I-21  Registers disagreements or dissatisifactions and discusses this in a controlled fashion.
22	1	[1] AT I-22  Negotiates medication issues with health care providers.
23	1	[1] AT I-23  Is able to self-advocate in areas of social services and entitlements.
24	1	[1] AT I-24  Is capable of participating in voter registration and election processes.
25	2	[2] CI II-1  Locates bank and gets there.
26	2	[2] CI II-2  Opens bank account and performs all transactions.
27	2	[2] CI II-3  Balances accounts and counts money.
28	2	[2] CI II-4  Makes special space for important papers.
29	2	[2] CI II-5  Knows name and address of funding source (SSI/SSD/PA).
30	2	[2] CI II-6  Contacts entitlements office.
31	2	[2] CI II-7  Can negotiate social service and entitlement systems.
32	2	[2] CI II-8  Can locate service agencies.
33	2	[2] CI II-9  Can locate hospitals.
34	2	[2] CI II-10  Can mail a letter either in mail box or post office.
35	2	[2] CI II-11  Can use telephone book.
36	2	[2] CI II-12  Locates and uses library if needed.
37	2	[2] CI II-13  Reads bus and train schedules, calls transit info if not sure.
38	2	[2] CI II-14  Knows how to familiarize self with a map.
39	2	[2] CI II-15  Has round trip fare.
40	2	[2] CI II-16  Can locate house of worship.
41	2	[2] CI II-17  Is capable of participating in voting process.
42	2	[2] CI II-18  Seeks out recreational activities, alone or with others.
43	2	[2] CI II-19  Participates in organized community recreational activities.
44	2	[2] CI II-20  Able to maintain peer group support.
45	2	[2] CI II-21  Able to maintain appropriate family support systems.
46	2	[2] CI II-22  Pursues educational opportunities.
47	2	[2] CI II-23  Explores future housing options.
48	2	[2] CI II-24  Understands and recognizes the importance of current placement in a transitional community residence as alternative to homelessness.
49	2	[2] CI II-25  Expresses motivation for graduation from transitional CR to a more independent living situation.
50	2	[2] CI II-26  Participates in realistic planning for discharge to a more independent living situation in the community.
51	2	[2] CI II-27  Expresses knowledge of other residential options and housing resources.
52	3	[3] RC III-1  Participates in treatment goal planning.
53	3	[3] RC III-2  Aware of areas of strengths.
54	3	[3] RC III-3  Aware of deficits and limitations.
55	3	[3] RC III-4  Recognizes need for improvement.
56	3	[3] RC III-5  Can identify and specify behaviours that impede goal setting.
57	3	[3] RC III-6  Can identify and specify behaviours that impede goal attainment.
58	3	[3] RC III-7  Understands the influence of environmental stressors.
59	3	[3] RC III-8  Can generalize newly learned behaviours to other situations outside the program structure.
60	3	[3] RC III-9  Aware of day program reasons for good attendance, routine, etc.
61	3	[3] RC III-10  Discusses specific behaviours to work on regarding rehab, activities: Attendance, task completion, travel training, socialization, ability to follow directions.
62	3	[3] RC III-11  Is able to handle day to day issues and still attend program.
63	3	[3] RC III-12  Uses skills learned in day program in apt program.
64	3	[3] RC III-13  Provides updated list of emergency contact to staff in case of unexplained absence.
65	3	[3] RC III-14  Recognizes/understands own history of unaccounted whereabouts episodes i.e. AWOL, unexplained absence, etc.
66	3	[3] RC III-15  Express understanding of need to be accountable at all times for their own whereabouts by informing staff.
67	3	[3] RC III-16  Demonstrates understanding and proper orientation to residence rules, regulations and activities.
68	3	[3] RC III-17  Demonstrates understanding of risks of unauthorized absence (AWOL).
69	3	[3] RC III-18  Able to approach staff and verbalize feelings/triggers/impulse to lease unit without staff knowledge/approval, i.e. feeling confined, cabin fever, missing home, family, friends etc.
70	3	[3] RC III-19  Participates/provides written Whereabouts accountability Plan identifying triggers/stimuli of possible AWOL.
71	3	[3] RC III-20  Orientated/understands impact of unexplained absence from residence on entire community.  (Therefore, if AWOL, client should at least call to reassure community of his/her well being) (Harm Reduction)
72	3	[3] RC III-21  Demonstrate understanding of appropriate planned discharge vs. self initiated discharge against good professional advice.
227	10	[10] SA X-3  Attends MICA programs when indicated.
73	3	[3] RC III-22  Able to account for whereabouts by submitting Residence Request for a Pass form.
74	3	[3] RC III-23  Accounts for whereabouts and well being while on a pass by calling the residence periodically.
75	3	[3] RC III-24  Knows and understands the process of self initiated discharge (as opposed to AWOL).
76	4	[4] DLS IV-1a  Food Shopping - Write a shopping list.
77	4	[4] DLS IV-1b  Food Shopping - Becomes familiar with the supermarket.
78	4	[4] DLS IV-1c  Food Shopping - Stores food properly (refrigerator, freezer, cabinet.)
79	4	[4] DLS IV-1d  Food Shopping - Rewraps meat, etc.
80	4	[4] DLS IV-2a  Food Preparation - Wears latex gloves when cooking and handling food.
81	4	[4] DLS IV-2b  Food Preparation - Washes hands before cooking.
82	4	[4] DLS IV-2c  Food Preparation - Makes a cooking space.
83	4	[4] DLS IV-2d  Food Preparation - Reads ingredients.
84	4	[4] DLS IV-2e  Food Preparation - Follow cooking directions (proper temperature, time, etc.)
85	4	[4] DLS IV-2f  Food Preparation - Washes food if necessary.
86	4	[4] DLS IV-2g  Food Preparation - Has foods ready at the same time.
87	4	[4] DLS IV-2h  Food Preparation - Stores leftovers correctly.
88	4	[4] DLS IV-2i  Food Preparation - Checks expiration dates.
89	4	[4] DLS IV-3a  Appliance Use - Knows how to light pilot.
90	4	[4] DLS IV-3b  Appliance Use - Pre-heats the oven when appropriate.
91	4	[4] DLS IV-3c  Appliance Use - Knows how to use can-opener.
92	4	[4] DLS IV-3d  Appliance Use - Knows temperature and procedure to boil, fry, saute, bake.
93	4	[4] DLS IV-4a  Appliance Care - Cleans oven and stove after use.
94	4	[4] DLS IV-4b  Appliance Care - Wipes spills from refrigerator immediately, removes spoiled, stale foods weekly or when detected.
95	4	[4] DLS IV-4c  Appliance Care - Cleans toaster when there are crumbs.
96	4	[4] DLS IV-4d  Appliance Care - Cleans can opener after use.
97	4	[4] DLS IV-5a  Kitchen - Cleans spills.
98	4	[4] DLS IV-5b  Kitchen - Wipes counter tops.
99	4	[4] DLS IV-5c  Kitchen - Sweeps daily.
100	4	[4] DLS IV-5d  Kitchen - Puts dirty plates in dish washer.
101	4	[4] DLS IV-5e  Kitchen - Empties garbage daily.
102	4	[4] DLS IV-5f  Kitchen - Organizes kitchen cabinets.
103	4	[4] DLS IV-6a  Safety - When something is broken, request a new one, learn how to fix it, or replaces it immediately.
104	4	[4] DLS IV-6b  Safety - Knows what to do if there is a fire.
105	4	[4] DLS IV-6c  Safety - Does not smoke in bed.
106	4	[4] DLS IV-6d  Safety - Checks pilot lights.
107	4	[4] DLS IV-6e  Safety - Uses pot holders.
108	4	[4] DLS IV-7a  Hygiene - Bathes daily.
109	4	[4] DLS IV-7b  Hygiene - Washes hands before meals.
110	4	[4] DLS IV-7c  Hygiene - Washes hair when dirty.
111	4	[4] DLS IV-7d  Hygiene - Combs hair, keeps it trim (hair and nails).
112	4	[4] DLS IV-7e  Hygiene - Brushes teeth morning and night.
113	4	[4] DLS IV-7f  Hygiene - Shaves daily.
114	4	[4] DLS IV-7g  Hygiene - Uses deodorant daily.
115	4	[4] DLS IV-8a  Grooming - Wears clean clothes that aren't wrinkled or soiled.
116	4	[4] DLS IV-8b  Grooming - Changes clothing.
117	4	[4] DLS IV-8c  Grooming - Matches colours.
118	4	[4] DLS IV-8d  Grooming - Dresses appropriately for the occasion.
119	4	[4] DLS IV-8e  Grooming - Dresses appropriately for climate conditions.
120	4	[4] DLS IV-8f  Grooming - Hangs and folds clothes.
121	4	[4] DLS IV-8g  Grooming - Sleeps in PJs.
122	4	[4] DLS IV-9a  Laundry - Sorts clothes.
123	4	[4] DLS IV-9b  Laundry - Uses correct amount of cleansing agents (reads directions.)
124	4	[4] DLS IV-9c  Laundry - Dries clothes at proper temperature.
125	4	[4] DLS IV-10a  Bedroom - Makes bed daily.
126	4	[4] DLS IV-10b  Bedroom - Picks up clutter daily.
127	4	[4] DLS IV-10c  Bedroom - Changes sheets weekly.
128	4	[4] DLS IV-10d  Bedroom - Dusts furniture and floor weekly.
129	4	[4] DLS IV-10e  Bedroom - Cleans - arranges dresses weekly.
130	4	[4] DLS IV-10f  Bedroom - Washes curtains as necessary.
131	4	[4] DLS IV-11a  Living Room - Sees that furniture is properly arranged.
132	4	[4] DLS IV-11b  Living Room - Keeps tables clean of rings.
133	4	[4] DLS IV-11c  Living Room - Dust window sills and baseboards weekly.
134	4	[4] DLS IV-11d  Living Room - Removes cobwebs.
135	4	[4] DLS IV-11e  Living Room - Can recognize dirt and clean it (e.g. dust on chair.)
136	4	[4] DLS IV-12a  Bath - Wash tub after using.
137	4	[4] DLS IV-12b  Bath - Clean bowl and sink.
138	4	[4] DLS IV-12c  Bath - Washes mirror.
139	4	[4] DLS IV-12d  Bath - Empties trash.
140	4	[4] DLS IV-12e  Bath - Cleans shower curtain.
141	4	[4] DLS IV-12f  Bath - Knows proper use of commode.
142	4	[4] DLS IV-12g  Bath - Can use plunger when necessary.
143	4	[4] DLS IV-13a  Budgeting - Based on income, writes budget for monthly expenses.
144	4	[4] DLS IV-13b  Budgeting - Follows budget and adjusts as necessary.
145	4	[4] DLS IV-13c  Budgeting - Budgets money for leisure activities.
146	4	[4] DLS IV-13d  Budgeting - Saves some money.
147	4	[4] DLS IV-13e  Budgeting - Pays rent on time.
148	4	[4] DLS IV-13f  Budgeting - Repays debts in a timely fashion.
149	4	[4] DLS IV-14a  Concept of Money - Saves coupons.
150	4	[4] DLS IV-14b  Concept of Money - Keeps money in wallet or purse.
151	4	[4] DLS IV-14c  Concept of Money - Carries only needed cash, secures other money.
152	4	[4] DLS IV-14d  Concept of Money - Counts change after all transactions.
228	10	[10] SA X-4  Recognizes own substance/alcohol abuse.
153	5	[5] HS V-1a  Medical-Dental Services: Physical examination once a year.
154	5	[5] HS V-1b  Medical-Dental Services: Dental examination once a year.
155	5	[5] HS V-1c  Medical-Dental Services: Arrrives on time for appointments.
156	5	[5] HS V-1d  Medical-Dental Services: Utilizes clinic or private doctor for routine medical-psychiatric care.
157	5	[5] HS V-1e  Medical-Dental Services: Is able to make clinic appointments.
158	5	[5] HS V-1f  Medical-Dental Services: Keeps regular appointments for medical counseling.
159	5	[5] HS V-2a  First Aid: Knows how to get police in an emergency.
160	5	[5] HS V-2b  First Aid: Knows the meaning of the word EMERGENCY.
161	5	[5] HS V-2c  First Aid: Knows poison control telephone numbers.
162	5	[5] HS V-2d  First Aid: Knows how to access emergency telephone numbers.
163	5	[5] HS V-3a  Special Topics: Has knowledge of safe-sex practices (AIDS).
164	5	[5] HS V-3b  Special Topics: Has knowledge of family planning resources.
165	5	[5] HS V-3c  Special Topics: Has knowledge of proper nutritional habits.
166	5	[5] HS V-3d  Special Topics: Eats at least three meals per day.
167	5	[5] HS V-3e  Special Topics: Eats fruit and vegetables daily.
168	5	[5] HS V-3f  Special Topics: Dental problems do not interfere with ability to eat.
169	5	[5] HS V-3g  Special Topics: Has knowledge of medication and food interactions.
170	5	[5] HS V-3h  Special Topics: Medical conditions do not interfere with ability to eat.
171	5	[5] HS V-3i  Special Topics: Is able to recognize significant changes in body weight.
172	5	[5] HS V-3j  Special Topics: Takes responsibility for regular and/or special dietary needs.
173	5	[5] HS V-3k  Special Topics: Visits with nutritionist once a year.
174	5	[5] HS V-4a  Tobacco Cessation: Aware of health risks associated with tobacco use.
175	5	[5] HS V-4b  Tobacco Cessation: Knows of resources to help with tobacco use cessation.
176	5	[5] HS V-4c  Tobacco Cessation: Discusses nicotine addiction treatments with physician.
177	5	[5] HS V-4d  Tobacco Cessation: Can develop a plan to reduce tobacco use.
178	6	[6] MMT VI-1a  Medication: Takes only prescribed medications.
179	6	[6] MMT VI-1b  Medication: Self medicates on time.
180	6	[6] MMT VI-1c  Medication: Gets another prescription before running out.
181	6	[6] MMT VI-1d  Medication: Fills prescriptions within one day.
182	6	[6] MMT VI-1e  Medication: Recognizes side effects.
183	6	[6] MMT VI-1f  Medication: Consults doctor regarding suspected side effects.
184	6	[6] MMT VI-1g  Medication: Leaves medication in original prescription bottle.
185	6	[6] MMT VI-1h  Medication: Knows how to dispose of discontinued medications.
186	6	[6] MMT VI-1i  Medication: Participates in Medication Management training.
187	6	[6] MMT VI-1j  Medication: Discusses medication issues with psychiatrist.
188	6	[6] MMT VI-1k  Medication: Knows contraindications of combining various medications.
189	6	[6] MMT VI-1l  Medication: Does not hoard medications and properly ingests pills at time of administration.
190	7	[7] PT VII-1  Maintains a positive relationship with children.
191	7	[7] PT VII-2  Discusses parenting problems when indicated.
192	7	[7] PT VII-3  Participates in relevant parenting skills training.
193	7	[7] PT VII-4  Discusses single parent issues - visitation - prepares for visits, activities with children.
194	7	[7] PT VII-5  Reality testing for future plans.
195	8	[8] SD VIII-1a  Concept of Time: Knows what time and day it is.
196	8	[8] SD VIII-1b  Concept of Time: Establishes time priorities.
197	8	[8] SD VIII-1c  Concept of Time: Departs with enough time to arrive on time for scheduled activities.
198	8	[8] SD VIII-2a  Time structure: Develops a schedule using a calendar.
199	8	[8] SD VIII-2b  Time structure: Plans at least one activity out of house, work or day treatment center.
200	8	[8] SD VIII-2c  Time structure: Sets own alarm clock to awaken.
201	8	[8] SD VIII-2d  Time structure: Follows through on planned activities.
202	8	[8] SD VIII-3  Is able to read classified ads.
203	8	[8] SD VIII-4  Fills out job applications.
204	8	[8] SD VIII-5  Has appropriate interview skills.
205	8	[8] SD VIII-6  Dresses appropriately to occasion.
206	8	[8] SD VIII-7  Is aware of local educational opportunities.
207	8	[8] SD VIII-8  Able to identify work related symptoms.
208	8	[8] SD VIII-9  Seeks appropriate support systems.
209	8	[8] SD VIII-10  Can write a resume.
210	9	[9] S IX-1  Major portion of non-sleep hours engaged outside bedroom in some type of social interaction.
211	9	[9] S IX-2  Seeks out leisure activities, alone or with others.
212	9	[9] S IX-3  Participates in organized social activities.
213	9	[9] S IX-4  Greets people when entering room and says goodbye when leaving.
214	9	[9] S IX-5  Adjusts to behaviour of the group or individual with whom interacting.
215	9	[9] S IX-6  Keeps abreast of current events in world, community residence and treatment center.
216	9	[9] S IX-7  Up and dressed at an appropriate time on days off and weekends.
217	9	[9] S IX-8  Compromises with others.
218	9	[9] S IX-9  Discusses personal problems and seeks resolutions.
219	9	[9] S IX-10  Has respect for self and others.
220	9	[9] S IX-11  Attends various therapeutic groups.
221	9	[9] S IX-12  Communicates and maintains a conversation.
222	9	[9] S IX-13  Displays appropriate social behaviours.
223	9	[9] S IX-14  Can initiate and maintain friendships.
224	9	[9] S IX-15  Uses language courtesies.
225	10	[10] SA X-1  Knows the dangers of combining psychotropic medication with illegal substances or alcohol.
226	10	[10] SA X-2  Attends NA/AA meeting when indicated.
229	10	[10] SA X-5  Develops support systems to maintain sobriety.
230	10	[10] SA X-6  Recognizes the importance of abstinence.
231	10	[10] SA X-7  Refrains from bringing alcohol or other substances into the CR.
232	10	[10] SA X-8  Discusses substance abuse/alcohol abuse issues with staff.
233	10	[10] SA X-9  Participates in own written relapse prevention planning (identifies triggers and preventions).
234	11	[11] SM XI-1  Can engage in relaxation.
235	11	[11] SM XI-2  Can do some exercise to reduce anxiety.
236	11	[11] SM XI-3  Discusses personal problems and seeks resolution.
237	11	[11] SM XI-4  Is able to recognize symptoms prior to decompensation.
238	11	[11] SM XI-5  Is able to approach staff to verbalize symptoms associated with illness.
239	11	[11] SM XI-6  Adheres to counseling schedule.
240	11	[11] SM XI-7  Is able to develop coping strategies to deal with internal stressors.
241	11	[11] SM XI-8  Attends to physical ailments appropriately.
242	11	[11] SM XI-9  Demonstrate awareness and able to verbally account for own history of homelessness.
243	11	[11] SM XI-10  Able to identify at least 3 risks of homelessness (psychological and physical well being).
244	11	[11] SM XI-11  Participates in own written homelessness prevention planning during admission phase (identifying triggers and preventions).
\.


--
-- Data for Name: inpatient; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.inpatient (rec_id, client_id, client, unit_id, unit_lname, track_id, staff_id, staff_name, start_date, end_date, visit_date, hospital, address, hospital_type, staff_member, staff_shift, staff_time, voluntary, eob, state_hospital, outcome, comment_text, visit_reason, admit_date, age, sex, diagnosis, escort_type, transport_type, complaint, time_insert, time_update, update_by, audit_trail) FROM stdin;
\.


--
-- Data for Name: keyword; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.keyword (rec_id, keyword, severity) FROM stdin;
2	abused	\N
3	death	\N
4	homicide	\N
5	kill	\N
6	murder	\N
7	overdose	\N
8	rape	\N
9	suicide	\N
10	arrest	\N
1	911	\N
\.


--
-- Data for Name: login; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.login (rec_id, user_id, username, logtime, ip) FROM stdin;
\.


--
-- Data for Name: maintenance_request; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.maintenance_request (rec_id, unit_id, unit_lname, staff_name, staff_email, staff_phone, request_date, requested_by, request_type, address, client_name, client_phone, client_permission, client_available, request_text, high_risk, safety_issue, director_approved, cost_center, assigned_to, request_status, request_comment) FROM stdin;
\.


--
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.message (rec_id, sender, sender_id, receiver, receiver_id, subject, body, "timestamp", read) FROM stdin;
1	Database Administrator	1	Database Administrator	1	Welcome	Welcome to SQL Advance!	2026-08-11 13:53:36.449155	f
\.


--
-- Data for Name: placement; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.placement (rec_id, client_id, staff_id, staff_name, unit_id, unit_lname, track_id, address, start_date, end_date, airs, bip, hud, input, update, update_by, destination) FROM stdin;
\.


--
-- Data for Name: progress_note; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.progress_note (rec_id, client_id, chart, unit_id, unit_lname, track_id, staff_id, staff_name, plan_id, goal, notedate, notebody, time_in, medicaid, acronym, duration, mood_affect, thought_process, motor_activity, behavior, medical_condition, substance_use, esof_name, esof_date, esof_super_name, esof_super_date) FROM stdin;
\.


--
-- Data for Name: support_plan; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.support_plan (rec_id, client_id, chart_id, unit_id, unit_lname, track_id, staff_id, staff_name, start_date, end_date, caseworker, backup, supervisor, diagnosis, needs_selfcare, needs_skills, needs_support, needs_adl, needs_focus, rights_grievances, rights_date, goal_one, goal_one_id, goal_one_header, goal_one_medicaid, goal_one_acronym, goal_one_level, goal_one_code, goal_one_status, goal_one_object, goal_one_service, goal_one_eval, goal_one_date, goal_two, goal_two_id, goal_two_header, goal_two_medicaid, goal_two_acronym, goal_two_level, goal_two_code, goal_two_status, goal_two_object, goal_two_service, goal_two_eval, goal_two_date, goal_three, goal_three_id, goal_three_header, goal_three_medicaid, goal_three_acronym, goal_three_level, goal_three_code, goal_three_status, goal_three_object, goal_three_service, goal_three_eval, goal_three_date, goal_four, goal_four_id, goal_four_header, goal_four_medicaid, goal_four_acronym, goal_four_level, goal_four_code, goal_four_status, goal_four_object, goal_four_service, goal_four_eval, goal_four_date, esof_id, esof_date, esof_name, esof_note, audit_trail, time_insert, time_update, up_date, up_date_by, client_name) FROM stdin;
\.


--
-- Data for Name: tech_support; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.tech_support (rec_id, unit_id, unit_lname, staff_name, staff_email, staff_phone, request_date, request_type, request_text, client_name, assigned_to, request_status, request_comment) FROM stdin;
\.


--
-- Data for Name: track; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.track (track_id, track_name) FROM stdin;
1	Housing
2	Case Management
3	Crisis Care
4	Vocational Rehab
5	Care Coordination
6	Homeless Services
7	Opioid Treatment
8	Administration
9	Maintenance
10	Other
\.


--
-- Data for Name: unit; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.unit (unit_id, unit_lname, track_id, supervisor, address, city, state, postcode, phone) FROM stdin;
1	Community Residence	1	\N	\N	\N	\N	\N	\N
2	Apartment Program	1	\N	\N	\N	\N	\N	\N
4	Information Technology	1	\N	\N	\N	\N	\N	\N
5	Property	9	\N	\N	\N	\N	\N	\N
3	Supported Housing	1	\N	\N	\N	\N	\N	\N
6	Administration	8	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: unitlog; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.unitlog (rec_id, unit_id, unit_lname, track_id, staff_name, logdate, subject, lognote, alert, timer) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: www-data
--

COPY public.users (user_id, username, fullname, password, email, track, trust, update, remove, phrase) FROM stdin;
1	advance	Database Administrator	pbkdf2:sha256:600000$H5UsJHGqAeGQE4GK$14f30b6eb85c2f3e8b43cac3eb467f9a6154f31b4357f43c208ff9fdd107e8a8	advance@localhost	admin	t	Yes	Yes	\N
\.


--
-- Name: accounts_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.accounts_rec_id_seq', 1, false);


--
-- Name: demographics_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.demographics_rec_id_seq', 1, false);


--
-- Name: diagnosis_dsm5_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.diagnosis_dsm5_rec_id_seq', 569, false);


--
-- Name: diagnosis_icd10_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.diagnosis_icd10_rec_id_seq', 12132, false);


--
-- Name: diagnosis_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.diagnosis_rec_id_seq', 1, false);


--
-- Name: email_internal_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.email_internal_rec_id_seq', 1, false);


--
-- Name: email_notification_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.email_notification_rec_id_seq', 1, false);


--
-- Name: entitlements_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.entitlements_rec_id_seq', 1, false);


--
-- Name: functional_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.functional_rec_id_seq', 1, false);


--
-- Name: inpatient_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.inpatient_rec_id_seq', 1, false);


--
-- Name: keyword_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.keyword_rec_id_seq', 11, false);


--
-- Name: login_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.login_user_id_seq', 6, true);


--
-- Name: maintenance_request_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.maintenance_request_rec_id_seq', 1, false);


--
-- Name: message_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.message_rec_id_seq', 2, false);


--
-- Name: mpi_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.mpi_client_id_seq', 1, false);


--
-- Name: placement_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.placement_rec_id_seq', 1, false);


--
-- Name: progress_note_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.progress_note_rec_id_seq', 1, false);


--
-- Name: support_plan_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.support_plan_rec_id_seq', 1, false);


--
-- Name: tech_support_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.tech_support_rec_id_seq', 1, false);


--
-- Name: track_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.track_track_id_seq', 10, true);


--
-- Name: unit_unit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.unit_unit_id_seq', 6, true);


--
-- Name: unitlog_rec_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.unitlog_rec_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: www-data
--

SELECT pg_catalog.setval('public.users_user_id_seq', 2, false);


--
-- PostgreSQL database dump complete
--

\unrestrict D9V1VS9h2cBRTeZs7aFMlsp8TNLhTDvX3HUxIkSRVi8XtsAnqSf97jXWRfVAqgs

