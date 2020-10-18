Функция ТелоЗапросаНаСозданиеХранилища(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
	|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""DevDepotAdmin_createDevDepot"" version=""" + Параметры.ВерсияПлатформы + """>
	|<crs:params>
	|<crs:alias value=""" + Параметры.ИмяХранилища + """/>
	|<crs:rootID value=""" + КорневойИдентификаторКонфигурации() + """/>
	|<crs:adminName value=""" + Параметры.ИмяПользователя + """/>
	|<crs:adminPassword value=""" + Параметры.ХешПароляПользвателя + """/>
	|<crs:code value=""""/>
	|<crs:features/>
	|<crs:snapshots>
	|<crs:data>" + Параметры.ШаблонКонфигурации + "</crs:data>
	|</crs:snapshots>
	|<crs:hashedVersionID value=""false""/>
	|</crs:params>
	|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция ТелоЗапросаНаПодключение(Параметры) Экспорт
	ТелоЗапроса = "<?xml version=""1.0"" encoding=""UTF-8""?>
	|<crs:call xmlns:crs=""http://v8.1c.ru/8.2/crs"" alias=""" + Параметры.ИмяХранилища + """ name=""DevDepot_depotInfo"" 
	|version=""" + Параметры.ВерсияПлатформы + """>
	|<crs:auth user=""" + Параметры.ПользовательХранилища + """ password=""" + Параметры.ХешПароляПользователя + """/>
	|<crs:params/>
	|</crs:call>";
	Возврат ТелоЗапроса;
КонецФункции

Функция КорневойИдентификаторКонфигурации()
	Возврат "c9dd0f2c-4ed0-484a-baad-56494aa67301";
КонецФункции