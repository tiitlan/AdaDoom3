pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 4.7.2" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#5b58711c#;
   pragma Export (C, u00001, "mainB");
   u00002 : constant Version_32 := 16#bebd3d3f#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#63cfd057#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#41464a46#;
   pragma Export (C, u00004, "neoS");
   u00005 : constant Version_32 := 16#2fa4b9e9#;
   pragma Export (C, u00005, "neo__foundationS");
   u00006 : constant Version_32 := 16#a318f9dd#;
   pragma Export (C, u00006, "neo__foundation__data_typesB");
   u00007 : constant Version_32 := 16#0642e50b#;
   pragma Export (C, u00007, "neo__foundation__data_typesS");
   u00008 : constant Version_32 := 16#99756144#;
   pragma Export (C, u00008, "ada__tagsB");
   u00009 : constant Version_32 := 16#c49b6a94#;
   pragma Export (C, u00009, "ada__tagsS");
   u00010 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00010, "adaS");
   u00011 : constant Version_32 := 16#f9bb3f55#;
   pragma Export (C, u00011, "ada__exceptionsB");
   u00012 : constant Version_32 := 16#6744d799#;
   pragma Export (C, u00012, "ada__exceptionsS");
   u00013 : constant Version_32 := 16#919fb168#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerB");
   u00014 : constant Version_32 := 16#29e1b15a#;
   pragma Export (C, u00014, "ada__exceptions__last_chance_handlerS");
   u00015 : constant Version_32 := 16#6daf90c4#;
   pragma Export (C, u00015, "systemS");
   u00016 : constant Version_32 := 16#8c5e58a5#;
   pragma Export (C, u00016, "system__soft_linksB");
   u00017 : constant Version_32 := 16#b1df2032#;
   pragma Export (C, u00017, "system__soft_linksS");
   u00018 : constant Version_32 := 16#27940d94#;
   pragma Export (C, u00018, "system__parametersB");
   u00019 : constant Version_32 := 16#db4d9c04#;
   pragma Export (C, u00019, "system__parametersS");
   u00020 : constant Version_32 := 16#90ffdd42#;
   pragma Export (C, u00020, "system__secondary_stackB");
   u00021 : constant Version_32 := 16#79c1b76a#;
   pragma Export (C, u00021, "system__secondary_stackS");
   u00022 : constant Version_32 := 16#ace32e1e#;
   pragma Export (C, u00022, "system__storage_elementsB");
   u00023 : constant Version_32 := 16#9762ed5c#;
   pragma Export (C, u00023, "system__storage_elementsS");
   u00024 : constant Version_32 := 16#4f750b3b#;
   pragma Export (C, u00024, "system__stack_checkingB");
   u00025 : constant Version_32 := 16#ce0d2ce8#;
   pragma Export (C, u00025, "system__stack_checkingS");
   u00026 : constant Version_32 := 16#fc178b81#;
   pragma Export (C, u00026, "system__exception_tableB");
   u00027 : constant Version_32 := 16#fcc14c61#;
   pragma Export (C, u00027, "system__exception_tableS");
   u00028 : constant Version_32 := 16#84debe5c#;
   pragma Export (C, u00028, "system__htableB");
   u00029 : constant Version_32 := 16#ee07deca#;
   pragma Export (C, u00029, "system__htableS");
   u00030 : constant Version_32 := 16#8b7dad61#;
   pragma Export (C, u00030, "system__string_hashB");
   u00031 : constant Version_32 := 16#4b334850#;
   pragma Export (C, u00031, "system__string_hashS");
   u00032 : constant Version_32 := 16#aad75561#;
   pragma Export (C, u00032, "system__exceptionsB");
   u00033 : constant Version_32 := 16#61515873#;
   pragma Export (C, u00033, "system__exceptionsS");
   u00034 : constant Version_32 := 16#010db1dc#;
   pragma Export (C, u00034, "system__exceptions_debugB");
   u00035 : constant Version_32 := 16#55dfb510#;
   pragma Export (C, u00035, "system__exceptions_debugS");
   u00036 : constant Version_32 := 16#b012ff50#;
   pragma Export (C, u00036, "system__img_intB");
   u00037 : constant Version_32 := 16#6f747006#;
   pragma Export (C, u00037, "system__img_intS");
   u00038 : constant Version_32 := 16#dc8e33ed#;
   pragma Export (C, u00038, "system__tracebackB");
   u00039 : constant Version_32 := 16#0c2844b1#;
   pragma Export (C, u00039, "system__tracebackS");
   u00040 : constant Version_32 := 16#907d882f#;
   pragma Export (C, u00040, "system__wch_conB");
   u00041 : constant Version_32 := 16#d244bef9#;
   pragma Export (C, u00041, "system__wch_conS");
   u00042 : constant Version_32 := 16#22fed88a#;
   pragma Export (C, u00042, "system__wch_stwB");
   u00043 : constant Version_32 := 16#ff5592f8#;
   pragma Export (C, u00043, "system__wch_stwS");
   u00044 : constant Version_32 := 16#b8a9e30d#;
   pragma Export (C, u00044, "system__wch_cnvB");
   u00045 : constant Version_32 := 16#ccba382f#;
   pragma Export (C, u00045, "system__wch_cnvS");
   u00046 : constant Version_32 := 16#129923ea#;
   pragma Export (C, u00046, "interfacesS");
   u00047 : constant Version_32 := 16#75729fba#;
   pragma Export (C, u00047, "system__wch_jisB");
   u00048 : constant Version_32 := 16#98c8a33b#;
   pragma Export (C, u00048, "system__wch_jisS");
   u00049 : constant Version_32 := 16#ada34a87#;
   pragma Export (C, u00049, "system__traceback_entriesB");
   u00050 : constant Version_32 := 16#3f8e7e85#;
   pragma Export (C, u00050, "system__traceback_entriesS");
   u00051 : constant Version_32 := 16#074eccb2#;
   pragma Export (C, u00051, "system__unsigned_typesS");
   u00052 : constant Version_32 := 16#e6965fe6#;
   pragma Export (C, u00052, "system__val_unsB");
   u00053 : constant Version_32 := 16#17e62189#;
   pragma Export (C, u00053, "system__val_unsS");
   u00054 : constant Version_32 := 16#46a1f7a9#;
   pragma Export (C, u00054, "system__val_utilB");
   u00055 : constant Version_32 := 16#660205db#;
   pragma Export (C, u00055, "system__val_utilS");
   u00056 : constant Version_32 := 16#b7fa72e7#;
   pragma Export (C, u00056, "system__case_utilB");
   u00057 : constant Version_32 := 16#c0b3f04c#;
   pragma Export (C, u00057, "system__case_utilS");
   u00058 : constant Version_32 := 16#78928eb3#;
   pragma Export (C, u00058, "system__tasking__protected_objectsB");
   u00059 : constant Version_32 := 16#0e06b2d3#;
   pragma Export (C, u00059, "system__tasking__protected_objectsS");
   u00060 : constant Version_32 := 16#23d6a5c7#;
   pragma Export (C, u00060, "system__soft_links__taskingB");
   u00061 : constant Version_32 := 16#ed4856ff#;
   pragma Export (C, u00061, "system__soft_links__taskingS");
   u00062 : constant Version_32 := 16#17d21067#;
   pragma Export (C, u00062, "ada__exceptions__is_null_occurrenceB");
   u00063 : constant Version_32 := 16#ee91a0eb#;
   pragma Export (C, u00063, "ada__exceptions__is_null_occurrenceS");
   u00064 : constant Version_32 := 16#9f1b736c#;
   pragma Export (C, u00064, "system__task_primitivesS");
   u00065 : constant Version_32 := 16#1faa77d9#;
   pragma Export (C, u00065, "system__os_interfaceS");
   u00066 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00066, "interfaces__cB");
   u00067 : constant Version_32 := 16#f05a3eb1#;
   pragma Export (C, u00067, "interfaces__cS");
   u00068 : constant Version_32 := 16#62120d5e#;
   pragma Export (C, u00068, "interfaces__c__stringsB");
   u00069 : constant Version_32 := 16#603c1c44#;
   pragma Export (C, u00069, "interfaces__c__stringsS");
   u00070 : constant Version_32 := 16#3ead0efd#;
   pragma Export (C, u00070, "system__win32S");
   u00071 : constant Version_32 := 16#d5f2abfb#;
   pragma Export (C, u00071, "system__task_primitives__operationsB");
   u00072 : constant Version_32 := 16#00837a4c#;
   pragma Export (C, u00072, "system__task_primitives__operationsS");
   u00073 : constant Version_32 := 16#6f001a54#;
   pragma Export (C, u00073, "system__exp_unsB");
   u00074 : constant Version_32 := 16#3a826f18#;
   pragma Export (C, u00074, "system__exp_unsS");
   u00075 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00075, "system__float_controlB");
   u00076 : constant Version_32 := 16#8d53d3f8#;
   pragma Export (C, u00076, "system__float_controlS");
   u00077 : constant Version_32 := 16#1826115c#;
   pragma Export (C, u00077, "system__interrupt_managementB");
   u00078 : constant Version_32 := 16#92c564a4#;
   pragma Export (C, u00078, "system__interrupt_managementS");
   u00079 : constant Version_32 := 16#c313b593#;
   pragma Export (C, u00079, "system__multiprocessorsB");
   u00080 : constant Version_32 := 16#55030fb7#;
   pragma Export (C, u00080, "system__multiprocessorsS");
   u00081 : constant Version_32 := 16#3fcdd715#;
   pragma Export (C, u00081, "system__os_primitivesB");
   u00082 : constant Version_32 := 16#dd7e1ced#;
   pragma Export (C, u00082, "system__os_primitivesS");
   u00083 : constant Version_32 := 16#aa4baafd#;
   pragma Export (C, u00083, "system__win32__extS");
   u00084 : constant Version_32 := 16#5052be8c#;
   pragma Export (C, u00084, "system__task_infoB");
   u00085 : constant Version_32 := 16#ef1d87cb#;
   pragma Export (C, u00085, "system__task_infoS");
   u00086 : constant Version_32 := 16#f765137c#;
   pragma Export (C, u00086, "system__taskingB");
   u00087 : constant Version_32 := 16#5cbc035c#;
   pragma Export (C, u00087, "system__taskingS");
   u00088 : constant Version_32 := 16#7b8aedca#;
   pragma Export (C, u00088, "system__stack_usageB");
   u00089 : constant Version_32 := 16#f4e602da#;
   pragma Export (C, u00089, "system__stack_usageS");
   u00090 : constant Version_32 := 16#773a2d5d#;
   pragma Export (C, u00090, "system__crtlS");
   u00091 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00091, "system__ioB");
   u00092 : constant Version_32 := 16#f3ed678b#;
   pragma Export (C, u00092, "system__ioS");
   u00093 : constant Version_32 := 16#a631786f#;
   pragma Export (C, u00093, "system__tasking__debugB");
   u00094 : constant Version_32 := 16#f32cb5c6#;
   pragma Export (C, u00094, "system__tasking__debugS");
   u00095 : constant Version_32 := 16#39591e91#;
   pragma Export (C, u00095, "system__concat_2B");
   u00096 : constant Version_32 := 16#967f6238#;
   pragma Export (C, u00096, "system__concat_2S");
   u00097 : constant Version_32 := 16#ae97ef6c#;
   pragma Export (C, u00097, "system__concat_3B");
   u00098 : constant Version_32 := 16#1b8592ae#;
   pragma Export (C, u00098, "system__concat_3S");
   u00099 : constant Version_32 := 16#c9fdc962#;
   pragma Export (C, u00099, "system__concat_6B");
   u00100 : constant Version_32 := 16#aa6565d0#;
   pragma Export (C, u00100, "system__concat_6S");
   u00101 : constant Version_32 := 16#def1dd00#;
   pragma Export (C, u00101, "system__concat_5B");
   u00102 : constant Version_32 := 16#7d965e65#;
   pragma Export (C, u00102, "system__concat_5S");
   u00103 : constant Version_32 := 16#3493e6c0#;
   pragma Export (C, u00103, "system__concat_4B");
   u00104 : constant Version_32 := 16#6ff0737a#;
   pragma Export (C, u00104, "system__concat_4S");
   u00105 : constant Version_32 := 16#1eab0e09#;
   pragma Export (C, u00105, "system__img_enum_newB");
   u00106 : constant Version_32 := 16#eaa85b34#;
   pragma Export (C, u00106, "system__img_enum_newS");
   u00107 : constant Version_32 := 16#194ccd7b#;
   pragma Export (C, u00107, "system__img_unsB");
   u00108 : constant Version_32 := 16#98baf045#;
   pragma Export (C, u00108, "system__img_unsS");
   u00109 : constant Version_32 := 16#ee80728a#;
   pragma Export (C, u00109, "system__tracesB");
   u00110 : constant Version_32 := 16#9fb2f86e#;
   pragma Export (C, u00110, "system__tracesS");
   u00111 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00111, "ada__stringsS");
   u00112 : constant Version_32 := 16#914b496f#;
   pragma Export (C, u00112, "ada__strings__fixedB");
   u00113 : constant Version_32 := 16#dc686502#;
   pragma Export (C, u00113, "ada__strings__fixedS");
   u00114 : constant Version_32 := 16#96e9c1e7#;
   pragma Export (C, u00114, "ada__strings__mapsB");
   u00115 : constant Version_32 := 16#24318e4c#;
   pragma Export (C, u00115, "ada__strings__mapsS");
   u00116 : constant Version_32 := 16#d37ef033#;
   pragma Export (C, u00116, "system__bit_opsB");
   u00117 : constant Version_32 := 16#c30e4013#;
   pragma Export (C, u00117, "system__bit_opsS");
   u00118 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00118, "ada__charactersS");
   u00119 : constant Version_32 := 16#051b1b7b#;
   pragma Export (C, u00119, "ada__characters__latin_1S");
   u00120 : constant Version_32 := 16#86f7ec7f#;
   pragma Export (C, u00120, "ada__strings__searchB");
   u00121 : constant Version_32 := 16#b5a8c1d6#;
   pragma Export (C, u00121, "ada__strings__searchS");
   u00122 : constant Version_32 := 16#bc438ed0#;
   pragma Export (C, u00122, "ada__strings__wide_fixedB");
   u00123 : constant Version_32 := 16#412537cd#;
   pragma Export (C, u00123, "ada__strings__wide_fixedS");
   u00124 : constant Version_32 := 16#83691158#;
   pragma Export (C, u00124, "ada__strings__wide_mapsB");
   u00125 : constant Version_32 := 16#cbe64e20#;
   pragma Export (C, u00125, "ada__strings__wide_mapsS");
   u00126 : constant Version_32 := 16#6da109c8#;
   pragma Export (C, u00126, "system__storage_pools__subpoolsB");
   u00127 : constant Version_32 := 16#578cba01#;
   pragma Export (C, u00127, "system__storage_pools__subpoolsS");
   u00128 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00128, "system__address_imageB");
   u00129 : constant Version_32 := 16#cc430dfe#;
   pragma Export (C, u00129, "system__address_imageS");
   u00130 : constant Version_32 := 16#20f9fa25#;
   pragma Export (C, u00130, "system__finalization_mastersB");
   u00131 : constant Version_32 := 16#075a3ce8#;
   pragma Export (C, u00131, "system__finalization_mastersS");
   u00132 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00132, "system__img_boolB");
   u00133 : constant Version_32 := 16#9876e12f#;
   pragma Export (C, u00133, "system__img_boolS");
   u00134 : constant Version_32 := 16#8cbe6205#;
   pragma Export (C, u00134, "ada__finalizationB");
   u00135 : constant Version_32 := 16#40c80ee1#;
   pragma Export (C, u00135, "ada__finalizationS");
   u00136 : constant Version_32 := 16#1358602f#;
   pragma Export (C, u00136, "ada__streamsS");
   u00137 : constant Version_32 := 16#f7ab51aa#;
   pragma Export (C, u00137, "system__finalization_rootB");
   u00138 : constant Version_32 := 16#6cd32211#;
   pragma Export (C, u00138, "system__finalization_rootS");
   u00139 : constant Version_32 := 16#a7a37cb6#;
   pragma Export (C, u00139, "system__storage_poolsB");
   u00140 : constant Version_32 := 16#be018fa9#;
   pragma Export (C, u00140, "system__storage_poolsS");
   u00141 : constant Version_32 := 16#a6e358bc#;
   pragma Export (C, u00141, "system__stream_attributesB");
   u00142 : constant Version_32 := 16#e89b4b3f#;
   pragma Export (C, u00142, "system__stream_attributesS");
   u00143 : constant Version_32 := 16#b46168d5#;
   pragma Export (C, u00143, "ada__io_exceptionsS");
   u00144 : constant Version_32 := 16#7d27e0c7#;
   pragma Export (C, u00144, "ada__strings__wide_searchB");
   u00145 : constant Version_32 := 16#1748eeac#;
   pragma Export (C, u00145, "ada__strings__wide_searchS");
   u00146 : constant Version_32 := 16#bc0fac87#;
   pragma Export (C, u00146, "ada__text_ioB");
   u00147 : constant Version_32 := 16#36d750a9#;
   pragma Export (C, u00147, "ada__text_ioS");
   u00148 : constant Version_32 := 16#7a48d8b1#;
   pragma Export (C, u00148, "interfaces__c_streamsB");
   u00149 : constant Version_32 := 16#a539be81#;
   pragma Export (C, u00149, "interfaces__c_streamsS");
   u00150 : constant Version_32 := 16#cd08bce0#;
   pragma Export (C, u00150, "system__file_ioB");
   u00151 : constant Version_32 := 16#60d89729#;
   pragma Export (C, u00151, "system__file_ioS");
   u00152 : constant Version_32 := 16#a50435f4#;
   pragma Export (C, u00152, "system__crtl__runtimeS");
   u00153 : constant Version_32 := 16#f5991885#;
   pragma Export (C, u00153, "system__os_libB");
   u00154 : constant Version_32 := 16#a6d80a38#;
   pragma Export (C, u00154, "system__os_libS");
   u00155 : constant Version_32 := 16#4cd8aca0#;
   pragma Export (C, u00155, "system__stringsB");
   u00156 : constant Version_32 := 16#da45da00#;
   pragma Export (C, u00156, "system__stringsS");
   u00157 : constant Version_32 := 16#b2907efe#;
   pragma Export (C, u00157, "system__file_control_blockS");
   u00158 : constant Version_32 := 16#ba5d60c7#;
   pragma Export (C, u00158, "system__pool_globalB");
   u00159 : constant Version_32 := 16#d56df0a6#;
   pragma Export (C, u00159, "system__pool_globalS");
   u00160 : constant Version_32 := 16#c501497e#;
   pragma Export (C, u00160, "system__memoryB");
   u00161 : constant Version_32 := 16#a7242cd1#;
   pragma Export (C, u00161, "system__memoryS");
   u00162 : constant Version_32 := 16#bd9762b5#;
   pragma Export (C, u00162, "neo__foundation__package_testingB");
   u00163 : constant Version_32 := 16#abf44294#;
   pragma Export (C, u00163, "neo__foundation__package_testingS");
   u00164 : constant Version_32 := 16#3f197902#;
   pragma Export (C, u00164, "neo__foundation__text_ioB");
   u00165 : constant Version_32 := 16#0176fc46#;
   pragma Export (C, u00165, "neo__foundation__text_ioS");
   u00166 : constant Version_32 := 16#a347755d#;
   pragma Export (C, u00166, "ada__text_io__modular_auxB");
   u00167 : constant Version_32 := 16#534ccfb2#;
   pragma Export (C, u00167, "ada__text_io__modular_auxS");
   u00168 : constant Version_32 := 16#515dc0e3#;
   pragma Export (C, u00168, "ada__text_io__generic_auxB");
   u00169 : constant Version_32 := 16#a6c327d3#;
   pragma Export (C, u00169, "ada__text_io__generic_auxS");
   u00170 : constant Version_32 := 16#ef6c8032#;
   pragma Export (C, u00170, "system__img_biuB");
   u00171 : constant Version_32 := 16#c16c44ff#;
   pragma Export (C, u00171, "system__img_biuS");
   u00172 : constant Version_32 := 16#10618bf9#;
   pragma Export (C, u00172, "system__img_llbB");
   u00173 : constant Version_32 := 16#80ab5401#;
   pragma Export (C, u00173, "system__img_llbS");
   u00174 : constant Version_32 := 16#06417083#;
   pragma Export (C, u00174, "system__img_lluB");
   u00175 : constant Version_32 := 16#4e87cc71#;
   pragma Export (C, u00175, "system__img_lluS");
   u00176 : constant Version_32 := 16#f931f062#;
   pragma Export (C, u00176, "system__img_llwB");
   u00177 : constant Version_32 := 16#29c77797#;
   pragma Export (C, u00177, "system__img_llwS");
   u00178 : constant Version_32 := 16#b532ff4e#;
   pragma Export (C, u00178, "system__img_wiuB");
   u00179 : constant Version_32 := 16#af2dc36d#;
   pragma Export (C, u00179, "system__img_wiuS");
   u00180 : constant Version_32 := 16#68f8d5f8#;
   pragma Export (C, u00180, "system__val_lluB");
   u00181 : constant Version_32 := 16#7dbc9bc0#;
   pragma Export (C, u00181, "system__val_lluS");
   u00182 : constant Version_32 := 16#6391c20e#;
   pragma Export (C, u00182, "ada__strings__wide_unboundedB");
   u00183 : constant Version_32 := 16#e5d4b589#;
   pragma Export (C, u00183, "ada__strings__wide_unboundedS");
   u00184 : constant Version_32 := 16#cd2c1152#;
   pragma Export (C, u00184, "system__compare_array_unsigned_16B");
   u00185 : constant Version_32 := 16#79ae9d2f#;
   pragma Export (C, u00185, "system__compare_array_unsigned_16S");
   u00186 : constant Version_32 := 16#9d3d925a#;
   pragma Export (C, u00186, "system__address_operationsB");
   u00187 : constant Version_32 := 16#add17953#;
   pragma Export (C, u00187, "system__address_operationsS");
   u00188 : constant Version_32 := 16#6214eb0a#;
   pragma Export (C, u00188, "system__machine_codeS");
   u00189 : constant Version_32 := 16#8d43fb6a#;
   pragma Export (C, u00189, "system__atomic_countersB");
   u00190 : constant Version_32 := 16#2733fc70#;
   pragma Export (C, u00190, "system__atomic_countersS");
   u00191 : constant Version_32 := 16#7c3431af#;
   pragma Export (C, u00191, "ada__wide_text_ioB");
   u00192 : constant Version_32 := 16#407042be#;
   pragma Export (C, u00192, "ada__wide_text_ioS");
   u00193 : constant Version_32 := 16#1f9db19c#;
   pragma Export (C, u00193, "neo__systemB");
   u00194 : constant Version_32 := 16#86b5145d#;
   pragma Export (C, u00194, "neo__systemS");
   u00195 : constant Version_32 := 16#586feede#;
   pragma Export (C, u00195, "neo__windowsB");
   u00196 : constant Version_32 := 16#e199fa77#;
   pragma Export (C, u00196, "neo__windowsS");
   u00197 : constant Version_32 := 16#aaed6024#;
   pragma Export (C, u00197, "ada__command_lineB");
   u00198 : constant Version_32 := 16#df5044bd#;
   pragma Export (C, u00198, "ada__command_lineS");
   u00199 : constant Version_32 := 16#4207adb5#;
   pragma Export (C, u00199, "neo__system__memoryB");
   u00200 : constant Version_32 := 16#c60df2bb#;
   pragma Export (C, u00200, "neo__system__memoryS");
   u00201 : constant Version_32 := 16#6d0081c3#;
   pragma Export (C, u00201, "system__img_realB");
   u00202 : constant Version_32 := 16#aa07c126#;
   pragma Export (C, u00202, "system__img_realS");
   u00203 : constant Version_32 := 16#b2944ef4#;
   pragma Export (C, u00203, "system__fat_llfS");
   u00204 : constant Version_32 := 16#3ddff6b3#;
   pragma Export (C, u00204, "system__powten_tableS");
   u00205 : constant Version_32 := 16#733738b4#;
   pragma Export (C, u00205, "neo__system__processorB");
   u00206 : constant Version_32 := 16#4f37f118#;
   pragma Export (C, u00206, "neo__system__processorS");
   u00207 : constant Version_32 := 16#c2fac826#;
   pragma Export (C, u00207, "ada__calendar__delaysB");
   u00208 : constant Version_32 := 16#ab1c3be0#;
   pragma Export (C, u00208, "ada__calendar__delaysS");
   u00209 : constant Version_32 := 16#3972cff0#;
   pragma Export (C, u00209, "ada__calendarB");
   u00210 : constant Version_32 := 16#0bc00dc5#;
   pragma Export (C, u00210, "ada__calendarS");
   u00211 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00211, "gnatS");
   u00212 : constant Version_32 := 16#2648146e#;
   pragma Export (C, u00212, "gnat__tracebackB");
   u00213 : constant Version_32 := 16#b4d4404f#;
   pragma Export (C, u00213, "gnat__tracebackS");
   u00214 : constant Version_32 := 16#83c02e81#;
   pragma Export (C, u00214, "ada__exceptions__tracebackB");
   u00215 : constant Version_32 := 16#8ec703c9#;
   pragma Export (C, u00215, "ada__exceptions__tracebackS");
   u00216 : constant Version_32 := 16#edb3c47b#;
   pragma Export (C, u00216, "gnat__traceback__symbolicB");
   u00217 : constant Version_32 := 16#21bcbbfd#;
   pragma Export (C, u00217, "gnat__traceback__symbolicS");
   u00218 : constant Version_32 := 16#5a1636c9#;
   pragma Export (C, u00218, "neo__system__textB");
   u00219 : constant Version_32 := 16#b4b67f2d#;
   pragma Export (C, u00219, "neo__system__textS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.float_control%s
   --  system.float_control%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.img_real%s
   --  system.io%s
   --  system.io%b
   --  system.machine_code%s
   --  system.atomic_counters%b
   --  system.multiprocessors%s
   --  system.os_primitives%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.powten_table%s
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  system.soft_links%s
   --  system.traces%s
   --  system.traces%b
   --  system.unsigned_types%s
   --  system.exp_uns%s
   --  system.exp_uns%b
   --  system.fat_llf%s
   --  system.img_biu%s
   --  system.img_biu%b
   --  system.img_llb%s
   --  system.img_llb%b
   --  system.img_llu%s
   --  system.img_llu%b
   --  system.img_llw%s
   --  system.img_llw%b
   --  system.img_uns%s
   --  system.img_uns%b
   --  system.img_real%b
   --  system.img_wiu%s
   --  system.img_wiu%b
   --  system.val_llu%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_llu%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.compare_array_unsigned_16%s
   --  system.compare_array_unsigned_16%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.concat_6%s
   --  system.concat_6%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.fixed%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.tags%s
   --  ada.streams%s
   --  interfaces.c%s
   --  system.multiprocessors%b
   --  interfaces.c.strings%s
   --  system.crtl.runtime%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.win32%s
   --  system.os_interface%s
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking%b
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.win32.ext%s
   --  system.task_primitives.operations%b
   --  system.os_primitives%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.secondary_stack%s
   --  interfaces.c.strings%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.fixed%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  ada.command_line%b
   --  system.secondary_stack%b
   --  system.address_image%b
   --  ada.exceptions.traceback%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools%b
   --  ada.strings.wide_maps%s
   --  ada.strings.wide_maps%b
   --  ada.strings.wide_fixed%s
   --  ada.strings.wide_search%s
   --  ada.strings.wide_search%b
   --  ada.strings.wide_fixed%b
   --  ada.strings.wide_unbounded%s
   --  ada.strings.wide_unbounded%b
   --  system.os_lib%s
   --  system.os_lib%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.file_control_block%s
   --  ada.wide_text_io%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.wide_text_io%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  ada.text_io.generic_aux%s
   --  ada.text_io.generic_aux%b
   --  ada.text_io.modular_aux%s
   --  ada.text_io.modular_aux%b
   --  gnat.traceback%s
   --  gnat.traceback%b
   --  gnat.traceback.symbolic%s
   --  gnat.traceback.symbolic%b
   --  neo%s
   --  neo.foundation%s
   --  neo.foundation.data_types%s
   --  neo.foundation.data_types%b
   --  neo.foundation.text_io%s
   --  neo.foundation.text_io%b
   --  neo.foundation.package_testing%s
   --  neo.foundation.package_testing%b
   --  neo.system%s
   --  neo.system.memory%s
   --  neo.system.processor%s
   --  neo.system.text%s
   --  main%b
   --  neo.windows%s
   --  neo.windows%b
   --  neo.system.text%b
   --  neo.system.processor%b
   --  neo.system.memory%b
   --  neo.system%b
   --  END ELABORATION ORDER


end ada_main;
