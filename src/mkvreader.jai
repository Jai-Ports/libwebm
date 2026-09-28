E_PARSE_FAILED_in_mkvreader: s32;

E_FILE_FORMAT_INVALID_in_mkvreader: s32;

E_BUFFER_NOT_FULL_in_mkvreader: s32;

get_file_size :: (using mkv_reader: *Mkv_Reader) -> bool {
    if file == null {
        return false;
    }

    fseek(file, 0, 2);
    length = ftell(file);

    assert(length >= 0);

    if length < 0 {
        return false;
    }

    fseek(file, 0, 0);

    return true;
}

close_3 :: (using mkv_reader: *Mkv_Reader) {
    if file != null {
        fclose(file);
        file = cast,no_check(*FILE) (cast(*FILE) null);
    }
}

init_242 :: (using i_mkv_reader: *I_Mkv_Reader) {
    cpp_transpiler_dynamic_type_IMkvReader = 1;
}

init_243 :: (using mkv_reader: *Mkv_Reader) {
    init_242(*i_mkv_reader);
    i_mkv_reader.cpp_transpiler_dynamic_type_IMkvReader = 11;
    file = cast,no_check(*FILE) (cast(*FILE) null);
    reader_owns_file = true;
}

init_244 :: (using mkv_reader: *Mkv_Reader, fp: *FILE) {
    init_242(*i_mkv_reader);
    i_mkv_reader.cpp_transpiler_dynamic_type_IMkvReader = 11;
    file = cast,no_check(*FILE) (fp);
    reader_owns_file = false;
    get_file_size(mkv_reader);
}

deinit_103 :: (using mkv_reader: *Mkv_Reader) {
    i_mkv_reader.cpp_transpiler_dynamic_type_IMkvReader = 11;
    cpp_transpiler_subobject_cleanup_g0: bool = ---;
    defer deinit_41(*i_mkv_reader);
    if reader_owns_file {
        close_3(mkv_reader);
    }
    file = cast,no_check(*FILE) (cast(*FILE) null);
}

open_3 :: (using mkv_reader: *Mkv_Reader, file_name: *s8) -> s32 {
    if file_name == null {
        return -1;
    }

    if file != null {
        return -1;
    }

    file = cast,no_check(*FILE) (fopen(file_name, c_string("rb")));

    if file == null {
        return -1;
    }

    return cast(s32) (!get_file_size(mkv_reader));
}

read_4 :: (using mkv_reader: *Mkv_Reader, offset: s64, len: s64, buffer: *u8) -> s32 {
    if file == null {
        return -1;
    }

    if offset < 0 {
        return -1;
    }

    if len < 0 {
        return -1;
    }

    if len == 0 {
        return 0;
    }

    if offset >= length {
        return -1;
    }

    fseeko(file, offset, 0);

    SIZE := fread(cast(*void) buffer, 1, cast,no_check(u64) len, file);

    if SIZE < cast,no_check(u64) len {
        return -1;
    }

    return 0;
}

length_4 :: (using mkv_reader: *Mkv_Reader, total: *s64, available: *s64) -> s32 {
    if file == null {
        return -1;
    }

    if total != null {
        total.* = length;
    }

    if available != null {
        available.* = length;
    }

    return 0;
}

globals_initialization_state_for_mkvreader: u32;
initialize_globals_for_mkvreader :: () {
    {
        state := atomic_load(*globals_initialization_state_for_mkvreader);
        if state == 2 return;
        won, _ := compare_and_swap(*globals_initialization_state_for_mkvreader, 0, 1);
        if !won {
            while atomic_load(*globals_initialization_state_for_mkvreader) != 2 {}
            return;
        }
    }
    E_PARSE_FAILED_in_mkvreader = -1;
    E_FILE_FORMAT_INVALID_in_mkvreader = -2;
    E_BUFFER_NOT_FULL_in_mkvreader = -3;
    atomic_store(*globals_initialization_state_for_mkvreader, 2);
}

fseek :: (stream: *FILE, off: s64, whence: s32) -> s32 #foreign System_Library_libc_so_6;

fread :: (ptr: *void, size: u64, n: u64, stream: *FILE) -> u64 #foreign System_Library_libc_so_6;

Mkv_Reader :: struct {
    #as i_mkv_reader: I_Mkv_Reader;
    length: s64;
    file: *FILE;
    reader_owns_file: bool;
}

