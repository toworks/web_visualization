
SET IDENTITY_INSERT [KRR-PA-GLB-SERVICE].[dbo].visualization_menu  ON;


insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 25, N'Аглоцеха №1,2,3 | Sinter plant №1,2,3', N'none', N'folder', 184, 25)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 26, N'Данные с анализатора шихты | Charge analyzer data', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fCharge+analyzer+data&amp;rs%3aCommand=Render', N'node', 25, 26)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 27, N'Тарирование вагонов агломерата | Hopper taring', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fHopperTaring&amp;rs%3aCommand=Render', N'node', 25, 27)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 28, N'Агломерат ДЦ2 | Sinter BF-9', N'none', N'folder', 184, 28)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 29, N'Аналитические системы | Analytics', N'none', N'folder', NULL, 185)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 30, N'Прослеживаемость плавки | Heat tracking', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fAMKR_YIELD_TRACKING_BY_HEAT&amp;rs%3aCommand=Render', N'node', 29, 30)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 31, N'Баланс Аглоцеха | Sinter shop balance', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fSinter+shop+balance&amp;rs%3aCommand=Render', N'node', 29, 31)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 32, N'ДЦ | BF', N'none', N'folder', 184, 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 33, N'Электроэнергия | Energy', N'none', N'folder', 150, 33)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 34, N'ТЭЦ | H&PP', N'none', N'folder', 150, 34)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 35, N'Кис. пр-во | Oxygen Plant', N'none', N'folder', 150, 35)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 36, N'КЦ | BOF', N'none', N'folder', 185, 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 37, N'КХП | Coke Plant', N'none', N'folder', NULL, 184)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 38, N'OHPC', N'none', N'folder', 185, 38)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 39, N'Отслеживание КПЭ проектов | Project KPI tracking', N'none', N'folder', 29, 39)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 40, N'Прокатный департамент | Rolling Mill', N'none', N'folder', NULL, 37)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 41, N'Простои производства | DMS', N'none', N'folder', 29, 41)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 42, N'Водоснабжение | Water supply', N'none', N'folder', 150, 42)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 43, N'Блюминг | Blooming', N'none', N'folder', 40, 43)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 44, N'Аудит', N'none', N'folder', 29, 44)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 45, N'Информация по весовым SCHENCK', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2f%u0418%u043d%u0444%u043e%u0440%u043c%u0430%u0446%u0438%u044f+%u043f%u043e+%u0432%u0435%u0441%u043e%u0432%u044b%u043c&amp;rs%3aCommand=Render', N'node', 44, 45)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 46, N'Информация о расходе раскислителей КЦ', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u0420%u0430%u0441%u0445%u043e%u0434+%u0440%u0430%u0441%u043a%u0438%u0441%u043b%u0438%u0442%u0435%u043b%u0435%u0439+%u043f%u043e+%u041a%u0426&amp;rs%3aCommand=Render', N'node', 44, 46)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 47, N'Учет работы копровой цех | DMS Scrap preparation shop', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fARMP_Scrap_Yard&amp;rs%3aCommand=Render', N'node', 41, 47)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 48, N'ARMP суточный отчет | ARMP daly report', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fARMP_TRENDS_v3&amp;rs%3aCommand=Render', N'node', 41, 48)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 49, N'Система ARMP | System ARMP', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fARMP_v3_5min&amp;rs%3aCommand=Render', N'node', 41, 49)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 50, N'Учет простоев Аглоцеха | DMS Sinter Plant', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fDMS_Sinter123&amp;rs%3aCommand=Render', N'node', 41, 50)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 51, N'Учет простоев КЦ | DMS BOF №1-6', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fDMS_K4&amp;rs%3aCommand=Render', N'node', 41, 51)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 52, N'Работа модели KLIP | Work KLIP model', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fWork_KLIP_all_heat&amp;rs%3aCommand=Render', N'node', 43, 52)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 53, N'Бл-2 Работа нагревательных колодцев | Bl-2 Work of soaking pits', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fKLIP_pits_in_work_graf&amp;rs%3aCommand=Render', N'node', 43, 53)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 54, N'Бл-2 Работа нагревательных колодцев [% загр.] | Bl-2 Work of soaking pits [% of charge]', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fKLIP_work_sereral_pits&amp;rs%3aCommand=Render', N'node', 43, 54)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 55, N'Файл статистики KLIP | File statistics KLIP', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fStatistic_KLIP&amp;rs%3aCommand=Render', N'node', 43, 55)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 56, N'1. Текущие значения КЦ | Online BOF values', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_tables_BOF&amp;rs%3aCommand=Render', N'node', 42, 56)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 57, N'2. Текущие значения ДЦ-1,2 | Online BF values', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_tables_BF&amp;rs%3aCommand=Render', N'node', 42, 57)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 58, N'3. Текущие значения газоочисток 3,4 | Online gas cleaner 3,4 values', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_tables_gas_filter_BF&amp;rs%3aCommand=Render', N'node', 42, 58)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 59, N'4. Графики значений КЦ чистый цикл | Charts of BOF clean cycle', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_charts_BOF_Clean_cycle&amp;rs%3aCommand=Render', N'node', 42, 59)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 60, N'5. Графики значений КЦ грязный цикл | Charts of BOF dirty cycle', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_charts_BOF_Dirty_cycle&amp;rs%3aCommand=Render', N'node', 42, 60)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 61, N'6. Графики значений ДЦ чистый цикл | Charts of BF clean cycle', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_charts_BF_Clean_cycle&amp;rs%3aCommand=Render', N'node', 42, 61)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 62, N'7. Графики значений газоочисток 3,4 | Charts of gas cleaner 3,4', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_charts_gas_filter_BF&amp;rs%3aCommand=Render', N'node', 42, 62)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 63, N'Протокол смены печная группа', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2frolling_heating_weight&amp;rs%3aCommand=Render', N'node', 40, 63)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 64, N'Внедрение проекта ПБГП | Labels Project tracking', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2flabels_implementation&amp;rs%3aCommand=Render', N'node', 40, 64)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 65, N'Простои ПД | DMS Rolling Mills', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fDMS_WR1_Main&amp;rs%3aCommand=Render', N'node', 40, 65)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 66, N'Производство ПД | Production Rolling Mills', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fDMS_WR1_Production&amp;rs%3aCommand=Render', N'node', 40, 66)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 67, N'Параметры ПД | Rolling Mills Params', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fRolling_Mill_Tech_Params&amp;rs%3aCommand=Render', N'node', 40, 67)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 68, N'DMS параметры ПД | DMS Rolling Mills Params', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2fRD_DMS_technological_parameters&amp;rs%3aCommand=Render', N'node', 40, 68)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 69, N'Мониторинг работы модели MPC | Work monitoring MPC model ', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fMPC_DMS&amp;rs%3aCommand=Render', N'node', 40, 69)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 70, N'Использование бирок на прокатных станах', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2flabels_count&amp;rs%3aCommand=Render', N'node', 40, 70)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 71, N'DMS аналитика работы ПД | DMS Analytics work RD', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2fRD_DMS_analytics&amp;rs%3aCommand=Render', N'node', 40, 71)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 72, N'Анализ работы системы печати бирок на МС-1', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2flabels_analysis_LSM-1&amp;rs%3aCommand=Render', N'node', 40, 72)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 73, N'Прослеживаемость металлолома | Scrap Tracking', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fScrapTrackingEffect&amp;rs%3aCommand=Render', N'node', 39, 73)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 74, N'Проект "Миксер" | Mixer Project', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fMixerProjectEffect&amp;rs%3aCommand=Render', N'node', 39, 74)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 75, N'Проект тарирования аглохопперов | Sinter wagon taring project', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fHopperTaringTrackingEffect&amp;rs%3aCommand=Render', N'node', 39, 75)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 76, N'Проект "Углерод" | Carbon Project', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fCarbonProjectEffect&amp;rs%3aCommand=Render', N'node', 39, 76)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 77, N'Паспорт плавки МНЛЗ', N'none', N'folder', 38, 77)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 78, N'Паспорт плавки УПК', N'none', N'folder', 38, 78)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 79, N'Хим. анализ стали', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u041c%u041d%u041b%u0417+(%u0410%u043d%u0430%u043b%u0438%u0437+%u0441%u0442%u0430%u043b%u0438)&amp;rs%3aCommand=Render', N'node', 77, 79)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 80, N'Химический анализ шлака', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u0423%u041f%u041a+(%u0410%u043d%u0430%u043b%u0438%u0437+%u0448%u043b%u0430%u043a%u0430)&amp;rs%3aCommand=Render', N'node', 78, 80)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 81, N'Химический анализ стали', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u0423%u041f%u041a+(%u0410%u043d%u0430%u043b%u0438%u0437+%u0441%u0442%u0430%u043b%u0438)&amp;rs%3aCommand=Render', N'node', 78, 81)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 82, N'Отчет УПК', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u0423%u041f%u041a+%u043e%u0431%u0449%u0438%u0439&amp;rs%3aCommand=Render', N'node', 78, 82)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 83, N'КЦ №1', N'none', N'folder', 37, 83)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 84, N'УПЦ', N'none', N'folder', 37, 84)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 85, N'ЦСО', N'none', N'folder', 37, 85)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 86, N'Учет энергетических параметров', N'none', N'folder', 37, 86)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 87, N'Графики', N'none', N'folder', 83, 87)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 88, N'Таблицы', N'none', N'folder', 83, 88)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 89, N'Графики', N'none', N'folder', 84, 89)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 90, N'Таблицы', N'none', N'folder', 84, 90)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 91, N'Модель шихтовки | Model Charge', N'none', N'delete', 36, 91)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 92, N'Таблицы', N'none', N'folder', 36, 92)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 93, N'Графики | Charts', N'none', N'folder', 36, 93)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 94, N'Графики среднесуточные | Charts every day', N'none', N'delete', 36, 94)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 95, N'Графики среднемесячные | Charts every month', N'none', N'delete', 36, 95)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 96, N'Графики среднегодовые | Charts every year', N'none', N'delete', 36, 96)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 97, N'Миксерное отд. | Mixer yard', N'none', N'folder', 36, 97)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 98, N'Отчет по работе АСУ ШК', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u043f%u043e+%u0440%u0430%u0431%u043e%u0442%u0435+%u0410%u0421%u0423%u0428%u041a&amp;rs%3aCommand=Render', N'node', 36, 98)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 99, N'График технологических операций', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fMixer_stages&amp;rs%3aCommand=Render', N'node', 97, 99)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 100, N'График фиксация веса чугуна', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fMixer_weighings&amp;rs%3aCommand=Render', N'node', 97, 100)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 101, N'Причины додувок', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u0420%u0430%u0441%u043f%u0440%u0435%u0434%u0435%u043b%u0435%u043d%u0438%u0435+%u0434%u043e%u0434%u0443%u0432%u043e%u043a&amp;rs%3aCommand=Render', N'node', 93, 101)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 102, N'Расход N2 на КЦ | Flow N2 on BOF', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fFlow+N2+on+BOF&amp;rs%3aCommand=Render', N'node', 93, 102)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 103, N'Суточный отчет конт. лаб. блок №1', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u043f%u043e+%u043a%u043e%u043d%u0442%u0435%u0439%u043d%u0435%u0440.%u043b%u0430%u0431.%u21161&amp;rs%3aCommand=Render', N'node', 92, 103)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 104, N'Линде газ | Linde gas', N'none', N'folder', 35, 104)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 105, N'Почасовый отчет КТК | KTK hourly report', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fOxygenPlant_KTK_hour_report&amp;rs%3aCommand=Render', N'node', 35, 105)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 106, N'Текущие параметры О2 КЦ | O2 BOF current params', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fBOF_oxygen_current&amp;rs%3aCommand=Render', N'node', 35, 106)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 107, N'Суточный расход О2 | Daily flow O2', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fOxygenPlant_daily_report&amp;rs%3aCommand=Render', N'node', 35, 107)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 108, N'Почасовой отчет О2 | Hourly report O2', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fOxygenPlant_hour_report&amp;rs%3aCommand=Render', N'node', 35, 108)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 109, N'Кислородное пр-во Онлайн | Oxygen plant online', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fOxygenPlant_online&amp;rs%3aCommand=Render', N'node', 35, 109)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 110, N'Сводный отчет Линде Газ | Summary report Linde Gas', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGasReport&amp;rs%3aCommand=Render', N'node', 104, 110)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 111, N'Линде Газ онлайн | Linde Gas online', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGas_online&amp;rs%3aCommand=Render', N'node', 104, 111)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 112, N'Линде Газ текущие параметры | Linde Gas current', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGas_current&amp;rs%3aCommand=Render', N'node', 104, 112)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 113, N'Почасовый отчет O2 | Hourly report O2', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fTEC_hour_report&amp;rs%3aCommand=Render', N'node', 34, 113)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 114, N'СПЦ-1', N'none', N'folder', 33, 114)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 115, N'Таблицы | Tables', N'none', N'folder', 32, 115)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 116, N'Графики | Charts', N'none', N'folder', 32, 116)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 117, N'Модели | Model', N'none', N'folder', 32, 117)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 118, N'Mothus. ThermocouplesData BF-6', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fMotus_BF-6_temperature&amp;rs%3aCommand=Render', N'node', 32, 118)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 119, N'Интервал перемещения ковшей между АДД и СД', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2f%u0418%u043d%u0444%u043e%u0440%u043c%u0430%u0446%u0438%u044f+%u043f%u043e+%u0434%u043e%u043c%u0435%u043d%u043d%u044b%u043c+%u043a%u043e%u0432%u0448%u0430%u043c+%u0441+%u0447%u0443%u0433%u0443%u043d%u043e%u043c&amp;rs%3aCommand=Render', N'node', 32, 119)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 120, N'BF-8. Delay between tapping and weighing ladles according to taps', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF-8_delta_time_tap_graf&amp;rs%3aCommand=Render', N'node', 32, 120)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 121, N'BF-8. Delay between tapping and weighing ladles', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF-8_delta_time_graf&amp;rs%3aCommand=Render', N'node', 32, 121)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 122, N'BF parameters', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_parameters&amp;rs%3aCommand=Render', N'node', 32, 122)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 123, N'BF tap Si monitoring', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF+tap+Si+monitoring&amp;rs%3aCommand=Render', N'node', 32, 123)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 124, N'Ежесуточный рапорт по ДП | Daily report of BF', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fEveryday+report+BF+graf&rs:Command=Render', N'node', 32, 124)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 125, N'Технологические параметры ДЦ-1,2 | BF shop technological parameters', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_Tech_Params_matrix&amp;rs%3aCommand=Render', N'node', 32, 125)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 126, N'Motus ДП-8 | Motus BF-6', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fMotus&amp;rs%3aCommand=Render', N'node', 117, 126)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 127, N'Уровень засыпи печи | BF burden level', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_burden+level&amp;rs%3aCommand=Render', N'node', 116, 127)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 128, N'Ежесуточный отчет по ДП | Everyday report of BF', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fEveryday+report+BF&amp;rs%3aCommand=Render', N'node', 116, 128)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 129, N'Диспетчепский отчет | Dispatcher report', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fDispatcher_report_English&amp;rs%3aCommand=Render', N'node', 116, 129)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 130, N'ПУТ ДП-9 | Coal ingection BF-9', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF9_coal_ingection&amp;rs%3aCommand=Render', N'node', 116, 130)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 131, N'Расход холодного дутья | Cold blast flow', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_Cold+blast+flow&amp;rs%3aCommand=Render', N'node', 116, 131)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 132, N'Теоретическая температура горения по ДП | Theoretical burn temperature of BF', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fTheoretical+burn+temperature+BF-9&amp;rs%3aCommand=Render', N'node', 116, 132)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 133, N'Выгрузка материалов ДП', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_load_material&amp;rs%3aCommand=Render', N'node', 115, 133)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 134, N'DMS Баланс времени работы | DMS Working time balance', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fDevelop%2fRolling%2fRD_DMS_analytic_TimeOfWorking&rs:Command=Render', N'node', 40, 134)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 135, N'Отчет по ферросплавам | Report ferroalloys', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2freport_ferroalloys&rs:Command=Render', N'node', 44, 135)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 136, N'Учет простоев КЦ-3 стадии | DMS BOF-3 stages', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fdms_steelmaking_stages&rs:Command=Render', N'node', 41, 136)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 137, N'ARMP данные передаваемые в SAP | ARMP data transferred to SAP', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2fRD_DMS_compraison_sending_data_for_SAP_between_product_test_servers&rs:Command=Render', N'node', 41, 137)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 138, N'Почасовый отчет по пару | Hourly report steam', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGas_steam_hour_report&rs:Command=Render', N'node', 104, 138)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 139, N'Отчет МНЛЗ', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/?%2fProductivity%2fSteelmaking%2f%d0%9e%d1%82%d1%87%d0%b5%d1%82+%d0%9c%d0%9d%d0%9b%d0%97+%d0%be%d0%b1%d1%89%d0%b8%d0%b9&rs:Command=Render', N'node', 77, 139)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 140, N'Расход О2 на плавку КЦ | Flow O2 for heat BOF', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fBOF_Flow_O2_for+heat&rs:Command=Render', N'node', 93, 140)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 141, N'Кристаллизатор/Гильза', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fMNLZ_Kristallizator_Gilza&rs:Command=Render', N'node', 77, 141)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 142, N'Технологические параметры средние за час', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fTechnological+parameters+average_per_hour&rs:Command=Render', N'node', 115, 142)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 143, N'Сплавы и добавки на порцию', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fUPK_SplavDobav_porc&rs:Command=Render', N'node', 78, 143)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 144, N'Сплавы и добавки общие', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fUPK_SplavDobav_All&rs:Command=Render', N'node', 78, 144)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 145, N'Продувка плавок с несоответствиями по О2', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%d0%9a%d0%a6_%d0%9f%d0%bb%d0%b0%d0%b2%d0%ba%d0%b8+%d1%81+%d0%bd%d0%b5%d1%81%d0%be%d0%be%d1%82%d0%b2%d0%b5%d1%82%d1%81%d1%82%d0%b2%d0%b8%d0%b5%d0%bc+%d0%bf%d0%be+%d0%9e2&rs:Command=Render', N'node', 92, 145)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 146, N'Параметры нагревательных печей прокатных станов', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2froling_parameters_monitoring&rs:Command=Render', N'node', 40, 146)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 147, N'КРП КЦ текущие параметры | BOF ODU current', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGas_KRP_current&rs:Command=Render', N'node', 35, 147)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 148, N'Кислород К1-6', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fOxygen_BOF1-6&rs:Command=Render', N'node', 93, 148)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 149, N'Кислород К1-6', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fOxygen_BOF1-6&rs:Command=Render', N'node', 35, 149)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 150, N'Энергетический департамент | Energy Department', N'none', N'folder', NULL, 150)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 151, N'Dashboard O2', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fDashboard_O2&rs:Command=Render', N'node', 150, 151)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 159, N'Agbor', N'none', N'folder', 35, 159)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 160, N'Почасовой балансовый отчет по О2', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fgcHourBalanceOxy&rs:Command=Render', N'node', 159, 160)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 161, N'Почасовой отчет по ПРВ', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fgcHourReport&rs:Command=Render', N'node', 159, 161)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 162, N'Расход холодного дутья ДП | Cold blast flow', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_Cold+blast+flow&amp;rs%3aCommand=Render', N'node', 150, 162)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 163, N'Параметры ПГЦ', N'http://krr-fas41/dpa_reports/(S(mhmynjknboyqu1ohainnp0eq))/Account/ed/DefaultReport.aspx?Owner=27', N'node', 150, 163)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 164, N'Почасовый отчет по пару | Hourly report steam', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGas_steam_hour_report&rs:Command=Render', N'node', 104, 164)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 165, N'Водоснабжение | Water supply', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fWater_supply_tables_for_ED&rs:Command=Render', N'node', 150, 165)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 166, N'Кислород К1-6 | Oxygen BOF1-6', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fOxygen_BOF1-6&rs:Command=Render', N'node', 150, 166)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 167, N'Газопроницаемость | Gas permeability', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Gas_permeability&rs:Command=Render', N'node', 116, 167)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 168, N'Почасовый отчет по сж. воздуху | Hourly air balance', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fgcHourBalanceAir&rs:Command=Render', N'node', 159, 168)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 169, N'Почасовый отчет по азоту | Hourly nitrogen balance', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fgcHourBalanceNitro&rs:Command=Render', N'node', 159, 169)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 170, N'Текущие показания по сж. воздуху | Current air parameters', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fgcCurrAir&rs:Command=Render', N'node', 159, 170)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 171, N'Перешихтовки | Burden change', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_shihta_total&rs:Command=Render', N'node', 115, 171)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 173, N'Распределение О2 | O2 distribution', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fgcCurrOxy&rs:Command=Render', N'node', 159, 173)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 174, N'Химический анализ чугуна и шлака | Chemical analysis HM and slag', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_chemical_analysis_HM_and_slag&rs:Command=Render', N'node', 115, 174)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 175, N'Температура колошникового газа в газоходах ДП-9 | BF9_Top gas temperature in gas pipe', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF9_Top+gas+temperature+in+gas+pipe&rs:Command=Render', N'node', 116, 175)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 176, N'Энергетические показатели | Energy characteristics', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_energy_characteristics&rs:Command=Render', N'node', 115, 176)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 177, N'Температура горячего дутья | Temperature hot blast', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Temperature_hot_blast&rs:Command=Render', N'node', 116, 177)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 178, N'Температура колошникового газа | Top gas temperature', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Temperature_top_gas&rs:Command=Render', N'node', 116, 178)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 179, N'Температура чугуна | Temperature HM', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Temperature_HM&rs:Command=Render', N'node', 116, 179)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 180, N'Водоснабжение ДП | BF water supply', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_water+supply&rs:Command=Render', N'node', 116, 180)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 181, N'Давление колошникового газа | Top gas pressure', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Pressure_top_gas&rs:Command=Render', N'node', 116, 181)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 182, N'Давление горячего дутья | Hot Blow pressure', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Pressure_HotBlow&rs:Command=Render', N'node', 116, 182)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 183, N'Перепад давления | Delta pressure', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Delta_Pressure&rs:Command=Render', N'node', 116, 183)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 184, N'Аглодоменный департамент | Ironmaking Department', N'none', N'folder', NULL, 29)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 185, N'Сталеплавильный департамент | Steelmaking Department', N'none', N'folder', NULL, 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 186, N'Расход колошникового газа на выходе | Top gas flow at the out', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Flow+top+gas_out&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 187, N'Расход природного газа | Natural gas flow', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Flow_natural+gas&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 188, N'Расход пара в дутье | Steam blow flow', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Flow_steam_blow&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 189, N'Процентное содержание О2 в дутье | Percent O2 in blow', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Percent_O2+in+blow&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 190, N'Скорость дутья | Speed blast', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Speed_blast&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 191, N'Колошниковый газ | Top gas', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Top+gas&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 192, N'Химический анализ чугуна | Chemical analises HM', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_chem_analysis_HM&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 193, N'Химический анализ шлака | Chemical analises slag', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_chem_analysis_slag&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 194, N'Расход кислорода | Flow oxygen', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_Flow+O2&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 195, N'Температура периферии печи | Temperature periphery of BF', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_temperature+of+the+periphery&rs:Command=Render', N'node', 116, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 196, N'Распределение технол.О2 | Technol. O2 distribution', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fgcCurrOxy_technologic&rs:Command=Render', N'node', 159, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 197, N'Прокатный департамент | Rolling Mill', N'none', N'folder', 29, NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( 198, N'Система Totus | System Totus', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2ftotus_reports&amp;rs%3aCommand=Render', N'node', 197, NULL)


SET IDENTITY_INSERT [KRR-PA-GLB-SERVICE].[dbo].visualization_menu  OFF;