instance creation
newWithWorker: aWorker andRange: aRange
			
	
	^ self basicNew
		  initializeWithWorker: aWorker andRange: aRange;
		  yourself