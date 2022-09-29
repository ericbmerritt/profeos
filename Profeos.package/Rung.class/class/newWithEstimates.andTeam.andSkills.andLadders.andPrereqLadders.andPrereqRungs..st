instance creation
newWithEstimates: someEstimates andTeam: aTeam andSkills: someSkills andLadders: someLadders andPrereqLadders: somePrereqLadders andPrereqRungs: somePrereqRungs

	^ self basicNew
		  initializeWithEstimates: someEstimates
		  andTeam: aTeam
		  andSkills: someSkills
		  andLadders: someLadders
		  andPrereqLadders: somePrereqLadders
		  andPrereqRungs: somePrereqRungs;
		  yourself