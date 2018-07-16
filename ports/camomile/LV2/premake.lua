
dofile("../../../scripts/make-project.lua")

package = make_juce_lv2_project("Camomile")

package.defines = { package.defines, "PD=1", "USEAPI_DUMMY=1", "PD_INTERNAL=1", "PDINSTANCE=1", "PDTHREADS=1", "HAVE_LIBDL=1", "HAVE_UNISTD_H=1" }

package.includepaths = {
  package.includepaths,
  "../source/LibPd/pure-data/src",
  "../source/LibPd/libpd_wrapper"
}


if (os.getenv("LINUX_EMBED")) then
package.files = {
  matchfiles (
    "../source/BinaryData.cpp",
    "../source/PluginEnvironment.cpp",
    "../source/PluginFileWatcher.cpp",
    "../source/PluginParameter.cpp",
    "../source/PluginParser.cpp",
    "../source/PluginProcessor.cpp",
    "../source/PluginProcessorBuses.cpp",
    "../source/PluginProcessorReceive.cpp",
    "../source/Pd/*.c",
    "../source/Pd/*.cpp",
    "../source/LibPd/pure-data/src/d_arithmetic.c",
    "../source/LibPd/pure-data/src/d_array.c",
    "../source/LibPd/pure-data/src/d_ctl.c",
    "../source/LibPd/pure-data/src/d_dac.c",
    "../source/LibPd/pure-data/src/d_delay.c",
    "../source/LibPd/pure-data/src/d_fft.c",
    "../source/LibPd/pure-data/src/d_fft_fftsg.c",
    "../source/LibPd/pure-data/src/d_filter.c",
    "../source/LibPd/pure-data/src/d_global.c",
    "../source/LibPd/pure-data/src/d_math.c",
    "../source/LibPd/pure-data/src/d_misc.c",
    "../source/LibPd/pure-data/src/d_osc.c",
    "../source/LibPd/pure-data/src/d_resample.c",
    "../source/LibPd/pure-data/src/d_soundfile.c",
    "../source/LibPd/pure-data/src/d_ugen.c",
    "../source/LibPd/pure-data/src/g_all_guis.c",
    "../source/LibPd/pure-data/src/g_array.c",
    "../source/LibPd/pure-data/src/g_bang.c",
    "../source/LibPd/pure-data/src/g_canvas.c",
    "../source/LibPd/pure-data/src/g_clone.c",
    "../source/LibPd/pure-data/src/g_editor.c",
    "../source/LibPd/pure-data/src/g_graph.c",
    "../source/LibPd/pure-data/src/g_guiconnect.c",
    "../source/LibPd/pure-data/src/g_hdial.c",
    "../source/LibPd/pure-data/src/g_hslider.c",
    "../source/LibPd/pure-data/src/g_io.c",
    "../source/LibPd/pure-data/src/g_mycanvas.c",
    "../source/LibPd/pure-data/src/g_numbox.c",
    "../source/LibPd/pure-data/src/g_readwrite.c",
    "../source/LibPd/pure-data/src/g_rtext.c",
    "../source/LibPd/pure-data/src/g_scalar.c",
    "../source/LibPd/pure-data/src/g_template.c",
    "../source/LibPd/pure-data/src/g_text.c",
    "../source/LibPd/pure-data/src/g_toggle.c",
    "../source/LibPd/pure-data/src/g_traversal.c",
    "../source/LibPd/pure-data/src/g_vdial.c",
    "../source/LibPd/pure-data/src/g_vslider.c",
    "../source/LibPd/pure-data/src/g_vumeter.c",
    "../source/LibPd/pure-data/src/m_atom.c",
    "../source/LibPd/pure-data/src/m_binbuf.c",
    "../source/LibPd/pure-data/src/m_class.c",
    "../source/LibPd/pure-data/src/m_conf.c",
    "../source/LibPd/pure-data/src/m_glob.c",
    "../source/LibPd/pure-data/src/m_memory.c",
    "../source/LibPd/pure-data/src/m_obj.c",
    "../source/LibPd/pure-data/src/m_pd.c",
    "../source/LibPd/pure-data/src/m_sched.c",
    "../source/LibPd/pure-data/src/s_audio.c",
    "../source/LibPd/pure-data/src/s_audio_dummy.c",
    "../source/LibPd/pure-data/src/s_inter.c",
    "../source/LibPd/pure-data/src/s_loader.c",
    "../source/LibPd/pure-data/src/s_main.c",
    "../source/LibPd/pure-data/src/s_path.c",
    "../source/LibPd/pure-data/src/s_print.c",
    "../source/LibPd/pure-data/src/s_utf8.c",
    "../source/LibPd/pure-data/src/x_acoustics.c",
    "../source/LibPd/pure-data/src/x_arithmetic.c",
    "../source/LibPd/pure-data/src/x_array.c",
    "../source/LibPd/pure-data/src/x_connective.c",
    "../source/LibPd/pure-data/src/x_gui.c",
    "../source/LibPd/pure-data/src/x_interface.c",
    "../source/LibPd/pure-data/src/x_list.c",
    "../source/LibPd/pure-data/src/x_midi.c",
    "../source/LibPd/pure-data/src/x_misc.c",
    "../source/LibPd/pure-data/src/x_net.c",
    "../source/LibPd/pure-data/src/x_scalar.c",
    "../source/LibPd/pure-data/src/x_text.c",
    "../source/LibPd/pure-data/src/x_time.c",
    "../source/LibPd/pure-data/src/x_vexp.c",
    "../source/LibPd/pure-data/src/x_vexp_fun.c",
    "../source/LibPd/pure-data/src/x_vexp_if.c",
    "../source/LibPd/libpd_wrapper/s_libpdmidi.c",
    "../source/LibPd/libpd_wrapper/x_libpdreceive.c",
    "../source/LibPd/libpd_wrapper/z_hooks.c",
    "../source/LibPd/libpd_wrapper/z_libpd.c",
    "../../../libs/juce-plugin/JucePluginMain.cpp"
  )
}
else
package.files = {
  matchfiles (
    "../source/*.cpp",
    "../source/Pd/*.c",
    "../source/Pd/*.cpp",
    "../source/LibPd/pure-data/src/d_arithmetic.c",
    "../source/LibPd/pure-data/src/d_array.c",
    "../source/LibPd/pure-data/src/d_ctl.c",
    "../source/LibPd/pure-data/src/d_dac.c",
    "../source/LibPd/pure-data/src/d_delay.c",
    "../source/LibPd/pure-data/src/d_fft.c",
    "../source/LibPd/pure-data/src/d_fft_fftsg.c",
    "../source/LibPd/pure-data/src/d_filter.c",
    "../source/LibPd/pure-data/src/d_global.c",
    "../source/LibPd/pure-data/src/d_math.c",
    "../source/LibPd/pure-data/src/d_misc.c",
    "../source/LibPd/pure-data/src/d_osc.c",
    "../source/LibPd/pure-data/src/d_resample.c",
    "../source/LibPd/pure-data/src/d_soundfile.c",
    "../source/LibPd/pure-data/src/d_ugen.c",
    "../source/LibPd/pure-data/src/g_all_guis.c",
    "../source/LibPd/pure-data/src/g_array.c",
    "../source/LibPd/pure-data/src/g_bang.c",
    "../source/LibPd/pure-data/src/g_canvas.c",
    "../source/LibPd/pure-data/src/g_clone.c",
    "../source/LibPd/pure-data/src/g_editor.c",
    "../source/LibPd/pure-data/src/g_graph.c",
    "../source/LibPd/pure-data/src/g_guiconnect.c",
    "../source/LibPd/pure-data/src/g_hdial.c",
    "../source/LibPd/pure-data/src/g_hslider.c",
    "../source/LibPd/pure-data/src/g_io.c",
    "../source/LibPd/pure-data/src/g_mycanvas.c",
    "../source/LibPd/pure-data/src/g_numbox.c",
    "../source/LibPd/pure-data/src/g_readwrite.c",
    "../source/LibPd/pure-data/src/g_rtext.c",
    "../source/LibPd/pure-data/src/g_scalar.c",
    "../source/LibPd/pure-data/src/g_template.c",
    "../source/LibPd/pure-data/src/g_text.c",
    "../source/LibPd/pure-data/src/g_toggle.c",
    "../source/LibPd/pure-data/src/g_traversal.c",
    "../source/LibPd/pure-data/src/g_vdial.c",
    "../source/LibPd/pure-data/src/g_vslider.c",
    "../source/LibPd/pure-data/src/g_vumeter.c",
    "../source/LibPd/pure-data/src/m_atom.c",
    "../source/LibPd/pure-data/src/m_binbuf.c",
    "../source/LibPd/pure-data/src/m_class.c",
    "../source/LibPd/pure-data/src/m_conf.c",
    "../source/LibPd/pure-data/src/m_glob.c",
    "../source/LibPd/pure-data/src/m_memory.c",
    "../source/LibPd/pure-data/src/m_obj.c",
    "../source/LibPd/pure-data/src/m_pd.c",
    "../source/LibPd/pure-data/src/m_sched.c",
    "../source/LibPd/pure-data/src/s_audio.c",
    "../source/LibPd/pure-data/src/s_audio_dummy.c",
    "../source/LibPd/pure-data/src/s_inter.c",
    "../source/LibPd/pure-data/src/s_loader.c",
    "../source/LibPd/pure-data/src/s_main.c",
    "../source/LibPd/pure-data/src/s_path.c",
    "../source/LibPd/pure-data/src/s_print.c",
    "../source/LibPd/pure-data/src/s_utf8.c",
    "../source/LibPd/pure-data/src/x_acoustics.c",
    "../source/LibPd/pure-data/src/x_arithmetic.c",
    "../source/LibPd/pure-data/src/x_array.c",
    "../source/LibPd/pure-data/src/x_connective.c",
    "../source/LibPd/pure-data/src/x_gui.c",
    "../source/LibPd/pure-data/src/x_interface.c",
    "../source/LibPd/pure-data/src/x_list.c",
    "../source/LibPd/pure-data/src/x_midi.c",
    "../source/LibPd/pure-data/src/x_misc.c",
    "../source/LibPd/pure-data/src/x_net.c",
    "../source/LibPd/pure-data/src/x_scalar.c",
    "../source/LibPd/pure-data/src/x_text.c",
    "../source/LibPd/pure-data/src/x_time.c",
    "../source/LibPd/pure-data/src/x_vexp.c",
    "../source/LibPd/pure-data/src/x_vexp_fun.c",
    "../source/LibPd/pure-data/src/x_vexp_if.c",
    "../source/LibPd/libpd_wrapper/s_libpdmidi.c",
    "../source/LibPd/libpd_wrapper/x_libpdreceive.c",
    "../source/LibPd/libpd_wrapper/z_hooks.c",
    "../source/LibPd/libpd_wrapper/z_libpd.c",
    "../../../libs/juce-plugin/JucePluginMain.cpp"
  )
}
end