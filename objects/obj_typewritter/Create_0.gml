_sentences = ds_list_create();
ds_list_add(_sentences,"Year 3024",
"Humanity has been studying the planet Aquaris for more than 100 years",
"It was its inconsistent trajectory that sparked the curiosity of our scientists",
"- seems like it wanders around it's start at its own will.",
"The first studies assigned the ocean has the reason behind that behaviour,",
"this huge mass of water would bend the laws of cosmos.",
"A particular trend of investigation started to blast the ocean with different",
" waves and frequencies, soon after, scientis were 'visited' by avatars of their own imagination",
"",
"I also have been visited before, but have been able to contain my thoughts and proceed",
" with my research on the planet for more than two years so far, until that day...",
"...","the day they decided to blast the ocean with immense nuclear energy...",
"...to me,","it was an aberration!!!");

index = 0;
len = ds_list_size(_sentences)-1;
i = 0;
sentence = ds_list_find_value(_sentences,i);
show_debug_message(sentence);
_interval = 0.06;
//alarm[0] = room_speed * _interval;

_plot_ph01 = "Year 3024,\n\nHumanity has been studying the planet Aquaris since its discovery more than 100 years ago.\nIt was its inconsistent trajectory that sparked the curiosity of our scientists.\nThe astro seems like to wander around the star at its own will. ";
_plot_ph01 = string_replace_all(_plot_ph01, "\\n", "\n");
_plot_ph02 = "The first studies assigned the ocean has the reason behind that\ninconsistent trajectory,this huge mass of fluid would bend the laws of cosmos.\nA particular trend of investigation started to blast the ocean with different\nwaves and frequencies, and soon after,\n scientists were 'visited' by avatars of their own imagination.";
_plot_ph02 = string_replace_all(_plot_ph02, "\\n", "\n");
_plot_ph03 = "I also have been visited before,\nbut have been able to hold myself together and proceed my research,\nfor more than 8 years I worked on this planet,\nuntil that day...\nthe day they decided to blast the ocean with immense nuclear energy... \nto me...";
_plot_ph03 = string_replace_all(_plot_ph03, "\\n", "\n");
_plot_ph04 = "that was an aberration!!";
_plot_ph05 = "that was an aberration!!";

_text01 = ds_list_create();
ds_list_add(_text01,_plot_ph01,_plot_ph02,_plot_ph03, _plot_ph04,_plot_ph05);
//index = 0;
_amount_paraphs = ds_list_size(_text01)-1;
_paraph = ds_list_find_value(_text01,i);
//_interval = 0.1;
_border = room_width-room_width/5;

alarm[2] = room_speed * _interval;


