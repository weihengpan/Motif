//
//  MotionDataSample+PreviewSamples.swift
//  Motif
//
//  Created by Pan Weiheng on 2020/4/2.
//

import Foundation

#if DEBUG
extension MotionDataSample {
    
    static let previewSamples: [MotionDataSample] = {
        let json = """
        [
          {
            "startTime" : 607604234.287691,
            "id" : "4A33B101-0BD0-4753-AAFC-31FD33B77765",
            "entries" : [
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180889.51401075,
                  "magneticField" : [
                    -236.23646545410156,
                    -123.99821472167969,
                    -167.231201171875
                  ],
                  "timestamp" : 607604234.30023122
                },
                "id" : "F611DDAB-9EED-4EF3-AF3E-216E54C55EAF",
                "gyroData" : {
                  "timeSinceBoot" : 1180889.50523575,
                  "rotationRate" : [
                    0.097069025039672852,
                    -0.0068328725174069431,
                    -0.044052679091691971
                  ],
                  "timestamp" : 607604234.2914561
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180889.56905775,
                  "acceleration" : [
                    -0.25628662109375,
                    -0.501251220703125,
                    -0.811004638671875
                  ],
                  "timestamp" : 607604234.35527861
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    0.044152364134788513,
                    -0.011149709112942222,
                    -0.0079770749434828724
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.0024123787879943856,
                    0.00020298361778259269,
                    -0.0043908953666687029
                  ],
                  "gravity" : [
                    -0.24984830617904663,
                    -0.47459763288497925,
                    -0.84399813413619995
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.28781011337777562,
                    0.49450683987053112,
                    0.081618964945995631
                  ],
                  "timestamp" : 607604235.26759875,
                  "timeSinceBoot" : 1180890.4813786668,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180890.5101616667,
                  "magneticField" : [
                    -236.1156005859375,
                    -123.75410461425781,
                    -166.96052551269531
                  ],
                  "timestamp" : 607604235.29638839
                },
                "id" : "3C521F8D-3786-4AEB-937E-75518DD35F75",
                "gyroData" : {
                  "timeSinceBoot" : 1180890.5051526667,
                  "rotationRate" : [
                    0.013624732382595544,
                    -0.01510784681886434,
                    -0.011543205007910725
                  ],
                  "timestamp" : 607604235.29137933
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180890.5702476667,
                  "acceleration" : [
                    -0.2437744140625,
                    -0.4750213623046875,
                    -0.8456573486328125
                  ],
                  "timestamp" : 607604235.35647571
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.0090324617922306061,
                    0.0065072309225797679,
                    -0.0048961313441395777
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.00037983059883117687,
                    -0.0026800930500030518,
                    -0.00012797117233276367
                  ],
                  "gravity" : [
                    -0.25099274516105652,
                    -0.4752848744392395,
                    -0.84327155351638794
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.28929177158215391,
                    0.49528779775244269,
                    0.080440095411348361
                  ],
                  "timestamp" : 607604236.26879907,
                  "timeSinceBoot" : 1180891.4825725001,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180891.5062915001,
                  "magneticField" : [
                    -236.12646484375,
                    -123.41766357421875,
                    -167.23904418945312
                  ],
                  "timestamp" : 607604236.2925241
                },
                "id" : "219DA866-0866-41DF-9140-A6E07ECDB14A",
                "gyroData" : {
                  "timeSinceBoot" : 1180891.5050955,
                  "rotationRate" : [
                    0.012289157137274739,
                    -0.018298579379916198,
                    -0.0052493568509817123
                  ],
                  "timestamp" : 607604236.29132807
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180891.5714415,
                  "acceleration" : [
                    -0.250518798828125,
                    -0.4782562255859375,
                    -0.8349456787109375
                  ],
                  "timestamp" : 607604236.35767734
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.27714687585830688,
                    0.11138670146465302,
                    0.046763330698013292
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.0061464905738830584,
                    -0.0081730186939239502,
                    0.0089812278747558594
                  ],
                  "gravity" : [
                    -0.24226035177707672,
                    -0.43292698264122009,
                    -0.86826503276824951
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.27209655593794618,
                    0.44773728627605724,
                    0.070173188857176841
                  ],
                  "timestamp" : 607604237.27000356,
                  "timeSinceBoot" : 1180892.4837702501,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180893.4984702917,
                  "magneticField" : [
                    -235.55078125,
                    -122.90298461914062,
                    -166.82640075683594
                  ],
                  "timestamp" : 607604238.28470945
                },
                "id" : "26C5C01F-2FC1-43AD-AABC-6DEE568CCEDA",
                "gyroData" : {
                  "timeSinceBoot" : 1180892.50504325,
                  "rotationRate" : [
                    -0.27581879496574402,
                    0.096557699143886566,
                    0.064825333654880551
                  ],
                  "timestamp" : 607604237.29128301
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180892.57263925,
                  "acceleration" : [
                    -0.2281341552734375,
                    -0.4132232666015625,
                    -0.88702392578125
                  ],
                  "timestamp" : 607604237.35887957
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    0.012449531815946102,
                    0.018194716423749931,
                    -0.00063022144604474284
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.0005839914083480835,
                    0.0055403709411621111,
                    0.00058495998382568359
                  ],
                  "gravity" : [
                    -0.21479323506355286,
                    -0.3688817024230957,
                    -0.90431749820709229
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.23319845690743674,
                    0.3778055707261922,
                    0.081594598876651825
                  ],
                  "timestamp" : 607604238.27119994,
                  "timeSinceBoot" : 1180893.4849602918,
                  "heading" : -1
                }
              }
            ],
            "deviceModel" : "iPhone12,3",
            "samplingRate" : 1
          },
          {
            "startTime" : 607604242.95513904,
            "id" : "4C308067-7F99-44AD-9319-80C91911A345",
            "entries" : [
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180898.1753664168,
                  "magneticField" : [
                    -235.91841125488281,
                    -123.09405517578125,
                    -164.88398742675781
                  ],
                  "timestamp" : 607604242.96164155
                },
                "id" : "47D08510-7A2C-4EE9-A15C-8F7A3A21D274",
                "gyroData" : {
                  "timeSinceBoot" : 1180898.1730784168,
                  "rotationRate" : [
                    7.0307454734575003e-05,
                    0.0078339548781514202,
                    -0.0048592034727334976
                  ],
                  "timestamp" : 607604242.9593538
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180898.1793284167,
                  "acceleration" : [
                    -0.3155517578125,
                    -0.4681396484375,
                    -0.79266357421875
                  ],
                  "timestamp" : 607604242.96560514
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    0.0049147503450512903,
                    0.0049516479484736919,
                    -0.00058437197003513575
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.0021679997444152832,
                    0.0026841163635253906,
                    9.4056129455566406e-05
                  ],
                  "gravity" : [
                    -0.31725764274597168,
                    -0.45873609185218811,
                    -0.83000528812408447
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.36509913621217704,
                    0.47657227727667667,
                    0.090474917431986213
                  ],
                  "timestamp" : 607604243.93550026,
                  "timeSinceBoot" : 1180899.1492250417,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180900.16749725,
                  "magneticField" : [
                    -235.34577941894531,
                    -122.67195129394531,
                    -165.10694885253906
                  ],
                  "timestamp" : 607604244.95377922
                },
                "id" : "9867C9A9-1D93-4B58-82BD-046C59DB0F67",
                "gyroData" : {
                  "timeSinceBoot" : 1180899.1729990419,
                  "rotationRate" : [
                    0.0049550775438547134,
                    -0.0018234663875773549,
                    -0.0028240159153938293
                  ],
                  "timestamp" : 607604243.95928085
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180899.1805230416,
                  "acceleration" : [
                    -0.3192138671875,
                    -0.4575958251953125,
                    -0.8248291015625
                  ],
                  "timestamp" : 607604243.96680593
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.0017586958128958947,
                    0.00035216100513935089,
                    0.0024515925906598568
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.0018256604671478278,
                    0.0025469660758972168,
                    0.00094521045684814421
                  ],
                  "gravity" : [
                    -0.31566211581230164,
                    -0.45846164226531982,
                    -0.83076494932174683
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.36311697211429872,
                    0.47626341508313524,
                    0.09053148084289038
                  ],
                  "timestamp" : 607604244.93670595,
                  "timeSinceBoot" : 1180900.1504242502,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180901.1635392501,
                  "magneticField" : [
                    -234.35789489746094,
                    -122.41004943847656,
                    -164.0474853515625
                  ],
                  "timestamp" : 607604245.94982684
                },
                "id" : "3467292B-7E11-4094-9126-27E8AC2E222D",
                "gyroData" : {
                  "timeSinceBoot" : 1180900.1729482501,
                  "rotationRate" : [
                    -0.0025755430106073618,
                    -0.019913787022233009,
                    -0.0045255096629261988
                  ],
                  "timestamp" : 607604244.95923591
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180900.1817222501,
                  "acceleration" : [
                    -0.31781005859375,
                    -0.4586029052734375,
                    -0.8229522705078125
                  ],
                  "timestamp" : 607604244.96801078
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    0.085031583905220032,
                    0.02248786389827729,
                    -0.016337174922227859
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.0012153983116149902,
                    0.009222567081451416,
                    -0.0031495690345764173
                  ],
                  "gravity" : [
                    -0.27631431818008423,
                    -0.34645479917526245,
                    -0.89644825458526611
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.2989921594813798,
                    0.35378920025328692,
                    0.086770105616006621
                  ],
                  "timestamp" : 607604245.93790901,
                  "timeSinceBoot" : 1180901.15162125,
                  "heading" : -1
                }
              }
            ],
            "deviceModel" : "iPhone12,3",
            "samplingRate" : 1
          },
          {
            "startTime" : 607604250.21143699,
            "id" : "BB0D908C-D9F1-46CA-B6CD-7066BDB66EA2",
            "entries" : [
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180905.430319875,
                  "magneticField" : [
                    -235.59580993652344,
                    -122.55126953125,
                    -166.48236083984375
                  ],
                  "timestamp" : 607604250.21663666
                },
                "id" : "94F09D25-4372-4C72-9D91-A9B360292246",
                "gyroData" : {
                  "timeSinceBoot" : 1180905.4292688752,
                  "rotationRate" : [
                    0.058083277195692062,
                    -0.034428548067808151,
                    -0.010726680047810078
                  ],
                  "timestamp" : 607604250.21558571
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180905.4880668751,
                  "acceleration" : [
                    -0.2967987060546875,
                    -0.513458251953125,
                    -0.784393310546875
                  ],
                  "timestamp" : 607604250.27438378
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    0.015317074954509735,
                    -0.011927983723580834,
                    0.0019525543320924037
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.0049602687358856201,
                    -0.00081342458724975553,
                    -0.0042442083358764648
                  ],
                  "gravity" : [
                    -0.29682669043540955,
                    -0.50291872024536133,
                    -0.81176763772964478
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.35055251971616391,
                    0.52697230610819012,
                    0.095800576300581114
                  ],
                  "timestamp" : 607604250.39077771,
                  "timeSinceBoot" : 1180905.604461875,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180905.6315578751,
                  "magneticField" : [
                    -235.97430419921875,
                    -122.74040222167969,
                    -166.91659545898438
                  ],
                  "timestamp" : 607604250.41787517
                },
                "id" : "A4E6D35D-CEE5-4B86-B2CA-C0A6FB1F3AB5",
                "gyroData" : {
                  "timeSinceBoot" : 1180905.6295098751,
                  "rotationRate" : [
                    -0.019233349710702896,
                    -0.014445251785218716,
                    0.0068416609428822968
                  ],
                  "timestamp" : 607604250.41582704
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180905.6883078751,
                  "acceleration" : [
                    -0.3023223876953125,
                    -0.502655029296875,
                    -0.8094635009765625
                  ],
                  "timestamp" : 607604250.47462666
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.022931439802050591,
                    0.0034354561939835561,
                    0.013190750032663345
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.00052034854888916016,
                    -0.0029892921447753906,
                    0.0053747892379760725
                  ],
                  "gravity" : [
                    -0.29822772741317749,
                    -0.50081896781921387,
                    -0.81255191564559937
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.35176156696966426,
                    0.5245447226305151,
                    0.095894582697294367
                  ],
                  "timestamp" : 607604250.59101963,
                  "timeSinceBoot" : 1180905.804701875,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180905.8327948751,
                  "magneticField" : [
                    -236.11833190917969,
                    -122.84184265136719,
                    -166.788818359375
                  ],
                  "timestamp" : 607604250.61911356
                },
                "id" : "5E890FB6-2520-4299-916F-CB48460BBE61",
                "gyroData" : {
                  "timeSinceBoot" : 1180905.829749875,
                  "rotationRate" : [
                    0.0039300266653299332,
                    -0.011498464271426197,
                    -0.0030431940685957662
                  ],
                  "timestamp" : 607604250.61606884
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180905.888547875,
                  "acceleration" : [
                    -0.2937469482421875,
                    -0.5042266845703125,
                    -0.8087615966796875
                  ],
                  "timestamp" : 607604250.67486727
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.011946810409426686,
                    0.00048638414591550811,
                    -0.0022701169364154339
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.0027433335781097412,
                    0.0022110044956207275,
                    0.0043910741806030256
                  ],
                  "gravity" : [
                    -0.29931578040122986,
                    -0.49961048364639282,
                    -0.81289571523666382
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.352803950398619,
                    0.5231490708416755,
                    0.095734429203662749
                  ],
                  "timestamp" : 607604250.79126179,
                  "timeSinceBoot" : 1180906.0049428751,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180906.0340565001,
                  "magneticField" : [
                    -236.17153930664062,
                    -122.62251281738281,
                    -166.98301696777344
                  ],
                  "timestamp" : 607604250.82037604
                },
                "id" : "94DEAC05-013F-449B-86B7-F7C4288D6352",
                "gyroData" : {
                  "timeSinceBoot" : 1180906.0299945001,
                  "rotationRate" : [
                    -0.0044703823514282703,
                    0.0004793689877260478,
                    -0.0035534559283405555
                  ],
                  "timestamp" : 607604250.81631482
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180906.0887925001,
                  "acceleration" : [
                    -0.30902099609375,
                    -0.5114288330078125,
                    -0.7805023193359375
                  ],
                  "timestamp" : 607604250.87511313
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    0.026427527889609337,
                    0.079477548599243192,
                    -0.025868954136967659
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.040168911218643188,
                    0.085268884897232056,
                    0.0010911822319030762
                  ],
                  "gravity" : [
                    -0.29912164807319641,
                    -0.49769219756126404,
                    -0.81414294242858887
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.35209706062927837,
                    0.52093601132252465,
                    0.096931691847074813
                  ],
                  "timestamp" : 607604250.99150741,
                  "timeSinceBoot" : 1180906.2051875,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180906.2353145001,
                  "magneticField" : [
                    -236.09512329101562,
                    -122.70921325683594,
                    -166.10151672363281
                  ],
                  "timestamp" : 607604251.02163601
                },

                "id" : "86D985C4-3B47-4947-97BF-B2782290DF35",
                "gyroData" : {
                  "timeSinceBoot" : 1180906.2302355,
                  "rotationRate" : [
                    -0.16308452188968658,
                    -0.10217137634754181,
                    0.049043174833059311
                  ],
                  "timestamp" : 607604251.01655662
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180906.2890335,
                  "acceleration" : [
                    -0.2972869873046875,
                    -0.50799560546875,
                    -0.80615234375
                  ],
                  "timestamp" : 607604251.07535493
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.16621021926403046,
                    0.79550421237945557,
                    -0.14070035517215729
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.12454968690872192,
                    0.059722810983657837,
                    0.084399223327636719
                  ],
                  "gravity" : [
                    -0.30490517616271973,
                    -0.43781498074531555,
                    -0.84578418731689453
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.34599814289885045,
                    0.45316689713746539,
                    0.092408699005035483
                  ],
                  "timestamp" : 607604251.19174922,
                  "timeSinceBoot" : 1180906.4054275001,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180906.4365685,
                  "magneticField" : [
                    -235.58421325683594,
                    -122.79849243164062,
                    -165.9390869140625
                  ],
                  "timestamp" : 607604251.22289062
                },
                "id" : "E4BACA38-8FBB-42E8-847C-67B9EEB0D11F",
                "gyroData" : {
                  "timeSinceBoot" : 1180906.4304765002,
                  "rotationRate" : [
                    -0.090004459023475675,
                    0.69559633731842041,
                    -0.26968446373939514
                  ],
                  "timestamp" : 607604251.21679914
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180906.4892745002,
                  "acceleration" : [
                    -0.2314453125,
                    -0.379669189453125,
                    -0.9240875244140625
                  ],
                  "timestamp" : 607604251.27559781
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.28992113471031189,
                    0.088271886110305786,
                    -0.010398614220321178
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.030431568622589111,
                    -0.032656878232955919,
                    0.022168457508087158
                  ],
                  "gravity" : [
                    -0.24486027657985687,
                    -0.38587158918380737,
                    -0.88946419954299927
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.2686354755742793,
                    0.39615241004066232,
                    0.076378367171703404
                  ],
                  "timestamp" : 607604251.3919909,
                  "timeSinceBoot" : 1180906.6056685001,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180906.6378145001,
                  "magneticField" : [
                    -235.26856994628906,
                    -123.39228820800781,
                    -164.96463012695312
                  ],
                  "timestamp" : 607604251.42413878
                },
                "id" : "90FF651E-E8AC-4920-9377-06FEF8B4C2CC",
                "gyroData" : {
                  "timeSinceBoot" : 1180906.6307165001,
                  "rotationRate" : [
                    -0.28460907936096191,
                    0.039302930235862732,
                    -0.10201132297515869
                  ],
                  "timestamp" : 607604251.41704011
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180906.6895145001,
                  "acceleration" : [
                    -0.22589111328125,
                    -0.3464508056640625,
                    -0.92578125
                  ],
                  "timestamp" : 607604251.47583866
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    0.051006145775318146,
                    0.10125470906496048,
                    -0.077637113630771609
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.0021772980690002441,
                    -0.0018284916877746589,
                    0.017968416213989258
                  ],
                  "gravity" : [
                    -0.23621372878551483,
                    -0.37766823172569275,
                    -0.89530432224273682
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.25795802106397253,
                    0.38727672734184826,
                    0.061944033956692769
                  ],
                  "timestamp" : 607604251.59223306,
                  "timeSinceBoot" : 1180906.8059095,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180906.8390475002,
                  "magneticField" : [
                    -235.74671936035156,
                    -123.58485412597656,
                    -165.18583679199219
                  ],
                  "timestamp" : 607604251.62537229
                },
                "id" : "4BDF02D3-472E-41B2-8746-6A7D2E198250",
                "gyroData" : {
                  "timeSinceBoot" : 1180906.8309575,
                  "rotationRate" : [
                    -0.02082006074488163,
                    0.049653306603431702,
                    -0.059171710163354874
                  ],
                  "timestamp" : 607604251.61728215
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180906.8897555,
                  "acceleration" : [
                    -0.2430267333984375,
                    -0.380126953125,
                    -0.8974151611328125
                  ],
                  "timestamp" : 607604251.6760813
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.05331871658563616,
                    -0.04569128155708313,
                    0.015962425619363785
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.0047988146543502825,
                    -0.0087384581565856899,
                    0.0063295364379882839
                  ],
                  "gravity" : [
                    -0.23923203349113464,
                    -0.37590038776397705,
                    -0.89524686336517334
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.26112325906633038,
                    0.38536823256520913,
                    0.057918275887732004
                  ],
                  "timestamp" : 607604251.79247582,
                  "timeSinceBoot" : 1180907.0061505002,
                  "heading" : -1
                }
              }
            ],
            "deviceModel" : "iPhone12,3",
            "samplingRate" : 5
          },
          {
            "startTime" : 607604278.88737202,
            "id" : "2F36FADC-15B5-43B5-A0E8-9DC0EB7371D6",
            "entries" : [
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180934.1167530001,
                  "magneticField" : [
                    -231.19252014160156,
                    -126.6114501953125,
                    -169.10569763183594
                  ],
                  "timestamp" : 607604278.9032526
                },
                "id" : "8E6F13E3-6E22-49E9-965B-FCEF66F6AE2A",
                "gyroData" : {
                  "timeSinceBoot" : 1180934.146374,
                  "rotationRate" : [
                    0.0012197277974337339,
                    -0.008772985078394413,
                    -0.0024469124618917704
                  ],
                  "timestamp" : 607604278.93287373
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180934.146374,
                  "acceleration" : [
                    -0.0014801025390625,
                    -0.0072479248046875,
                    -0.997039794921875
                  ],
                  "timestamp" : 607604278.93288028
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.00033509312197566032,
                    -0.00054809637367725372,
                    0.00084994325879961252
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.00052819750271737576,
                    0.00015862332656979561,
                    0.0037403702735900879
                  ],
                  "gravity" : [
                    -0.0022220311220735312,
                    -0.0072237397544085979,
                    -0.99997144937515259
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.0022220908216133545,
                    0.0072238026457262117,
                    2.471089436223875e-05
                  ],
                  "timestamp" : 607604279.20819461,
                  "timeSinceBoot" : 1180934.421695,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180934.448786,
                  "magneticField" : [
                    -231.29444885253906,
                    -126.60609436035156,
                    -169.24815368652344
                  ],
                  "timestamp" : 607604279.23528743
                },
                "id" : "6FC343F1-754B-40DB-B909-780E412D1047",
                "gyroData" : {
                  "timeSinceBoot" : 1180934.479269,
                  "rotationRate" : [
                    -0.00093397061573341489,
                    -0.0089932288974523544,
                    -0.0031707596499472857
                  ],
                  "timestamp" : 607604279.26576984
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180934.7471150002,
                  "acceleration" : [
                    -0.0015411376953125,
                    -0.0069427490234375,
                    -0.9962310791015625
                  ],
                  "timestamp" : 607604279.53361726
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.00028275162912905216,
                    -0.0022963769733905792,
                    7.8899087384343147e-05
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.0010958444327116013,
                    0.00077062333002686501,
                    0.0029470920562744141
                  ],
                  "gravity" : [
                    -0.0021182913333177567,
                    -0.0072253881953656673,
                    -0.99997162818908691
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.002118348200155962,
                    0.0072254509275604178,
                    -4.2872356296149396e-05
                  ],
                  "timestamp" : 607604279.54861581,
                  "timeSinceBoot" : 1180934.762115,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180934.7808370001,
                  "magneticField" : [
                    -231.28388977050781,
                    -126.58554077148438,
                    -168.22100830078125
                  ],
                  "timestamp" : 607604279.56734025
                },
                "id" : "3D265966-C2D7-4A01-A80C-F508F8856F8B",
                "gyroData" : {
                  "timeSinceBoot" : 1180934.812189,
                  "rotationRate" : [
                    -0.0021867216564714909,
                    -0.0088006816804409027,
                    -0.0021201425697654486
                  ],
                  "timestamp" : 607604279.59869182
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180935.0474852917,
                  "acceleration" : [
                    -0.0021209716796875,
                    -0.0072479248046875,
                    -0.9987335205078125
                  ],
                  "timestamp" : 607604279.83398926
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.0011337589239701629,
                    -0.00040704011917114258,
                    -0.00083470623940229416
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    -0.000159428920596838,
                    -0.0011985423043370247,
                    0.005556643009185791
                  ],
                  "gravity" : [
                    -0.0021600143518298864,
                    -0.0071788285858929157,
                    -0.99997192621231079
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.0021600717283910922,
                    0.0071788901992924405,
                    -1.2007420334580776e-05
                  ],
                  "timestamp" : 607604279.86901343,
                  "timeSinceBoot" : 1180935.0825102918,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180935.1128752918,
                  "magneticField" : [
                    -231.61807250976562,
                    -126.44230651855469,
                    -168.21194458007812
                  ],
                  "timestamp" : 607604279.89938092
                },
                "id" : "032427F6-FA3F-43A3-A87F-A4A8574B3EED",
                "gyroData" : {
                  "timeSinceBoot" : 1180935.1451082916,
                  "rotationRate" : [
                    4.2876894440269098e-05,
                    -0.012252938002347946,
                    -0.0021086910273879766
                  ],
                  "timestamp" : 607604279.93161392
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180935.3478552918,
                  "acceleration" : [
                    -0.0023193359375,
                    -0.007720947265625,
                    -0.997711181640625
                  ],
                  "timestamp" : 607604280.13436127
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.0010746936313807964,
                    -0.0018364125862717628,
                    0.00055752217303961515
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.00023787259124219418,
                    0.00061050895601511002,
                    0.0023062825202941895
                  ],
                  "gravity" : [
                    -0.0021758461371064186,
                    -0.0072026010602712631,
                    -0.99997168779373169
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.0021759043493639061,
                    0.0072026634487153416,
                    1.0967413675824102e-05
                  ],
                  "timestamp" : 607604280.20943487,
                  "timeSinceBoot" : 1180935.4229292918,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180935.4449222917,
                  "magneticField" : [
                    -231.35116577148438,
                    -126.80796813964844,
                    -168.78593444824219
                  ],
                  "timestamp" : 607604280.23143005
                },
                "id" : "381EB718-7C55-44F2-B8F9-3B86ABABE333",
                "gyroData" : {
                  "timeSinceBoot" : 1180935.4780032916,
                  "rotationRate" : [
                    -0.0011089402250945568,
                    -0.009044094942510128,
                    -0.0031411985401064157
                  ],
                  "timestamp" : 607604280.26451087
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180935.6482252916,
                  "acceleration" : [
                    -0.0024871826171875,
                    -0.007659912109375,
                    -0.998016357421875
                  ],
                  "timestamp" : 607604280.43473375
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -6.1768689192831516e-05,
                    -0.0012310408055782318,
                    -0.0024396725930273533
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.00037257000803947449,
                    0.00064287660643458366,
                    0.0035110712051391602
                  ],
                  "gravity" : [
                    -0.002280025277286768,
                    -0.0072654848918318748,
                    -0.99997103214263916
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.0022800874817282962,
                    0.007265548960888526,
                    -4.41661268501296e-05
                  ],
                  "timestamp" : 607604280.54985666,
                  "timeSinceBoot" : 1180935.7633492916,
                  "heading" : -1
                }
              },
              {
                "magnetometerData" : {
                  "timeSinceBoot" : 1180935.7769562916,
                  "magneticField" : [
                    -231.31918334960938,
                    -126.60763549804688,
                    -168.56039428710938
                  ],
                  "timestamp" : 607604280.5634656
                },
                "id" : "80C6A7EB-7CD2-4746-923A-3E168C08AAEF",
                "gyroData" : {
                  "timeSinceBoot" : 1180935.8109232918,
                  "rotationRate" : [
                    -0.0017901768442243338,
                    -0.010542655363678932,
                    -0.004281830508261919
                  ],
                  "timestamp" : 607604280.59743273
                },
                "accelerometerData" : {
                  "timeSinceBoot" : 1180935.9485962917,
                  "acceleration" : [
                    -0.001861572265625,
                    -0.0080413818359375,
                    -0.9973602294921875
                  ],
                  "timestamp" : 607604280.73510706
                },
                "deviceMotion" : {
                  "rotationRate" : [
                    -0.00086041691247373819,
                    0.0010081306099891663,
                    -0.0022280637640506029
                  ],
                  "magneticField" : [
                    0,
                    0,
                    0
                  ],
                  "userAcceleration" : [
                    0.00084411143325269222,
                    -0.00037303892895579338,
                    0.0032372474670410156
                  ],
                  "gravity" : [
                    -0.0022632861509919167,
                    -0.0071498393081128597,
                    -0.99997186660766602
                  ],
                  "magneticFieldCalibrationAccuracy" : "uncalibrated",
                  "attitude" : [
                    -0.0022633459254344417,
                    0.0071499003218153398,
                    -2.5528421634167024e-05
                  ],
                  "timestamp" : 607604280.8702538,
                  "timeSinceBoot" : 1180936.0837445001,
                  "heading" : -1
                }
              }
            ],
            "deviceModel" : "iPhone12,3",
            "samplingRate" : 3
          }
        ]
        """
        
        let decoder = JSONDecoder()
        let data = json.data(using: .utf8)!
        var samples: [MotionDataSample]
        do {
            samples = try decoder.decode([MotionDataSample].self, from: data)
        } catch {
            print("Failed to decode MotionDataSample preview samples.")
            fatalError()
        }
        
        return samples
    }()
    
}
#endif
