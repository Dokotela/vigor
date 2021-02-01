class AgByCvx {
  AgByCvx(this.shortDescription, this.antigens);

  final String shortDescription;
  final List<String> antigens;
}

final Map<String, AgByCvx> simpleCvxMap = {
  '01': AgByCvx(
    'DTP',
    ['Diphtheria', 'Tetanus', 'Pertussis'],
  ),
  '02': AgByCvx(
    'OPV',
    ['Polio'],
  ),
  '03': AgByCvx(
    'MMR',
    ['Measles', 'Mumps', 'Rubella'],
  ),
  '04': AgByCvx(
    'M/R',
    ['Measles', 'Rubella'],
  ),
  '05': AgByCvx(
    'measles',
    ['Measles'],
  ),
  '06': AgByCvx(
    'rubella',
    ['Rubella'],
  ),
  '07': AgByCvx(
    'mumps',
    ['Mumps'],
  ),
  '08': AgByCvx(
    'Hep B, adolescent or pediatric',
    ['HepB'],
  ),
  '09': AgByCvx(
    'Td (adult), adsorbed',
    ['Tetanus', 'Diphtheria'],
  ),
  '10': AgByCvx(
    'IPV',
    ['Polio'],
  ),
  '11': AgByCvx(
    'pertussis',
    ['Pertussis'],
  ),
  '15': AgByCvx(
    'influenza, split (incl. purified surface antigen)',
    ['Influenza'],
  ),
  '16': AgByCvx(
    'influenza, whole',
    ['Influenza'],
  ),
  '17': AgByCvx(
    'Hib, unspecified formulation',
    ['Hib'],
  ),
  '18': AgByCvx(
    'Rabies, intramuscular injection',
    ['Rabies'],
  ),
  '19': AgByCvx(
    'Bacillus Calmette-Guerin vaccine',
    ['Tuberculosis'],
  ),
  '20': AgByCvx(
    'DTaP',
    ['Diphtheria', 'Tetanus', 'Pertussis'],
  ),
  '21': AgByCvx(
    'varicella',
    ['Varicella'],
  ),
  '22': AgByCvx(
    'DTP-Hib',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'Hib'],
  ),
  '25': AgByCvx(
    'Typhoid oral, live, attenuated',
    ['Typhoid'],
  ),
  '26': AgByCvx(
    'cholera, unspecified formulation',
    ['Cholera'],
  ),
  '28': AgByCvx(
    'DT (pediatric)',
    ['Diphtheria', 'Tetanus'],
  ),
  '31': AgByCvx(
    'Hep A, pediatric, unspecified formulation',
    ['HepA'],
  ),
  '32': AgByCvx(
    'meningococcal MPSV4',
    ['Meningococcal'],
  ),
  '33': AgByCvx(
    'pneumococcal polysaccharide PPV23',
    ['Pneumococcal'],
  ),
  '35': AgByCvx(
    'tetanus toxoid, adsorbed',
    ['Tetanus'],
  ),
  '37': AgByCvx(
    'Yellow Fever',
    ['Yellow Fever'],
  ),
  '38': AgByCvx(
    'rubella/mumps',
    ['Rubella', 'Mumps'],
  ),
  '39': AgByCvx(
    'Japanese encephalitis SC',
    ['Japanese Encephalitis'],
  ),
  '40': AgByCvx(
    'rabies, intradermal injection',
    ['Rabies'],
  ),
  '41': AgByCvx(
    'typhoid, parenteral',
    ['Typhoid'],
  ),
  '42': AgByCvx(
    'Hep B, adolescent/high risk infant',
    ['HepB'],
  ),
  '43': AgByCvx(
    'Hep B, adult',
    ['HepB'],
  ),
  '44': AgByCvx(
    'Hep B, dialysis',
    ['HepB'],
  ),
  '45': AgByCvx(
    'Hep B, unspecified formulation',
    ['HepB'],
  ),
  '46': AgByCvx(
    'Hib (PRP-D)',
    ['Hib'],
  ),
  '47': AgByCvx(
    'Hib (HbOC)',
    ['Hib'],
  ),
  '48': AgByCvx(
    'Hib (PRP-T)',
    ['Hib'],
  ),
  '49': AgByCvx(
    'Hib (PRP-OMP)',
    ['Hib'],
  ),
  '50': AgByCvx(
    'DTaP-Hib',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'Hib'],
  ),
  '51': AgByCvx(
    'Hib-Hep B',
    ['Hib', 'HepB'],
  ),
  '53': AgByCvx(
    'typhoid, parenteral, AKD (U.S. military)',
    ['Typhoid'],
  ),
  '52': AgByCvx(
    'Hep A, adult',
    ['HepA'],
  ),
  '62': AgByCvx(
    'HPV, quadrivalent',
    ['HPV'],
  ),
  '74': AgByCvx(
    'rotavirus, tetravalent',
    ['Rotavirus'],
  ),
  '83': AgByCvx(
    'Hep A, ped/adol, 2 dose',
    ['HepA'],
  ),
  '84': AgByCvx(
    'Hep A, ped/adol, 3 dose',
    ['HepA'],
  ),
  '85': AgByCvx(
    'Hep A, unspecified formulation',
    ['HepA'],
  ),
  '88': AgByCvx(
    'influenza, unspecified formulation',
    ['Influenza'],
  ),
  '89': AgByCvx(
    'polio, unspecified formulation',
    ['Polio'],
  ),
  '90': AgByCvx(
    'Rabies, unspecified formulation',
    ['Rabies'],
  ),
  '91': AgByCvx(
    'typhoid, unspecified formulation',
    ['Typhoid'],
  ),
  '94': AgByCvx(
    'MMRV',
    ['Measles', 'Mumps', 'Rubella', 'Varicella'],
  ),
  '100': AgByCvx(
    'pneumococcal conjugate PCV 7',
    ['Pneumococcal'],
  ),
  '101': AgByCvx(
    'Typhoid capsular polysaccharide',
    ['Typhoid'],
  ),
  '102': AgByCvx(
    'DTP-Hib-Hep B',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'Hib', 'HepB'],
  ),
  '103': AgByCvx(
    'meningococcal C conjugate',
    ['Meningococcal'],
  ),
  '104': AgByCvx(
    'Hep A-Hep B',
    ['HepA', 'HepB'],
  ),
  '106': AgByCvx(
    'DTaP, 5 pertussis antigens',
    ['Diphtheria', 'Tetanus', 'Pertussis'],
  ),
  '107': AgByCvx(
    'DTaP, unspecified formulation',
    ['Diphtheria', 'Tetanus', 'Pertussis'],
  ),
  '108': AgByCvx(
    'meningococcal, unspecified formulation',
    ['Meningococcal'],
  ),
  '109': AgByCvx(
    'pneumococcal, unspecified formulation',
    ['Pneumococcal'],
  ),
  '110': AgByCvx(
    'DTaP-Hep B-IPV',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'HepB', 'Polio'],
  ),
  '111': AgByCvx(
    'influenza, live, intranasal',
    ['Influenza'],
  ),
  '112': AgByCvx(
    'tetanus toxoid, unspecified formulation',
    ['Tetanus'],
  ),
  '113': AgByCvx(
    'Td (adult) preservative free',
    ['Tetanus', 'Diphtheria'],
  ),
  '114': AgByCvx(
    'meningococcal MCV4P',
    ['Meningococcal'],
  ),
  '115': AgByCvx(
    'Tdap',
    ['Tetanus', 'Diphtheria', 'Pertussis'],
  ),
  '116': AgByCvx(
    'rotavirus, pentavalent',
    ['Rotavirus'],
  ),
  '118': AgByCvx(
    'HPV, bivalent',
    ['HPV'],
  ),
  '119': AgByCvx(
    'rotavirus, monovalent',
    ['Rotavirus'],
  ),
  '120': AgByCvx(
    'DTaP-Hib-IPV',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'Hib', 'Polio'],
  ),
  '121': AgByCvx(
    'Zoster live',
    ['Varicella', 'Zoster'],
  ),
  '122': AgByCvx(
    'rotavirus, unspecified formulation',
    ['Rotavirus'],
  ),
  '129': AgByCvx(
    'Japanese Encephalitis, unspecified formulation',
    ['Japanese Encephalitis'],
  ),
  '130': AgByCvx(
    'DTaP-IPV',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'Polio'],
  ),
  '132': AgByCvx(
    'DTaP-IPV-HIB-HEP B, historical',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'Polio', 'Hib', 'HepB'],
  ),
  '133': AgByCvx(
    'Pneumococcal conjugate PCV 13',
    ['Pneumococcal'],
  ),
  '134': AgByCvx(
    'Japanese Encephalitis, VC',
    ['Japanese Encephalitis'],
  ),
  '135': AgByCvx(
    'Influenza, high dose seasonal',
    ['Influenza'],
  ),
  '136': AgByCvx(
    'Meningococcal MCV4O',
    ['Meningococcal'],
  ),
  '137': AgByCvx(
    'HPV, unspecified formulation',
    ['HPV'],
  ),
  '138': AgByCvx(
    'Td (adult)',
    ['Tetanus', 'Diphtheria'],
  ),
  '139': AgByCvx(
    'Td(adult) unspecified formulation',
    ['Tetanus', 'Diphtheria'],
  ),
  '140': AgByCvx(
    'Influenza, seasonal, injectable, preservative free',
    ['Influenza'],
  ),
  '141': AgByCvx(
    'Influenza, seasonal, injectable',
    ['Influenza'],
  ),
  '142': AgByCvx(
    'tetanus toxoid, not adsorbed',
    ['Tetanus'],
  ),
  '144': AgByCvx(
    'influenza, seasonal, intradermal, preservative free',
    ['Influenza'],
  ),
  '146': AgByCvx(
    'DTaP,IPV,Hib,HepB',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'Polio', 'Hib', 'HepB'],
  ),
  '147': AgByCvx(
    'meningococcal MCV4, unspecified formulation',
    ['Meningococcal'],
  ),
  '148': AgByCvx(
    'Meningococcal C/Y-HIB PRP',
    ['Meningococcal', 'Hib'],
  ),
  '149': AgByCvx(
    'influenza, live, intranasal, quadrivalent',
    ['Influenza'],
  ),
  '150': AgByCvx(
    'influenza, injectable, quadrivalent, preservative free',
    ['Influenza'],
  ),
  '151': AgByCvx(
    'influenza, nasal, unspecified formulation',
    ['Influenza'],
  ),
  '152': AgByCvx(
    'Pneumococcal Conjugate, unspecified formulation',
    ['Pneumococcal'],
  ),
  '153': AgByCvx(
    'Influenza, injectable, Madin Darby Canine Kidney, preservative free',
    ['Influenza'],
  ),
  '155': AgByCvx(
    'influenza, recombinant, injectable, preservative free',
    ['Influenza'],
  ),
  '158': AgByCvx(
    'influenza, injectable, quadrivalent',
    ['Influenza'],
  ),
  '161': AgByCvx(
    'Influenza, injectable,quadrivalent, preservative free, pediatric',
    ['Influenza'],
  ),
  '162': AgByCvx(
    'Meningococcal B, recombinant',
    ['Meningococcal B'],
  ),
  '163': AgByCvx(
    'Meningococcal B, OMV',
    ['Meningococcal B'],
  ),
  '164': AgByCvx(
    'meningococcal B, unspecified',
    ['Meningococcal B'],
  ),
  '165': AgByCvx(
    'HPV9',
    ['HPV'],
  ),
  '166': AgByCvx(
    'influenza, intradermal, quadrivalent, preservative free',
    ['Influenza'],
  ),
  '167': AgByCvx(
    'meningococcal, unknown serogroups',
    ['Meningococcal', 'Meningococcal B'],
  ),
  '168': AgByCvx(
    'influenza, trivalent, adjuvanted',
    ['Influenza'],
  ),
  '169': AgByCvx(
    'Hep A, live attenuated',
    ['HepA'],
  ),
  '170': AgByCvx(
    'DTAP/IPV/HIB - non-US',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'Polio', 'Hib'],
  ),
  '171': AgByCvx(
    'Influenza, injectable, MDCK, preservative free, quadrivalent',
    ['Influenza'],
  ),
  '172': AgByCvx(
    'cholera, WC-rBS',
    ['Cholera'],
  ),
  '173': AgByCvx(
    'cholera, BivWC',
    ['Cholera'],
  ),
  '174': AgByCvx(
    'cholera, live attenuated',
    ['Cholera'],
  ),
  '175': AgByCvx(
    'Rabies - IM Diploid cell culture',
    ['Rabies'],
  ),
  '176': AgByCvx(
    'Rabies - IM fibroblast culture',
    ['Rabies'],
  ),
  '177': AgByCvx(
    'pneumococcal conjugate PCV10',
    ['Pneumococcal'],
  ),
  '178': AgByCvx(
    'OPV bivalent',
    ['Polio'],
  ),
  '179': AgByCvx(
    'OPV ,monovalent, unspecified',
    ['Polio'],
  ),
  '182': AgByCvx(
    'OPV, Unspecified',
    ['Polio'],
  ),
  '183': AgByCvx(
    'Yellow fever vaccine - alt',
    ['Yellow Fever'],
  ),
  '184': AgByCvx(
    'Yellow fever, unspecified formulation',
    ['Yellow Fever'],
  ),
  '185': AgByCvx(
    'influenza, recombinant, quadrivalent,injectable, preservative free',
    ['Influenza'],
  ),
  '186': AgByCvx(
    'Influenza, injectable, MDCK, preservative, quadrivalent',
    ['Influenza'],
  ),
  '187': AgByCvx(
    'zoster recombinant',
    ['Zoster'],
  ),
  '188': AgByCvx(
    'zoster, unspecified formulation',
    ['Zoster'],
  ),
  '189': AgByCvx(
    'Hep B, adjuvanted',
    ['HepB'],
  ),
  '190': AgByCvx(
    'Typhoid conjugate vaccine (TCV)',
    ['Typhoid'],
  ),
  '191': AgByCvx(
    'meningococcal A polysaccharide',
    ['Meningococcal'],
  ),
  '192': AgByCvx(
    'meningococcal AC polysaccharide',
    ['Meningococcal'],
  ),
  '193': AgByCvx(
    'Hep A-Hep B, pediatric/adolescent',
    ['HepA', 'HepB'],
  ),
  '194': AgByCvx(
    'Influenza, Southern Hemisphere, unspecified formulation',
    ['Influenza'],
  ),
  '195': AgByCvx(
    'DT, IPV adsorbed',
    ['Diphtheria', 'Tetanus', 'Polio'],
  ),
  '196': AgByCvx(
    'Td, adsorbed, preservative free, adult use, Lf unspecified',
    ['Tetanus', 'Diphtheria'],
  ),
  '198': AgByCvx(
    'DTP-hepB-Hib Pentavalent Non-US',
    ['Diphtheria', 'Tetanus', 'Pertussis', 'HepB', 'Hib'],
  ),
};
