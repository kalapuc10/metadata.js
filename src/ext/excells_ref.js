/**
 * <br />&copy; http://www.oknosoft.ru 2009-2015
 * Поля ввода ссылочных типов данных для dhtmlXGrid
 * @module  excells_ref
 */

/**
 * Обработчик клавиш {tab}, {enter} и {F4} в поле ввода
 */
function input_keydown(e, t){
	if(e.keyCode == 8 || e.keyCode == 46){
		t.setValue("");
		t.grid.editStop();
		if(t.source.on_select)
			t.source.on_select.call(t.source);
	}else if(e.keyCode == 9 || e.keyCode == 13)
		t.grid.editStop();	// по {tab} и {enter} заканчиваем редактирование
	else if(e.keyCode == 115)
		t.cell.firstChild.childNodes[1].onclick(e);			// по {F4} открываем редактор
	return $p.cancel_bubble(e);
}

var eXcell_proto = new eXcell();

/**
 * Конструктор поля ввода значений ссылочных типов для грида
 */
function eXcell_ref(cell){

	if (!cell) return;

	var t = this, td,

		ti_keydown=function(e){
			return input_keydown(e, t);
		},

		open_selection=function(e) {

			var fmd, rt, at, cl, acl, sval,
				attr = {
					initial_value: t.val.ref,
					parent: null,
					owner: null};

			if(t.source.slist)
				t.source.slist.call(t);

			else if(t.source.tabular_section){
				fmd = t.source.o._metadata["tabular_sections"][t.source.tabular_section].fields[t.source.col];
				for (rt in fmd.type.types)
					if (fmd.type.types[rt].indexOf(".") > -1) {
						at = fmd.type.types[rt].split(".");
						if(t.source["choice_links"] && t.source["choice_links"][t.source.tabular_section + "_" + t.source.col])
							acl = t.source["choice_links"][t.source.tabular_section + "_" + t.source.col];
						else
							acl = fmd["choice_links"];
						if(acl){
							for(var icl in acl){
								if((cl = acl[icl]).name[1] == "owner")
									attr.owner = cl.path.length == 2 ? t.source.row[cl.path[1]].ref : t.source.o[cl.path[0]].ref;
							}
						}
						$p[at[0]][at[1]].form_selection(t.source, attr);
						break;
				}
			}else{
				if(t.fpath.length < 2){
					fmd = t.source.o._manager.metadata(t.fpath[0]);
					if(t.source["choice_links"] && t.source["choice_links"][t.fpath[0]])
						acl = t.source["choice_links"][t.fpath[0]];
					else
						acl = fmd["choice_links"];
					if(t.source["choice_params"] && t.source["choice_params"][t.fpath[0]])
						for(var icl in t.source["choice_params"][t.fpath[0]]){
							if(!attr.selection)
								attr.selection = [];
							attr.selection.push(t.source["choice_params"][t.fpath[0]][icl]);
						}
				}else
					fmd = t.source.o._metadata["tabular_sections"][t.fpath[0]].fields[t.fpath[1]];

				for(rt in fmd.type.types)
					if(fmd.type.types[rt].indexOf(".") > -1){
						at = fmd.type.types[rt].split(".");
						if(acl){
							for(var icl in acl){
								if((cl = acl[icl]).path.length == 1)
									sval = t.source.o[cl.path[0]].ref;
								else{
									// связь по подчиненному реквизиту. надо разыменовать ссылку поля
									// !!! пока не неализовано
									sval = t.source.o[cl.path[0]].ref;
								}
								if(cl.name[1] == "owner")
									attr.owner = sval ;
								else if(cl.name[0] == "selection"){
									if(!attr.selection)
										attr.selection = [];
									var selection = {};
									selection[cl.name[1]] = sval;
									attr.selection.push(selection);
								}
							}
						}
						$p[at[0]][at[1]].form_selection(t.source, attr);
						break;
					}
			}

			return $p.cancel_bubble(e);
		};

	t.cell = cell;
	t.grid = t.cell.parentNode.grid;
	t.open_selection = open_selection;

	/**
	 * @desc: 	устанавливает текст в ячейке. например, this.setCValue("<input type='button' value='"+val+"'>",val);
	 */
	t.setValue=function(val){ t.setCValue(val); };

	/**
	 * @desc: 	получает значение ячейки из табличной части или поля объекта или допполя допобъекта, а не из грида
	 */
	t.getValue=function(){
		if(t.source = t.grid.getUserData("", "source")){
			if(t.source.tabular_section){
				t.source.row = t.source.o[t.source.tabular_section].get(t.cell.parentNode.idd-1);
				t.source.col = t.source.fields[t.cell.cellIndex];
				t.source.cell = t;
				return t.source.row[t.source.col];
			}else{
				t.fpath = t.grid.getSelectedRowId().split("|");
				if(t.fpath.length < 2) return t.source.o[t.fpath[0]];
				else {
					var vr = t.source.o[t.fpath[0]].find(t.fpath[1]);
					if(vr) return (vr["value"] || vr["Значение"]);
				}
			}
		}
	};

	/**
	 * @desc: 	создаёт элементы управления редактора и назначает им обработчики
	 */
	t.edit=function(){
		var ti;
		t.val = t.getValue();		//save current value
		if(t.source.tabular_section){
			t.cell.innerHTML = '<div class="ref_div23"><input type="text" class="dhx_combo_edit" style="height: 22px;"><div class="ref_field23">&nbsp;</div></div>';
		}else{
			t.cell.innerHTML = '<div class="ref_div21"><input type="text" class="dhx_combo_edit" style="height: 20px;"><div class="ref_field21">&nbsp;</div></div>';
		}

		td = t.cell.firstChild;
		ti = td.childNodes[0];
		ti.value=t.val.presentation;
		ti.onclick=$p.cancel_bubble;		//blocks onclick event
		ti.readOnly = true;
		ti.focus();
		ti.onkeydown=ti_keydown;
		td.childNodes[1].onclick=open_selection;
	};

	/**
	 * @desc: 	вызывается при отключении редактора
	 */
	t.detach=function(){
		if(t.cell.firstChild)
			t.setValue(t.cell.firstChild.childNodes[0].value);	//sets the new value
		return !$p.is_equal(t.val, t.getValue());				// compares the new and the old values
	}
}
eXcell_ref.prototype = eXcell_proto;
window.eXcell_ref = eXcell_ref;

