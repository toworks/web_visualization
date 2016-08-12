
SET IDENTITY_INSERT [KRR-PA-GLB-SERVICE].[dbo].visualization_menu  ON;


insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 25, N'Аглоцеха №1,2,3 | Sinter plant №1,2,3', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 28, N'Агломерат ДЦ2 | Sinter BF-9', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 29, N'Аналитические системы | Analytics', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 32, N'ДЦ | BF', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 33, N'Электроэнергия | Energy', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 34, N'ТЭЦ | H&PP', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 35, N'Кис. пр-во | Oxygen Plant', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 36, N'КЦ | BOF', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 37, N'КХП | Coke Plant', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 38, N'OHPC', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 39, N'Отслеживание КПЭ проектов | Project KPI tracking', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 40, N'Прокатный департамент | Rolling Mill', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 41, N'Простои производства | DMS', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 42, N'Водоснабжение | Water supply', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 43, N'Блюминг | Blooming', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 44, N'Аудит', N'none', N'folder', NULL)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 26, N'Данные с анализатора шихты | Charge analyzer data', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fCharge+analyzer+data&amp;rs%3aCommand=Render', N'node', 25)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 27, N'Тарирование вагонов агломерата | Hopper taring', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fHopperTaring&amp;rs%3aCommand=Render', N'node', 25)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 30, N'Прослеживаемость плавки | Heat tracking', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fAMKR_YIELD_TRACKING_BY_HEAT&amp;rs%3aCommand=Render', N'node', 29)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 31, N'Баланс Аглоцеха | Sinter shop balance', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fSinter+shop+balance&amp;rs%3aCommand=Render', N'node', 29)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 115, N'Таблицы | Tables', N'none', N'folder', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 116, N'Графики | Charts', N'none', N'folder', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 117, N'Модели | Model', N'none', N'folder', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 118, N'Mothus. ThermocouplesData BF-6', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fMotus_BF-6_temperature&amp;rs%3aCommand=Render', N'node', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 119, N'Интервал перемещения ковшей между АДД и СД', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2f%u0418%u043d%u0444%u043e%u0440%u043c%u0430%u0446%u0438%u044f+%u043f%u043e+%u0434%u043e%u043c%u0435%u043d%u043d%u044b%u043c+%u043a%u043e%u0432%u0448%u0430%u043c+%u0441+%u0447%u0443%u0433%u0443%u043d%u043e%u043c&amp;rs%3aCommand=Render', N'node', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 120, N'BF-8. Delay between tapping and weighing ladles according to taps', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF-8_delta_time_tap_graf&amp;rs%3aCommand=Render', N'node', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 121, N'BF-8. Delay between tapping and weighing ladles', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF-8_delta_time_graf&amp;rs%3aCommand=Render', N'node', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 122, N'BF parameters', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_parameters&amp;rs%3aCommand=Render', N'node', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 123, N'BF tap Si monitoring', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF+tap+Si+monitoring&amp;rs%3aCommand=Render', N'node', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 124, N'Ежесуточный рапорт по ДП | Daily report of BF', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fEveryday+report+BF+graf&amp;rs%3aCommand=Render', N'node', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 125, N'Технологические параметры ДЦ-1,2 | BF shop technological parameters', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_Tech_Params_matrix&amp;rs%3aCommand=Render', N'node', 32)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 114, N'СПЦ-1', N'none', N'folder', 33)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 113, N'Почасовый отчет O2 | Hourly report O2', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fTEC_hour_report&amp;rs%3aCommand=Render', N'node', 34)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 104, N'Линде газ | Linde gas', N'none', N'folder', 35)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 105, N'Почасовый отчет КТК | KTK hourly report', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fOxygenPlant_KTK_hour_report&amp;rs%3aCommand=Render', N'node', 35)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 106, N'Текущие параметры О2 КЦ | O2 BOF current params', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fBOF_oxygen_current&amp;rs%3aCommand=Render', N'node', 35)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 107, N'Суточный расход О2 | Daily flow O2', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fOxygenPlant_daily_report&amp;rs%3aCommand=Render', N'node', 35)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 108, N'Почасовой отчет О2 | Hourly report O2', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fOxygenPlant_hour_report&amp;rs%3aCommand=Render', N'node', 35)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 109, N'Кислородное пр-во Онлайн | Oxygen plant online', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fOxygenPlant_online&amp;rs%3aCommand=Render', N'node', 35)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 91, N'Модель шихтовки | Model Charge', N'none', N'folder', 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 92, N'Таблицы', N'none', N'folder', 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 93, N'Графики | Charts', N'none', N'folder', 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 94, N'Графики среднесуточные | Charts every day', N'none', N'folder', 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 95, N'Графики среднемесячные | Charts every month', N'none', N'folder', 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 96, N'Графики среднегобовые | Charts every year', N'none', N'folder', 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 97, N'Миксерное отд. | Mixer yard', N'none', N'folder', 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 98, N'Отчет по работе АСУ ШК', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u043f%u043e+%u0440%u0430%u0431%u043e%u0442%u0435+%u0410%u0421%u0423%u0428%u041a&amp;rs%3aCommand=Render', N'node', 36)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 83, N'КЦ №1', N'none', N'folder', 37)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 84, N'УПЦ', N'none', N'folder', 37)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 85, N'ЦСО', N'none', N'folder', 37)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 86, N'Учет энергетических параметров', N'none', N'folder', 37)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 77, N'Паспорт плавки МНЛЗ', N'none', N'folder', 38)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 78, N'Паспорт плавки УПК', N'none', N'folder', 38)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 73, N'Прослеживаемость металлолома | Scrap Tracking', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fScrapTrackingEffect&amp;rs%3aCommand=Render', N'node', 39)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 74, N'Проект "Миксер" | Mixer Project', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fMixerProjectEffect&amp;rs%3aCommand=Render', N'node', 39)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 75, N'Проект тарирования аглохопперов | Sinter wagon taring project', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fHopperTaringTrackingEffect&amp;rs%3aCommand=Render', N'node', 39)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 76, N'Проект "Углерод" | Carbon Project', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fCarbonProjectEffect&amp;rs%3aCommand=Render', N'node', 39)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 63, N'Протокол смены печная группа', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2frolling_heating_weight&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 64, N'Внедрение проекта ПБГП | Labels Project tracking', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2flabels_implementation&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 65, N'Простои ПД | DMS Rolling Mills', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fDMS_WR1_Main&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 66, N'Производство ПД | Production Rolling Mills', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fDMS_WR1_Production&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 67, N'Параметры ПД | Rolling Mills Params', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fRolling_Mill_Tech_Params&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 68, N'DMS параметры ПД | DMS Rolling Mills Params', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2fRD_DMS_technological_parameters&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 69, N'Мониторинг работы модели MPC МС-5 (левая сторона) | Work monitoring MPC model at LSM-5 (left side)', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fHot+Rolling%2fMPC_DMS&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 70, N'Использование бирок на прокатных станах', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2flabels_count&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 71, N'DMS аналитика работы ПД | DMS Analytics work RD', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2fRD_DMS_analytics&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 72, N'Анализ работы системы печати бирок на МС-1', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2flabels_analysis_LSM-1&amp;rs%3aCommand=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 134, N'DMS Баланс времени работы | DMS Working time balance', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fDevelop%2fRolling%2fRD_DMS_analytic_TimeOfWorking&rs:Command=Render', N'node', 40)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 47, N'Учет работы копровой цех | DMS Scrap preparation shop', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fARMP_Scrap_Yard&amp;rs%3aCommand=Render', N'node', 41)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 48, N'ARMP суточный отчет | ARMP daly report', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fARMP_TRENDS&amp;rs%3aCommand=Render', N'node', 41)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 49, N'Система ARMP | System ARMP', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fARMP_v1&amp;rs%3aCommand=Render', N'node', 41)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 50, N'Учет простоев Аглоцеха | DMS Sinter Plant', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fDMS_Sinter123&amp;rs%3aCommand=Render', N'node', 41)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 51, N'Учет простоев КЦ | DMS BOF №1-6', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fDMS_K4&amp;rs%3aCommand=Render', N'node', 41)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 56, N'1. Текущие значения КЦ | Online BOF values', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_tables_BOF&amp;rs%3aCommand=Render', N'node', 42)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 57, N'2. Текущие значения ДЦ-1,2 | Online BF values', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_tables_BF&amp;rs%3aCommand=Render', N'node', 42)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 58, N'3. Текущие значения газоочисток 3,4 | Online gas cleaner 3,4 values', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_tables_gas_filter_BF&amp;rs%3aCommand=Render', N'node', 42)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 59, N'4. Графики значений КЦ чистый цикл | Charts of BOF clean cycle', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_charts_BOF_Clean_cycle&amp;rs%3aCommand=Render', N'node', 42)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 60, N'5. Графики значений КЦ грязный цикл | Charts of BOF dirty cycle', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_charts_BOF_Dirty_cycle&amp;rs%3aCommand=Render', N'node', 42)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 61, N'6. Графики значений ДЦ чистый цикл | Charts of BF clean cycle', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_charts_BF_Clean_cycle&amp;rs%3aCommand=Render', N'node', 42)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 62, N'7. Графики значений газоочисток 3,4 | Charts of gas cleaner 3,4', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fWater+supply%2fWater_supply_charts_gas_filter_BF&amp;rs%3aCommand=Render', N'node', 42)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 52, N'Работа модели KLIP | Work KLIP model', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fWork_KLIP_all_heat&amp;rs%3aCommand=Render', N'node', 43)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 53, N'Бл-2 Работа нагревательных колодцев | Bl-2 Work of soaking pits', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fKLIP_pits_in_work_graf&amp;rs%3aCommand=Render', N'node', 43)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 54, N'Бл-2 Работа нагревательных колодцев [% загр.] | Bl-2 Work of soaking pits [% of charge]', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fKLIP_work_sereral_pits&amp;rs%3aCommand=Render', N'node', 43)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 55, N'Файл статистики KLIP | File statistics KLIP', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fStatistic_KLIP&amp;rs%3aCommand=Render', N'node', 43)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 45, N'Информация по весовым SCHENCK', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2f%u0418%u043d%u0444%u043e%u0440%u043c%u0430%u0446%u0438%u044f+%u043f%u043e+%u0432%u0435%u0441%u043e%u0432%u044b%u043c&amp;rs%3aCommand=Render', N'node', 44)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 46, N'Информация о расходе раскислителей КЦ', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u0420%u0430%u0441%u0445%u043e%u0434+%u0440%u0430%u0441%u043a%u0438%u0441%u043b%u0438%u0442%u0435%u043b%u0435%u0439+%u043f%u043e+%u041a%u0426&amp;rs%3aCommand=Render', N'node', 44)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 79, N'Хим. анализ стали', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u041c%u041d%u041b%u0417+(%u0410%u043d%u0430%u043b%u0438%u0437+%u0441%u0442%u0430%u043b%u0438)&amp;rs%3aCommand=Render', N'node', 77)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 80, N'Химический анализ шлака', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u0423%u041f%u041a+(%u0410%u043d%u0430%u043b%u0438%u0437+%u0448%u043b%u0430%u043a%u0430)&amp;rs%3aCommand=Render', N'node', 78)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 81, N'Химический анализ стали', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u0423%u041f%u041a+(%u0410%u043d%u0430%u043b%u0438%u0437+%u0441%u0442%u0430%u043b%u0438)&amp;rs%3aCommand=Render', N'node', 78)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 82, N'Отчет УПК', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u0423%u041f%u041a+%u043e%u0431%u0449%u0438%u0439&amp;rs%3aCommand=Render', N'node', 78)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 87, N'Графики', N'none', N'folder', 83)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 88, N'Таблицы', N'none', N'folder', 83)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 89, N'Графики', N'none', N'folder', 84)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 90, N'Таблицы', N'none', N'folder', 84)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 103, N'Суточный отчет конт. лаб. блок №1', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u041e%u0442%u0447%u0435%u0442+%u043f%u043e+%u043a%u043e%u043d%u0442%u0435%u0439%u043d%u0435%u0440.%u043b%u0430%u0431.%u21161&amp;rs%3aCommand=Render', N'node', 92)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 101, N'Причины додувок', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2f%u0420%u0430%u0441%u043f%u0440%u0435%u0434%u0435%u043b%u0435%u043d%u0438%u0435+%u0434%u043e%u0434%u0443%u0432%u043e%u043a&amp;rs%3aCommand=Render', N'node', 93)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 102, N'Расход N2 на КЦ | Flow N2 on BOF', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fFlow+N2+on+BOF&amp;rs%3aCommand=Render', N'node', 93)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 99, N'График технологических операций', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fMixer_stages&amp;rs%3aCommand=Render', N'node', 97)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 100, N'График фиксация веса чугуна', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSteelmaking%2fMixer_weighings&amp;rs%3aCommand=Render', N'node', 97)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 110, N'Сводный отчет Линде Газ | Summary report Linde Gas', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGasReport&amp;rs%3aCommand=Render', N'node', 104)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 111, N'Линде Газ онлайн | Linde Gas online', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGas_online&amp;rs%3aCommand=Render', N'node', 104)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 112, N'Линде Газ текущие параметры | Linde Gas current', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fEnergy%2fLindeGas_current&amp;rs%3aCommand=Render', N'node', 104)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 133, N'Выгрузка материалов ДП', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fBF_load_material&amp;rs%3aCommand=Render', N'node', 115)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 127, N'Уровень засыпи печи | BF burden level', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_burden+level&amp;rs%3aCommand=Render', N'node', 116)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 128, N'Ежесуточный отчет по ДП | Everyday report of BF', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fEveryday+report+BF&amp;rs%3aCommand=Render', N'node', 116)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 129, N'Диспетчепский отчет | Dispatcher report', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fDispatcher_report_English&amp;rs%3aCommand=Render', N'node', 116)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 130, N'ПУТ ДП-9 | Coal ingection BF-9', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF9_coal_ingection&amp;rs%3aCommand=Render', N'node', 116)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 131, N'Расход холодного дутья | Cold blast flow', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fBF_Cold+blast+flow&amp;rs%3aCommand=Render', N'node', 116)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 132, N'Теоретическая температура горения по ДП | Theoretical burn temperature of BF', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fTheoretical+burn+temperature+BF-9&amp;rs%3aCommand=Render', N'node', 116)
insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( 126, N'Motus ДП-8 | Motus BF-6', N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fSinter+and+Blast%2fMotus&amp;rs%3aCommand=Render', N'node', 117)


SET IDENTITY_INSERT [KRR-PA-GLB-SERVICE].[dbo].visualization_menu  OFF;
