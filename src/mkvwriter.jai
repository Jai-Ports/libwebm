// Generated directly from C++ by cpp_transpiler.
K_MAX_TRACK_NUMBER_in_mkvwriter: u64;

close_2 :: (using mkv_writer: *Mkv_Writer) {
    if file != null && writer_owns_file {
        fclose(file);
    }
    file = cast,no_check(*FILE) (cast(*FILE) null);
}

init_144 :: (using mkv_writer: *Mkv_Writer) {
    init_4(*i_mkv_writer);
    i_mkv_writer.cpp_transpiler_dynamic_type_IMkvWriter = 10;
    file = cast,no_check(*FILE) (cast(*FILE) null);
    writer_owns_file = true;
}

init_145 :: (using mkv_writer: *Mkv_Writer, fp: *FILE) {
    init_4(*i_mkv_writer);
    i_mkv_writer.cpp_transpiler_dynamic_type_IMkvWriter = 10;
    file = cast,no_check(*FILE) (fp);
    writer_owns_file = false;
}

deinit_83 :: (using mkv_writer: *Mkv_Writer) {
    i_mkv_writer.cpp_transpiler_dynamic_type_IMkvWriter = 10;
    cpp_transpiler_subobject_cleanup_g0: bool = ---;
    defer deinit_2(*i_mkv_writer);
    close_2(mkv_writer);
}

position_2 :: (using mkv_writer: *Mkv_Writer) -> Int64 {
    if file == null {
        return 0;
    }

    return ftell(file);
}

position_3 :: (using mkv_writer: *Mkv_Writer, position: Int64) -> Int32 {
    if file == null {
        return -1;
    }

    return fseeko(file, position, 0);
}

seekable_2 :: (using mkv_writer: *Mkv_Writer) -> bool {
    return true;
}

write_2 :: (using mkv_writer: *Mkv_Writer, buffer: *void, length: Uint32) -> Int32 {
    if file == null {
        return -1;
    }

    if length == 0 {
        return 0;
    }

    if buffer == null {
        return -1;
    }

    BYTES_WRITTEN := fwrite(buffer, 1, cast,no_check(u64) length, file);

    if BYTES_WRITTEN == cast,no_check(u64) length {
        return 0;
    }
    return -1;
}

element_start_notify_2 :: (using mkv_writer: *Mkv_Writer, unnamed_3119: Uint64, unnamed_3120: Int64) {
}

open_2 :: (using mkv_writer: *Mkv_Writer, filename: *s8) -> bool {
    if filename == null {
        return false;
    }

    if file != null {
        return false;
    }

    file = cast,no_check(*FILE) (fopen(filename, c_string("wb")));

    if file == null {
        return false;
    }
    return true;
}

globals_initialization_state_for_mkvwriter: u32;
initialize_globals_for_mkvwriter :: () {
    {
        state := atomic_load(*globals_initialization_state_for_mkvwriter);
        if state == 2 return;
        won, _ := compare_and_swap(*globals_initialization_state_for_mkvwriter, 0, 1);
        if !won {
            while atomic_load(*globals_initialization_state_for_mkvwriter) != 2 {}
            return;
        }
    }
    K_MAX_TRACK_NUMBER_in_mkvwriter = 126;
    atomic_store(*globals_initialization_state_for_mkvwriter, 2);
}

fclose :: (stream: *FILE) -> s32 #foreign System_Library_libc_so_6;

ftell :: (stream: *FILE) -> s64 #foreign System_Library_libc_so_6;

fseeko :: (stream: *FILE, off: Off_T, whence: s32) -> s32 #foreign System_Library_libc_so_6;

fwrite :: (ptr: *void, size: u64, n: u64, s: *FILE) -> u64 #foreign System_Library_libc_so_6;

fopen :: (filename: *s8, modes: *s8) -> *FILE #foreign System_Library_libc_so_6;

