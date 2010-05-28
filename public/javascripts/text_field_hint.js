function clearField(event) {
	var field = event.element();
	if(field.value == field.defaultValue) {
		field.value = "";
	}
}

function restoreField(event) {
	var field = event.element();
	if(field.value == "") {
		field.value = field.defaultValue;
	}
}

function textFieldHint(field_id) {
	Event.observe(field_id, 'focus', clearField);
	Event.observe(field_id, 'blur', restoreField);
}