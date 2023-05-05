// @desc Auto Save

//Overwrite Old Save

if (file_exists(SAVEFILE))
{
	file_delete(SAVEFILE);
}

//Create New Save

var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_close(file);