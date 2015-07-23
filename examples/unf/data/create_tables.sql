USE md;
CREATE TABLE IF NOT EXISTS refs (ref CHAR);
CREATE TABLE IF NOT EXISTS `cacc_Управленческий` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `account_type` CHAR, `СпособРаспределения` CHAR, `СчетЗакрытия` CHAR, `АналитикаПрочихДоходовИРасходов` CHAR, `parent` CHAR, `ts_СчетаУчета` JSON);
CREATE TABLE IF NOT EXISTS `cch_properties` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Заголовок` CHAR, `НаборСвойств` CHAR, `ЭтоДополнительноеСведение` BOOLEAN, `ЗаполнятьОбязательно` BOOLEAN, `МногострочноеПолеВвода` INT, `ДополнительныеЗначенияИспользуются` BOOLEAN, `ВладелецДополнительныхЗначений` CHAR, `ДополнительныеЗначенияСВесом` BOOLEAN, `ЗаголовокФормыЗначения` CHAR, `ЗаголовокФормыВыбораЗначения` CHAR, `ФорматСвойства` CHAR, `Комментарий` CHAR, `Подсказка` CHAR, `УдалитьСклоненияПредмета` CHAR, `type` JSON);
CREATE TABLE IF NOT EXISTS `cch_АналитикаПрочихДоходовИРасходов` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN);
CREATE TABLE IF NOT EXISTS `enm_ЮрФизЛицо` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыЭлементовВерсииЭД` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыЭД` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыХраненияФайлов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыФайловДляВстроенногоРедактора` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыТекстовЭлектронныхПисем` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыСчетов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыСуммГрафикаКредитовИЗаймов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыСтруктурныхЕдиниц` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыСтрокСоставаСпецификации` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыСравненияЗначенийСкидокНаценок` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыСобытий` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыРесурсов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыРасчетов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыПроблемОбменаДанными` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыПриемаПередачиТоваров` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыПользователей` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыПодключаемогоОборудования` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыОтчетов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыОтветственныхЛиц` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыНоменклатуры` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыНачисленийИУдержаний` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыНалогообложенияНДС` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыКонтактнойИнформации` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыКомиссииКредитовИЗаймов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыКодовКарт` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыКассККМ` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыКарт` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыИнформационныхБаз` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыЗначенийКатегорийНовостей` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыЗанятости` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыДиаграмм` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыДенежныхСредств` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыДвиженийЗапасов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыДанныхКэшаПрограммныхИнтерфейсов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыГрафикаРаботы` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыГраницПериода` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыВнеоборотныхАктивов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ТипыВерсийОбъекта` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_СтатусыПланируемыхПлатежей` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_СтатусыЗаказов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_СпособыУстановкиКурсаВалюты` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ПорядкиОкругления` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ПолФизическогоЛица` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ПоложениеРеквизитаНаФорме` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ОбластиДоступаGoogle` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ДниНедели` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ДебетКредит` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ДаНет` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВходящееИсходящееСобытие` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыЭД` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыТранспортныхСредств` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыТранспортаСообщенийОбмена` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыСкидокВДисконтныхКартах` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыПравилДляОбменаДанными` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыПлатежейПогашенияКредитаИЗайма` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыПериодовРМК` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыПериодовМонитораРуководителя` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыПериодовДляНакопительныхСкидок` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыПеречисленийВБюджет` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийЭквайринга` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийЭД` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийСчетФактураПолученный` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийСчетФактура` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийСборкаЗапасов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийРасходСоСчета` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийРасходнаяНакладная` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийРасходИзКассы` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийПриходнаяНакладная` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийПоступлениеНаСчет` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийПоступлениеВКассу` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийПлатежноеПоручение` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийПлатежнаяВедомость` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийПеремещениеПоЯчейкам` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийПеремещениеЗапасов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийНачисленияПоКредитамИЗаймам` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийНачислениеНалогов` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийКадровоеПеремещение` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийЗаказПоставщику` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийЗаказПокупателя` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийЗаказНаПроизводство` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийЗаданиеНаРаботу` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыОперацийВзаимозачет` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыНазначенияДатЗапрета` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыЛицензийАлкогольнойПродукции` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыКаналовСвязи` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыДополнительныхОтчетовИОбработок` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыДоговоровКредитаИЗайма` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыДоговоров` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыДнейПроизводственногоКалендаря` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `enm_ВидыДеятельностиОрганизации` (ref CHAR PRIMARY KEY NOT NULL, sequence INT, synonym CHAR);
CREATE TABLE IF NOT EXISTS `doc_РасходнаяНакладная` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, posted BOOLEAN, date Date, number_doc CHAR, `Автомобиль` CHAR, `Автор` CHAR, `АдресДоставки` CHAR, `БанковскийСчет` CHAR, `БанковскийСчетКонтрагента` CHAR, `БанковскийСчетПеревозчика` CHAR, `ВалютаДокумента` CHAR, `ВидОперации` CHAR, `ВидСкидкиНаценки` CHAR, `ВидЦен` CHAR, `Водитель` CHAR, `ГлавныйБухгалтер` CHAR, `Грузоотправитель` CHAR, `Грузополучатель` CHAR, `ДатаВходящегоДокумента` Date, `ДоверенностьВыдана` CHAR, `ДоверенностьДата` Date, `ДоверенностьЛицо` CHAR, `ДоверенностьНомер` CHAR, `Договор` CHAR, `ДокументОснование` CHAR, `Заказ` CHAR, `Комментарий` CHAR, `Контрагент` CHAR, `Кратность` INT, `Курс` FLOAT, `НалогообложениеНДС` CHAR, `НДСВключатьВСтоимость` BOOLEAN, `НомерВходящегоДокумента` CHAR, `Организация` CHAR, `ОснованиеПечати` CHAR, `Ответственный` CHAR, `Отпустил` CHAR, `ОтпустилДолжность` CHAR, `Перевозчик` CHAR, `Подразделение` CHAR, `ПоложениеЗаказаПокупателя` CHAR, `Прицеп` CHAR, `Руководитель` CHAR, `РуководительДолжность` CHAR, `СрокДоставки` Date, `СтруктурнаяЕдиница` CHAR, `СуммаВключаетНДС` BOOLEAN, `СуммаДокумента` FLOAT, `Ячейка` CHAR, `ДисконтнаяКарта` CHAR, `ПроцентСкидкиПоДисконтнойКарте` FLOAT, `СкидкиРассчитаны` BOOLEAN, `УдалитьВидЭлектронногоДокумента` CHAR, `ВидЭлектронногоДокумента` CHAR, `ts_Запасы` JSON, `ts_Предоплата` JSON, `ts_extra_fields` JSON, `ts_СкидкиНаценки` JSON);
CREATE TABLE IF NOT EXISTS `doc_ЗаказПокупателя` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, posted BOOLEAN, date Date, number_doc CHAR, `Автор` CHAR, `БанковскийСчет` CHAR, `ВалютаДокумента` CHAR, `ВидОперации` CHAR, `ВидРабот` CHAR, `ВидСкидкиНаценки` CHAR, `ВидЦен` CHAR, `ДатаИзменения` Date, `ДатаОтгрузки` Date, `Договор` CHAR, `Закрыт` BOOLEAN, `ЗапланироватьОплату` BOOLEAN, `Касса` CHAR, `Комментарий` CHAR, `Контрагент` CHAR, `Кратность` INT, `Курс` FLOAT, `НДСВключатьВСтоимость` BOOLEAN, `Организация` CHAR, `Ответственный` CHAR, `Проект` CHAR, `Событие` CHAR, `СостояниеЗаказа` CHAR, `Старт` Date, `СтруктурнаяЕдиницаПродажи` CHAR, `СтруктурнаяЕдиницаРезерв` CHAR, `НалогообложениеНДС` CHAR, `СуммаВключаетНДС` BOOLEAN, `СуммаДокумента` FLOAT, `ТипДенежныхСредств` CHAR, `Финиш` Date, `Ячейка` CHAR, `ПоложениеВидаРабот` CHAR, `ПоложениеДатыОтгрузки` CHAR, `ИспользоватьТовары` BOOLEAN, `ИспользоватьМатериалыЗаказчика` BOOLEAN, `ИспользоватьМатериалы` BOOLEAN, `ИспользоватьЗарплатаИсполнителей` BOOLEAN, `СписокНоменклатуры` CHAR, `СписокРесурсов` CHAR, `НомерВходящегоДокумента` CHAR, `ДатаВходящегоДокумента` Date, `ДисконтнаяКарта` CHAR, `ПроцентСкидкиПоДисконтнойКарте` FLOAT, `СкидкиРассчитаны` BOOLEAN, `ts_Запасы` JSON, `ts_МатериалыЗаказчика` JSON, `ts_ПлатежныйКалендарь` JSON, `ts_Работы` JSON, `ts_Исполнители` JSON, `ts_Материалы` JSON, `ts_РесурсыПредприятия` JSON, `ts_Предоплата` JSON, `ts_extra_fields` JSON, `ts_ИнформацияПоКонтрагенту` JSON, `ts_СкидкиНаценки` JSON);
CREATE TABLE IF NOT EXISTS `doc_АктВыполненныхРабот` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, posted BOOLEAN, date Date, number_doc CHAR, `Организация` CHAR, `Контрагент` CHAR, `Договор` CHAR, `ДокументОснование` CHAR, `ЗаказПокупателя` CHAR, `Подразделение` CHAR, `ВидЦен` CHAR, `ВидСкидкиНаценки` CHAR, `ВалютаДокумента` CHAR, `НалогообложениеНДС` CHAR, `СуммаВключаетНДС` BOOLEAN, `НДСВключатьВСтоимость` BOOLEAN, `Курс` FLOAT, `Кратность` INT, `Ответственный` CHAR, `Комментарий` CHAR, `СуммаДокумента` FLOAT, `Автор` CHAR, `ПоложениеЗаказаПокупателя` CHAR, `ДисконтнаяКарта` CHAR, `ПроцентСкидкиПоДисконтнойКарте` FLOAT, `СкидкиРассчитаны` BOOLEAN, `ts_РаботыИУслуги` JSON, `ts_Предоплата` JSON, `ts_extra_fields` JSON, `ts_СкидкиНаценки` JSON);
CREATE TABLE IF NOT EXISTS `doc_СчетНаОплату` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, posted BOOLEAN, date Date, number_doc CHAR, `Организация` CHAR, `Комментарий` CHAR, `ДокументОснование` CHAR, `Контрагент` CHAR, `Договор` CHAR, `ТипДенежныхСредств` CHAR, `БанковскийСчет` CHAR, `ВалютаДокумента` CHAR, `Кратность` INT, `Курс` FLOAT, `НалогообложениеНДС` CHAR, `СуммаВключаетНДС` BOOLEAN, `ВидЦен` CHAR, `ВидСкидкиНаценки` CHAR, `Подразделение` CHAR, `Касса` CHAR, `Ответственный` CHAR, `СуммаДокумента` FLOAT, `Событие` CHAR, `ЗапланироватьОплату` BOOLEAN, `Автор` CHAR, `ПроцентСкидкиПоДисконтнойКарте` FLOAT, `ДисконтнаяКарта` CHAR, `СкидкиРассчитаны` BOOLEAN, `ts_Запасы` JSON, `ts_ПлатежныйКалендарь` JSON, `ts_extra_fields` JSON, `ts_СкидкиНаценки` JSON);
CREATE TABLE IF NOT EXISTS `doc_Событие` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, posted BOOLEAN, date Date, number_doc CHAR, `ТипСобытия` CHAR, `Состояние` CHAR, `Тема` CHAR, `Содержание` CHAR, `СодержаниеHTML` CHAR, `КартинкиHTML` CHAR, `ДокументОснование` CHAR, `НачалоСобытия` Date, `ОкончаниеСобытия` Date, `Ответственный` CHAR, `СписокУчастников` CHAR, `Автор` CHAR, `Проект` CHAR, `ВходящееИсходящееСобытие` CHAR, `УчетнаяЗапись` CHAR, `ИмяОтправителяSMS` CHAR, `ETag` CHAR, `identifier` CHAR, `calendar` CHAR, `Ключ` CHAR, `ts_ДокументыОснования` JSON, `ts_Участники` JSON, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `ireg_ЦеныНоменклатуры` (`ВидЦен` CHAR, `Номенклатура` CHAR, `Характеристика` CHAR, `Цена` FLOAT, `Актуальность` BOOLEAN, `ЕдиницаИзмерения` CHAR, PRIMARY KEY (`ВидЦен`, `Номенклатура`, `Характеристика`));
CREATE TABLE IF NOT EXISTS `cat_КлассификаторКонтактов` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Id` CHAR, `JSON` CHAR, `Key` CHAR, `Organization` CHAR, `Position` CHAR, `Title` CHAR, `Updated` Date, `ДатаСинхронизации` Date, `Пользователь` CHAR);
CREATE TABLE IF NOT EXISTS `cat_calendars_google` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `backgroundColor` CHAR, `colorId` CHAR, `foregroundColor` CHAR, `id` CHAR, `key` CHAR, `primary` BOOLEAN, `selected` CHAR, `summary` CHAR, `timeZone` CHAR, `Пользователь` CHAR);
CREATE TABLE IF NOT EXISTS `cat_УсловияПредоставленияСкидокНаценок` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `УсловиеПредоставления` CHAR, `КритерийОграниченияПримененияЗаОбъемПродаж` CHAR, `ОбластьОграничения` CHAR, `ЗначениеУсловияОграничения` FLOAT, `ВалютаОграничения` CHAR, `ТипСравнения` CHAR, `УчитыватьПродажуТолькоОпределенногоСпискаНоменклатуры` BOOLEAN, `Комментарий` CHAR, `parent` CHAR, `ts_КомплектПокупки` JSON, `ts_ОтборПродажПоНоменклатуре` JSON);
CREATE TABLE IF NOT EXISTS `cat_Сегменты` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Комментарий` CHAR, `parent` CHAR, `ts_ИспользуемыеПравила` JSON);
CREATE TABLE IF NOT EXISTS `cat_ДисконтныеКарты` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `КодКартыШтрихкод` CHAR, `КодКартыМагнитный` CHAR, `ВладелецКарты` CHAR, `Комментарий` CHAR, `owner` CHAR);
CREATE TABLE IF NOT EXISTS `cat_АвтоматическиеСкидки` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Действует` BOOLEAN, `СпособПредоставления` CHAR, `Назначение` CHAR, `ОбластьПредоставления` CHAR, `ЗначениеСкидкиНаценки` FLOAT, `ВариантОграниченияПоНоменклатуре` CHAR, `ЕстьОграниченияПоПолучателямКонтрагентам` BOOLEAN, `ЕстьОграниченияПоПолучателямСкладам` BOOLEAN, `ЕстьРасписание` BOOLEAN, `РеквизитДопУпорядочивания` INT, `ЕстьУточненияПоНоменклатуре` BOOLEAN, `ЕстьУточненияПоНоменклатурнымГруппам` BOOLEAN, `ЕстьУточненияПоЦеновымГруппам` BOOLEAN, `ВалютаПредоставления` CHAR, `ВариантСовместногоПрименения` CHAR, `Комментарий` CHAR, `ЕстьГруппыВУточненииПоНоменклатуре` BOOLEAN, `ДатаНачала` Date, `ДатаОкончания` Date, `parent` CHAR, `ts_ВремяПоДнямНедели` JSON, `ts_НоменклатураГруппыЦеновыеГруппы` JSON, `ts_УсловияПредоставления` JSON, `ts_ПолучателиСкидкиКонтрагенты` JSON, `ts_ПолучателиСкидкиСклады` JSON);
CREATE TABLE IF NOT EXISTS `cat_ПроизводственныеКалендари` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN);
CREATE TABLE IF NOT EXISTS `cat_Ячейки` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `owner` CHAR, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ЦеновыеГруппы` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `sequence` INT, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ХарактеристикиНоменклатуры` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `owner` CHAR, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_ФизическиеЛица` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ДатаРождения` Date, `Пол` CHAR, `parent` CHAR, `ts_КонтактнаяИнформация` JSON, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_УчетныеЗаписиЭлектроннойПочты` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `АдресЭлектроннойПочты` CHAR, `ИмяПользователя` CHAR, `СерверВходящейПочты` CHAR, `СерверИсходящейПочты` CHAR, `ПортСервераВходящейПочты` INT, `ПортСервераИсходящейПочты` INT, `Пользователь` CHAR, `ПользовательSMTP` CHAR, `Пароль` CHAR, `ПарольSMTP` CHAR, `ВремяОжидания` INT, `ОставлятьКопииСообщенийНаСервере` BOOLEAN, `ПериодХраненияСообщенийНаСервере` INT, `ИспользоватьДляОтправки` BOOLEAN, `ИспользоватьДляПолучения` BOOLEAN, `ПротоколВходящейПочты` CHAR, `ИспользоватьЗащищенноеСоединениеДляВходящейПочты` BOOLEAN, `ИспользоватьЗащищенноеСоединениеДляИсходящейПочты` BOOLEAN, `ИспользоватьБезопасныйВходНаСерверВходящейПочты` BOOLEAN, `ИспользоватьБезопасныйВходНаСерверИсходящейПочты` BOOLEAN, `ТребуетсяВходНаСерверПередОтправкой` BOOLEAN, `УдалитьВПредставлениеВключатьИмяПользователя` BOOLEAN, `УдалитьОтветственныйЗаОбработкуПисем` CHAR, `СпособPOP3Аутентификации` CHAR, `СпособSMTPАутентификации` CHAR, `SMTPАутентификация` CHAR);
CREATE TABLE IF NOT EXISTS `cat_СтруктурныеЕдиницы` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ТипСтруктурнойЕдиницы` CHAR, `ОрдерныйСклад` BOOLEAN, `Организация` CHAR, `МОЛ` CHAR, `РозничныйВидЦен` CHAR, `СчетУчетаВРознице` CHAR, `СчетУчетаНаценки` CHAR, `ИсточникПеремещения` CHAR, `ЯчейкаИсточникаПеремещения` CHAR, `ПолучательПеремещения` CHAR, `ЯчейкаПолучателяПеремещения` CHAR, `ПолучательОтходов` CHAR, `ЯчейкаПолучателяОтходов` CHAR, `ИсточникСписанияНаРасходы` CHAR, `ЯчейкаИсточникаСписанияНаРасходы` CHAR, `ПолучательСписанияНаРасходы` CHAR, `ЯчейкаПолучателяСписанияНаРасходы` CHAR, `ИсточникПередачиВЭксплуатацию` CHAR, `ЯчейкаИсточникаПередачиВЭксплуатацию` CHAR, `ПолучательПередачиВЭксплуатацию` CHAR, `ЯчейкаПолучателяПередачиВЭксплуатацию` CHAR, `ИсточникВозвратаИзЭксплуатации` CHAR, `ЯчейкаИсточникаВозвратаИзЭксплуатации` CHAR, `ПолучательВозвратаИзЭксплуатации` CHAR, `ЯчейкаПолучателяВозвратаИзЭксплуатации` CHAR, `parent` CHAR, `ts_extra_fields` JSON, `ts_КонтактнаяИнформация` JSON);
CREATE TABLE IF NOT EXISTS `cat_СтраныМира` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `НаименованиеПолное` CHAR, `КодАльфа2` CHAR, `КодАльфа3` CHAR);
CREATE TABLE IF NOT EXISTS `cat_СтатьиДвиженияДенежныхСредств` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `КорреспондирующийСчет` CHAR, `parent` CHAR, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_СтавкиНДС` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Ставка` FLOAT, `НеОблагается` BOOLEAN, `Расчетная` BOOLEAN);
CREATE TABLE IF NOT EXISTS `cat_Спецификации` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ХарактеристикаПродукции` CHAR, `owner` CHAR, `ts_Состав` JSON, `ts_Операции` JSON);
CREATE TABLE IF NOT EXISTS `cat_Сотрудники` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Физлицо` CHAR, `ТипЗанятости` CHAR, `СчетРасчетовСПерсоналом` CHAR, `СчетРасчетовСПодотчетниками` CHAR, `СчетРасчетовПоПерерасходу` CHAR, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_СостоянияСобытий` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Описание` CHAR, `Цвет` CHAR, `РеквизитДопУпорядочивания` INT);
CREATE TABLE IF NOT EXISTS `cat_СостоянияЗаказовПоставщикам` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `СтатусЗаказа` CHAR, `Цвет` CHAR, `РеквизитДопУпорядочивания` INT);
CREATE TABLE IF NOT EXISTS `cat_СостоянияЗаказовПокупателей` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `СтатусЗаказа` CHAR, `Цвет` CHAR, `РеквизитДопУпорядочивания` INT);
CREATE TABLE IF NOT EXISTS `cat_СостоянияЗаказовНаПроизводство` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `СтатусЗаказа` CHAR, `Цвет` CHAR, `РеквизитДопУпорядочивания` INT);
CREATE TABLE IF NOT EXISTS `cat_РолиКонтактныхЛиц` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Описание` CHAR);
CREATE TABLE IF NOT EXISTS `cat_РабочиеМеста` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ИмяКомпьютера` CHAR, `СетевойПорт` INT);
CREATE TABLE IF NOT EXISTS `cat_Проекты` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ДатаНачала` Date, `ДатаОкончания` Date, `Контрагент` CHAR, `Договор` CHAR, `Комментарий` CHAR, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ПартииНоменклатуры` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Статус` CHAR, `ВладелецПартии` CHAR, `owner` CHAR, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_Пользователи` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Недействителен` BOOLEAN, `Комментарий` CHAR, `ancillary` BOOLEAN, `Подготовлен` BOOLEAN, `ИдентификаторПользователяИБ` CHAR, `ИдентификаторПользователяСервиса` CHAR, `СвойстваПользователяИБ` CHAR, `ts_extra_fields` JSON, `ts_КонтактнаяИнформация` JSON);
CREATE TABLE IF NOT EXISTS `cat_НоменклатурныеГруппы` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `НаборСвойствХарактеристики` CHAR, `УдалитьВидАлкогольнойПродукции` CHAR, `УдалитьИмпортнаяАлкогольнаяПродукция` BOOLEAN, `ВидАлкогольнойПродукции` CHAR, `ИмпортнаяАлкогольнаяПродукция` BOOLEAN, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_Номенклатура` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Артикул` CHAR, `ДатаИзменения` Date, `ЕдиницаИзмерения` CHAR, `МетодОценки` CHAR, `НаименованиеПолное` CHAR, `НаправлениеДеятельности` CHAR, `НоменклатурнаяГруппа` CHAR, `Поставщик` CHAR, `Склад` CHAR, `Спецификация` CHAR, `СпособПополнения` CHAR, `СрокПополнения` INT, `СтавкаНДС` CHAR, `СчетУчетаЗапасов` CHAR, `СчетУчетаЗатрат` CHAR, `ТипНоменклатуры` CHAR, `Ячейка` CHAR, `ЦеноваяГруппа` CHAR, `ИспользоватьХарактеристики` BOOLEAN, `ИспользоватьПартии` BOOLEAN, `УдалитьФайлКартинки` CHAR, `Комментарий` CHAR, `СрокИсполненияЗаказа` INT, `НормаВремени` FLOAT, `ФиксированнаяСтоимость` BOOLEAN, `СтранаПроисхождения` CHAR, `ФайлКартинки` CHAR, `УдалитьВидАлкогольнойПродукции` CHAR, `УдалитьИмпортнаяАлкогольнаяПродукция` BOOLEAN, `УдалитьПроизводительИмпортерАлкогольнойПродукции` CHAR, `УдалитьОбъемДАЛ` FLOAT, `ВидАлкогольнойПродукции` CHAR, `ИмпортнаяАлкогольнаяПродукция` BOOLEAN, `ПроизводительИмпортерАлкогольнойПродукции` CHAR, `ОбъемДАЛ` FLOAT, `parent` CHAR, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_НаправленияДеятельности` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `СчетУчетаВыручкиОтПродаж` CHAR, `СчетУчетаСебестоимостиПродаж` CHAR, `СчетУчетаПрибыли` CHAR);
CREATE TABLE IF NOT EXISTS `cat_Организации` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `prefix` CHAR, `БанковскийСчетПоУмолчанию` CHAR, `КассаПоУмолчанию` CHAR, `КодПоОКАТО` CHAR, `КодПоОКПО` CHAR, `ИНН` CHAR, `НаименованиеПлательщикаПриПеречисленииНалогов` CHAR, `НаименованиеПолное` CHAR, `НДСВключатьВСтоимость` BOOLEAN, `КПП` CHAR, `ОГРН` CHAR, `ПроизводственныйКалендарь` CHAR, `СвидетельствоДатаВыдачи` Date, `СвидетельствоСерияНомер` CHAR, `СтавкаНДСПоУмолчанию` CHAR, `УдалитьФайлЛоготип` CHAR, `УдалитьФайлФаксимильнаяПечать` CHAR, `ФизическоеЛицо` CHAR, `ЮрФизЛицо` CHAR, `ФайлЛоготип` CHAR, `ФайлФаксимильнаяПечать` CHAR, `КодПоОКТМО` CHAR, `ts_КонтактнаяИнформация` JSON, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_Контрагенты` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ИНН` CHAR, `КодПоОКПО` CHAR, `КПП` CHAR, `НаименованиеПолное` CHAR, `БанковскийСчетПоУмолчанию` CHAR, `ДоговорПоУмолчанию` CHAR, `КонтактноеЛицо` CHAR, `ФизическоеЛицо` CHAR, `СчетУчетаРасчетовСПокупателем` CHAR, `СчетУчетаАвансовПокупателя` CHAR, `СчетУчетаРасчетовСПоставщиком` CHAR, `СчетУчетаАвансовПоставщику` CHAR, `Ответственный` CHAR, `Комментарий` CHAR, `ВестиРасчетыПоДоговорам` BOOLEAN, `ВестиРасчетыПоДокументам` BOOLEAN, `ВестиРасчетыПоЗаказам` BOOLEAN, `ВестиУчетОплатыПоСчетам` BOOLEAN, `ЮрФизЛицо` CHAR, `ИННВведенКорректно` BOOLEAN, `КППВведенКорректно` BOOLEAN, `ОбновлениеУспешно` BOOLEAN, `АдресЭП` CHAR, `ГруппаДоступа` CHAR, `ДатаСоздания` Date, `parent` CHAR, `ts_extra_fields` JSON, `ts_КонтактнаяИнформация` JSON, `ts_Теги` JSON);
CREATE TABLE IF NOT EXISTS `cat_КонтактныеЛица` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Физлицо` CHAR, `ДатаРегистрацииСвязи` Date, `ДатаПрекращенияСвязи` Date, `Должность` CHAR, `Ответственный` CHAR, `Комментарий` CHAR, `owner` CHAR, `ts_РолиКонтактногоЛица` JSON, `ts_КонтактнаяИнформация` JSON, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_КлючевыеРесурсы` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Мощность` INT, `ЗначениеРесурса` CHAR);
CREATE TABLE IF NOT EXISTS `cat_КлассификаторЕдиницИзмерения` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `НаименованиеПолное` CHAR, `МеждународноеСокращение` CHAR);
CREATE TABLE IF NOT EXISTS `cat_Кассы` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ВалютаПоУмолчанию` CHAR, `СчетУчета` CHAR);
CREATE TABLE IF NOT EXISTS `cat_НаборыДополнительныхРеквизитовИСведений` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `КоличествоРеквизитов` CHAR, `КоличествоСведений` CHAR, `parent` CHAR, `ts_extra_fields` JSON, `ts_extra_properties` JSON);
CREATE TABLE IF NOT EXISTS `cat_ЕдиницыИзмерения` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Коэффициент` FLOAT, `owner` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ВидыКонтактнойИнформации` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `АдресТолькоРоссийский` BOOLEAN, `ВключатьСтрануВПредставление` BOOLEAN, `ЗапрещатьВводНекорректного` BOOLEAN, `МожноИзменятьСпособРедактирования` BOOLEAN, `ОбязательноеЗаполнение` BOOLEAN, `Подсказка` CHAR, `ПроверятьКорректность` BOOLEAN, `ПроверятьПоФИАС` BOOLEAN, `РазрешитьВводНесколькихЗначений` BOOLEAN, `РедактированиеТолькоВДиалоге` BOOLEAN, `РеквизитДопУпорядочивания` INT, `СкрыватьНеактуальныеАдреса` BOOLEAN, `type` CHAR, `ЗапретитьРедактированиеПользователем` BOOLEAN, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ДоговорыКонтрагентов` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ВалютаРасчетов` CHAR, `ДатаДоговора` Date, `Организация` CHAR, `РасчетыВУсловныхЕдиницах` BOOLEAN, `НомерДоговора` CHAR, `СрокОплатыПокупателя` INT, `СрокОплатыПоставщику` INT, `ВидДоговора` CHAR, `ВидЦен` CHAR, `ВидЦенКонтрагента` CHAR, `ВидСкидкиНаценки` CHAR, `БланкДоговора` CHAR, `owner` CHAR, `parent` CHAR, `ts_extra_fields` JSON, `ts_РедактируемыеПараметры` JSON, `ts_ПараметрыИнфобазы` JSON);
CREATE TABLE IF NOT EXISTS `cat_БанковскиеСчета` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ВалютаДенежныхСредств` CHAR, `НомерСчета` CHAR, `Банк` CHAR, `БанкРасчетов` CHAR, `СчетУчета` CHAR, `ВидСчета` CHAR, `ТекстКорреспондента` CHAR, `ТекстНазначения` CHAR, `ВариантВыводаМесяца` CHAR, `СуммаБезКопеек` BOOLEAN, `НомерИДатаРазрешения` CHAR, `ДатаОткрытия` Date, `ДатаЗакрытия` Date, `ВариантУказанияКПП` CHAR, `owner` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ВидыДокументовФизическихЛиц` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `РеквизитДопУпорядочивания` INT);
CREATE TABLE IF NOT EXISTS `cat_property_values` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Вес` FLOAT, `owner` CHAR, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ВидыЦенКонтрагентов` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ВалютаЦены` CHAR, `ЦенаВключаетНДС` BOOLEAN, `Комментарий` CHAR, `owner` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ВидыЦен` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ВалютаЦены` CHAR, `ЦенаВключаетНДС` BOOLEAN, `ПорядокОкругления` CHAR, `ОкруглятьВБольшуюСторону` BOOLEAN, `ФорматЦены` CHAR, `РассчитываетсяДинамически` BOOLEAN, `БазовыйВидЦен` CHAR, `Процент` FLOAT, `Комментарий` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ВидыСкидокНаценок` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Процент` FLOAT, `Комментарий` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ВидыНачисленийИУдержаний` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `type` CHAR, `СчетЗатрат` CHAR, `Формула` CHAR, `ВидНалога` CHAR, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_Банки` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `КоррСчет` CHAR, `Город` CHAR, `Адрес` CHAR, `Телефоны` CHAR, `РучноеИзменение` INT, `parent` CHAR);
CREATE TABLE IF NOT EXISTS `cat_Валюты` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ЗагружаетсяИзИнтернета` BOOLEAN, `НаименованиеПолное` CHAR, `Наценка` FLOAT, `ОсновнаяВалюта` CHAR, `ПараметрыПрописиНаРусском` CHAR, `ФормулаРасчетаКурса` CHAR, `СпособУстановкиКурса` CHAR);
CREATE TABLE IF NOT EXISTS `cat_ПериодыПланирования` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `ДатаНачала` Date, `ДатаОкончания` Date, `Периодичность` CHAR);
CREATE TABLE IF NOT EXISTS `cat_НоменклатураПоставщиков` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Номенклатура` CHAR, `Характеристика` CHAR, `Артикул` CHAR, `identifier` CHAR, `owner` CHAR, `parent` CHAR, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_ТранспортныеСредства` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Марка` CHAR, `ГрузоподъемностьВТоннах` FLOAT, `ВместимостьВКубическихМетрах` FLOAT, `ВидТранспортногоСредства` CHAR, `ДействующаяЛицензионнаяКарточка` CHAR, `ts_extra_fields` JSON);
CREATE TABLE IF NOT EXISTS `cat_БланкиДоговоров` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `Бланк` CHAR, `МакетПредопределенногоБланка` CHAR, `КоличествоРедактируемыхПараметров` INT, `ts_РедактируемыеПараметры` JSON, `ts_ПараметрыИнфобазы` JSON);
CREATE TABLE IF NOT EXISTS `cat_КлассификаторБанковРФ` (ref CHAR PRIMARY KEY NOT NULL, `deleted` BOOLEAN, lc_changed INT, id CHAR, name CHAR, is_folder BOOLEAN, `КоррСчет` CHAR, `Город` CHAR, `Адрес` CHAR, `Телефоны` CHAR, `ДеятельностьПрекращена` BOOLEAN, `parent` CHAR);
