descriptions
descriptionPassword

	<magritteDescription>
	^ MAPasswordDescription new
		  accessor: #password;
		  label: 'password';
		addCondition: [ :newPassword | 
			  self class validatePassword: newPassword ];
		  beRequired;
		  yourself