/**
 * Конструктор комбобокса кешируемых ссылочных типов для грида
 */
function eXcell_refc(cell){

	if (!cell) return;

	var t = this,
		slist=function() {
			var fmd, rt, at, res = [{value:"1", text:"One"}];
			if(t.source.slist)
				return t.source.slist.call(t);
			else if(t.source.tabular_section)
				fmd = t.source.o._metadata["tabular_sections"][t.source.tabular_section].fields[t.source.col];
			else if(t.fpath.length < 2)
				fmd = t.source.o._manager.metadata(t.fpath[0]);
			else if(t.fpath[0] == "extra_fields" || t.fpath[0] == "params"){
				return $p.cat.properties.slist(t.fpath[1]);
			} else
				fmd = t.source.o._metadata["tabular_sections"][t.fpath[0]].fields[t.fpath[1]];

			// получаем менеджер доступных значений
			for(rt in fmd.type.types)
				if(fmd.type.types[rt].indexOf(".") > -1){
					at = fmd.type.types[rt].split(".");
					t.mgr = $p[at[0]][at[1]];
					if(t.mgr){
						if(t.mgr.get_option_list)
							res = t.mgr.get_option_list(t.val);
						else {
							res.length = 0;
							t.mgr.each(function (v) {
								res.push({value: v.ref, text: v.presentation || v.synonym});
							});
						}
					}
				}
			return res;
		};

	t.cell = cell;
	t.grid = t.cell.parentNode.grid;

	/**
	 * @desc: 	устанавливает текст в ячейке. например, this.setCValue("<input type='button' value='"+val+"'>",val);
	 */
	t.setValue=function(val){ t.setCValue(val); };

	/**
	 * @desc: 	получает значение ячейки из табличной части или поля объекта или допполя допобъекта, а не из грида
	 */
	t.getValue=function(){
		if(t.source = t.grid.getUserData("", "source")){
			if(t.source.tabular_section){
				t.source.row = t.source.o[t.source.tabular_section].get(t.cell.parentNode.idd-1);
				t.source.col = t.source.fields[t.cell.cellIndex];
				t.source.cell = t;
				return t.source.row[t.source.col];
			}else{
				t.fpath = t.grid.getSelectedRowId().split("|");
				if(t.fpath.length < 2)
					return t.source.o[t.fpath[0]];
				else {
					var collection = t.source.o[t.fpath[0]],
						vr = collection.find ? collection.find(t.fpath[1]) : $p._find(collection, t.fpath[1]);
					if(vr)
						return (vr["value"] || vr["Значение"]);
				}
			}
		}
	};

	/**
	 * @desc: 	создаёт элементы управления редактора и назначает им обработчики
	 */
	t.edit=function(){

		if(t.combo) return;

		t.val = t.getValue();		//save current value
		t.cell.innerHTML = "";
		t.combo = new dhtmlXCombo({
			parent: t.cell,
			items: slist()
		});

		t.combo.DOMelem.style.border = "none";
		t.combo.DOMelem.style.height = "21px";
		t.combo.DOMelem.style.width = (t.cell.offsetWidth - 8) + "px";
		t.combo.DOMelem_input.style.fontSize = "11px";
		t.combo.DOMelem_input.style.margin = 0;
		t.combo.DOMlist.style.fontSize = "11px";

		t.combo.setFocus();
		t.combo.setComboValue(t.val.ref);
		t.combo.readonly(true, true);
		t.combo.openSelect();
		t.combo.attachEvent("onChange", function(){
			if(t.source.on_select){
				var sval = (t.mgr || $p.cat["property_values"]).get(t.combo.getSelectedValue(), false);
				setTimeout( function(){t.source.on_select(sval); }, 0 );
			}
		});

	};

	/**
	 * @desc: 	вызывается при отключении редактора
	 */
	t.detach=function(){
		if(t.combo)
			t.setValue(t.combo.getComboText());
		return !$p.is_equal(t.val, t.getValue());				// compares the new and the old values
	}

}
eXcell_refc.prototype = eXcell_proto;
window.eXcell_refc = eXcell_refc;


