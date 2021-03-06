# Build nested data structure representing the U.S. Federal Government
US_federal_gov = {
    highest_power: "U.S. Constitution",

    three_branches: {
        
        legislative_branch: {
            congress: {
                house_of_representatives: {
                    chamer: 'lower',
                    members: {
                        non_voting_members: {
                            at_large_delegates: ['American Samoan', 
                                'D.C.', 'Guam', 'Northern Mariana Islands', 
                                'US Virgin Islands'],
                            resident_commissioner: 'Puerto Rican delegate'
                            },
                        voting_members: {
                            current_number: 435,
                            republican_reps: 238,
                            democratic_reps: 193,
                            vacant: 4
                        },
                    members_elected: true
                    },

                    leadership: {
                        house_leader: 'Speaker of the House',
                        majority_leadership: ['majority leader', 'majority whip'],
                        minority_leadership: ['minority leader', 'minority whip']
                    },
                    committees: ['agriculture', 'appropriations', 'armed services', 
                        'budget','education', 'energy and commerce', 'ethics', 
                        'financial services', 'foreign affairs', 'homeland security', 
                        'house administration', 'judiciary', 'natural resources', 
                        'oversight', 'rules', 'science, space & tech', 'small business', 
                        'transportation', 'veterans affairs', 'ways & means']
                },
                senate: {
                    chamber: 'upper',
                    senators: 100,

                    leadership: {
                        senate_president: 'U.S. Vice President',
                        chief_admin: 'Secretary of State'
                        },

                    political_parties: {
                        republicans: {
                            rep_senators: 52,
                            leadership: ['majority leader', 'majority whip'],
                            mascot: 'elephant',
                            color: 'red',
                            alias: 'Grand Old Party',
                            ideology: 'conservative'
                        },

                        democrats: {
                            dem_senators: 48,
                            leadership: ['minority leader', 'minority whip'],
                            mascot: 'donkey',
                            color: 'blue',
                            alias: 'dems',
                            ideology: 'liberal'
                        },

                        independents: {
                            ind_senators: 2,
                            ind_officers: nil,
                            mascot: 'Bernie Sanders',
                            color: 'gray?',
                            ideology: 'unknown'
                        }
                    }
                }
            },

                smaller_departments: [ 'architect of the capitol', 
                    'U.S. Botanic Garden', 'government accountability office', 
                    'library of congress', 'congressional budget office']
        },
        executive_branch: {
            chief_leader: 'President',
            other_leader: 'Vice President',
            executive_office_of_president: ['white house office', 'national security council', 
                'council of economic advisors', 'council on environmental quality', 'executive residence staff', 
                'office of admin', 'office of management and budget', 'office of national drug policy', 
                'office of science & tech policy', 'office of the US trade representative','office of the VP' ],
            well_oiled_machine: false
        },

        judicial_branch: {
            supreme_court_justices: ['john roberts', 'anthony kennedy', 'clarence thomas',
            'ruth bader ginsberg', 'stephen breyer', 'samuel alito', 'sonia sotomayor',
            'elena kagan', 'the ghost of antonin scalia'],

            lower_courts: ['court of appeals', 'district courts', 'court of international trade', 
                'court of federal claims', 'court of appeals for the armed forces', 
                'tax court', 'court of appeals for veterans claims'],
            officials_elected: false
        }
    }    
}

# print a few individual pieces of deeply nested data from the structure, 
# showing that you know how to use multiple indexes or hash keys (or both) to access nested items.

p US_federal_gov[:three_branches][:legislative_branch][:congress][:senate][:political_parties][:independents][:mascot]
p US_federal_gov[:three_branches][:executive_branch][:executive_office_of_president][5] + US_federal_gov[:three_branches][:judicial_branch][:lower_courts][2]

