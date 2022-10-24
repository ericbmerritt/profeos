descriptions
descriptionId

	<magritteDescription>
	^ MAStringDescription new
		  accessor: #id;
		  label: 'id';
		addCondition: [ :newId | 
			  self class validateUsername: newId ];
		  beHidden;
		  yourself