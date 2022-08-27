function monokai_dark_matlab()
% My preferred Matlab theme

colors.background                    = [13 13 13];
colors.highlight_cells               = [23 23 23];
colors.highlight_current_line        = [29 29 29];
colors.highlight_autofix_suggestions = [88 110 117];
colors.highlight_current_variable    = [74 39 145];
colors.underline_syntax_errors       = [249 38 114];
colors.underline_code_warings        = [253 151 31];
colors.text                          = [248 248 242];
colors.keywords                      = [249 38 114];
colors.comments                      = [98 99 90];
colors.strings                       = [230 219 116];
colors.unterminated_strings          = [253 151 31];
colors.system_commands               = [166 226 46];
colors.persistent_variables          = [166 226 46];
colors.cmd_errors                    = [249 38 114];
colors.cmd_warnings                  = [253 151 31];
colors.cmd_hyperlinks                = [102 217 239];
colors.editor_limiter_line           = [50 50 50];

com.mathworks.services.Prefs.setBooleanPref('ColorsUseSystem',0);

com.mathworks.services.Prefs.setColorPref(...
    'ColorsText',jcolor(colors.text));
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsText');

com.mathworks.services.Prefs.setColorPref(...
    'ColorsBackground',jcolor(colors.background)); 
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsBackground');

com.mathworks.services.Prefs.setColorPref('Colors_M_Keywords',...
    jcolor(colors.keywords));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Keywords');

com.mathworks.services.Prefs.setColorPref('Colors_M_Comments',jcolor(colors.comments));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Comments');

com.mathworks.services.Prefs.setColorPref(...
    'Colors_M_Strings',jcolor(colors.strings));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Strings');

com.mathworks.services.Prefs.setColorPref(...
    'Colors_M_UnterminatedStrings',jcolor(colors.unterminated_strings));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_UnterminatedStrings');

com.mathworks.services.Prefs.setColorPref(...
    'Colors_M_SystemCommands',jcolor(colors.system_commands));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_SystemCommands');

com.mathworks.services.Prefs.setColorPref(...
    'Colors_M_Errors',jcolor(colors.underline_syntax_errors));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_M_Errors');

com.mathworks.services.Prefs.setColorPref(...
    'Colors_HTML_HTMLLinks',jcolor(colors.underline_syntax_errors));
com.mathworks.services.ColorPrefs.notifyColorListeners('Colors_HTML_HTMLLinks');

com.mathworks.services.Prefs.setColorPref(...
    'Color_CmdWinErrors',jcolor(colors.cmd_errors));
com.mathworks.services.ColorPrefs.notifyColorListeners('Color_CmdWinErrors');

com.mathworks.services.Prefs.setColorPref(...
    'Color_CmdWinWarnings',jcolor(colors.cmd_warnings));
com.mathworks.services.ColorPrefs.notifyColorListeners('Color_CmdWinWarnings');

com.mathworks.services.Prefs.setBooleanPref('ColorsUseMLintAutoFixBackground',1);
com.mathworks.services.Prefs.setColorPref(...
    'ColorsMLintAutoFixBackground',jcolor(colors.highlight_autofix_suggestions));
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsMLintAutoFixBackground');

com.mathworks.services.Prefs.setBooleanPref('Editor.VariableHighlighting.Automatic',1);
com.mathworks.services.Prefs.setColorPref(...
    'Editor.VariableHighlighting.Color',jcolor(colors.highlight_current_variable));
com.mathworks.services.ColorPrefs.notifyColorListeners('Editor.VariableHighlighting.Color');

com.mathworks.services.Prefs.setColorPref(...
    'Editor.NonlocalVariableHighlighting.TextColor',jcolor(colors.persistent_variables));
com.mathworks.services.ColorPrefs.notifyColorListeners('Editor.NonlocalVariableHighlighting.TextColor');

com.mathworks.services.Prefs.setBooleanPref('Editorhighlight-caret-row-boolean',1);
com.mathworks.services.Prefs.setColorPref(...
    'Editorhighlight-caret-row-boolean-color',jcolor(colors.highlight_current_line));
com.mathworks.services.ColorPrefs.notifyColorListeners('Editorhighlight-caret-row-boolean-color');

com.mathworks.services.Prefs.setBooleanPref('EditorRightTextLineVisible',0);

end

function jcol = jcolor(color)
    r = color(1)/255;
    g = color(2)/255;
    b = color(3)/255;
    jcol = java.awt.Color(r,g,b);
end