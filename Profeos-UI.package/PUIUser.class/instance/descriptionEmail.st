descriptions
descriptionEmail

	<magritteDescription>
	^ MAStringDescription new
		  accessor: #email;
		  label: 'Email';
		  addCondition: [ :newEmail | self class validateUsername: newEmail ];
		  beRequired;
		  yourself