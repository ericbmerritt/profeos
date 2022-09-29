instance creation
newWithRungs: someRungs andTeam: aTeam andSkills: someSkills andLadders: someLadders andPrereqLadders: somePrereqLadders andPrereqRungs: somePrereqRungs

	^ self basicNew
		  initializeWithRungs: someRungs
		  andTeam: aTeam
		  andSkills: someSkills
		  andLadders: someLadders
		  andPrereqLadders: somePrereqLadders
		  andPrereqRungs: somePrereqRungs;
		  yourself