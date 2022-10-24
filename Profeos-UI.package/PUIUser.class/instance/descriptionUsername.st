descriptions
descriptionUsername

	<magritteDescription>
	^ MAStringDescription new
		  accessor: #username;
		  label: 'username';
		  addCondition: [ :newUsername | 
			  self class validateUsername: newUsername ];
		  beRequired;
		  yourself