/*

    IMPORTANT! This file is auto-generated by the Jucer each time you save your
    project - if you alter its contents, your changes may be overwritten!

    This header file contains configuration options for the plug-in. If you need to change any of
    these, it'd be wise to do so using the Jucer, rather than editing this file directly...

*/

#ifndef __JUCE_PLUGIN_CHARACTERISTICS_H__
#define __JUCE_PLUGIN_CHARACTERISTICS_H__

#define JucePlugin_Name                     "TAL NoiseMaker Plugin"
#define JucePlugin_Desc                     "TAL-NoiseMaker"
#define JucePlugin_Manufacturer             "TAL-Togu Audio Line"
#define JucePlugin_ManufacturerCode         'TOGU'
#define JucePlugin_PluginCode               'ncut' // registered
#define JucePlugin_MaxNumInputChannels              0
#define JucePlugin_MaxNumOutputChannels             2
#define JucePlugin_PreferredChannelConfigurations   { 0, 2 }
#define JucePlugin_IsSynth                          1
#define JucePlugin_WantsMidiInput                   1
#define JucePlugin_ProducesMidiOutput               0
#define JucePlugin_SilenceInProducesSilenceOut      0
#define JucePlugin_EditorRequiresKeyboardFocus      1
#define JucePlugin_VersionCode              0x10001
#define JucePlugin_VersionString            "1.0.1"
#define JucePlugin_VSTUniqueID              JucePlugin_PluginCode
#define JucePlugin_VSTCategory              kPlugCategSynth
#define JucePlugin_AUMainType               kAudioUnitType_MusicDevice
#define JucePlugin_AUSubType                JucePlugin_PluginCode
#define JucePlugin_AUExportPrefix           TalNoiseMakerAU
#define JucePlugin_AUExportPrefixQuoted     "TalNoiseMakerAU"
#define JucePlugin_AUManufacturerCode       JucePlugin_ManufacturerCode
#define JucePlugin_CFBundleIdentifier       ch.toguaudioline.talnoisemaker
#define JucePlugin_AUCocoaViewClassName     TalNoiseMakerAU
#define JucePlugin_RTASCategory             ePlugInCategory_SWGenerators
#define JucePlugin_RTASManufacturerCode     JucePlugin_ManufacturerCode
#define JucePlugin_RTASProductId            JucePlugin_PluginCode

#define JucePlugin_LV2URI                   "http://kunz.corrupt.ch/products/tal-noisemaker"
#define JucePlugin_LV2Category              "InstrumentPlugin"
#define JucePlugin_WantsLV2Latency          0
#define JucePlugin_WantsLV2Presets          1
#define JucePlugin_WantsLV2State            1
#define JucePlugin_WantsLV2StateString      1
#define JucePlugin_WantsLV2TimePos          1

#endif
