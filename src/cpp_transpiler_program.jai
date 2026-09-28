// Generated multi-translation-unit C/C++ to Jai program loader.
// Initialize before publishing translated APIs/callbacks to other threads.
// Call initialize_program once from the host; generated main does this automatically.
Locale_Data :: void;
#load "file_util.jai";
#load "hdr_util.jai";
#load "mkvmuxer.jai";
#load "mkvmuxerutil.jai";
#load "mkvwriter.jai";
#load "mkvparser.jai";
#load "mkvreader.jai";

cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Write :: (cpp_argument_0: *I_Mkv_Writer, cpp_argument_1: *void, cpp_argument_2: Uint32) -> Int32 {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvWriter == 10 {
        return write_2(cast(*Mkv_Writer) cpp_argument_0, cpp_argument_1, cpp_argument_2);
    }
    assert(false, "invalid dynamic type for Write");
    cpp_unreachable_result: Int32; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position :: (cpp_argument_0: *I_Mkv_Writer) -> Int64 {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvWriter == 10 {
        return position_2(cast(*Mkv_Writer) cpp_argument_0);
    }
    assert(false, "invalid dynamic type for Position");
    cpp_unreachable_result: Int64; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Position_overload_2 :: (cpp_argument_0: *I_Mkv_Writer, cpp_argument_1: Int64) -> Int32 {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvWriter == 10 {
        return position_3(cast(*Mkv_Writer) cpp_argument_0, cpp_argument_1);
    }
    assert(false, "invalid dynamic type for Position");
    cpp_unreachable_result: Int32; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_Seekable :: (cpp_argument_0: *I_Mkv_Writer) -> bool {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvWriter == 10 {
        return seekable_2(cast(*Mkv_Writer) cpp_argument_0);
    }
    assert(false, "invalid dynamic type for Seekable");
    cpp_unreachable_result: bool; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_ElementStartNotify :: (cpp_argument_0: *I_Mkv_Writer, cpp_argument_1: Uint64, cpp_argument_2: Int64) {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvWriter == 10 {
        element_start_notify_2(cast(*Mkv_Writer) cpp_argument_0, cpp_argument_1, cpp_argument_2);
        return;
    }
    assert(false, "invalid dynamic type for ElementStartNotify");
}

cpp_transpiler_dispatch_mkvmuxer_IMkvWriter_destructor :: (cpp_argument_0: *I_Mkv_Writer) {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvWriter == 10 {
        deinit_83(cast(*Mkv_Writer) cpp_argument_0);
        return;
    }
    assert(false, "invalid dynamic type for ~IMkvWriter");
}

cpp_transpiler_dispatch_mkvmuxer_Track_destructor :: (cpp_argument_0: *Mkvmuxer_Track) {
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 3 {
        deinit_13(cast(*Mkvmuxer_Track) cpp_argument_0);
        return;
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 4 {
        deinit_19(cast(*Mkvmuxer_Video_Track) cpp_argument_0);
        return;
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 5 {
        deinit_20(cast(*Mkvmuxer_Audio_Track) cpp_argument_0);
        return;
    }
    assert(false, "invalid dynamic type for ~Track");
}

cpp_transpiler_dispatch_mkvmuxer_Track_AddContentEncoding :: (cpp_argument_0: *Mkvmuxer_Track) -> bool {
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 3 {
        return add_content_encoding(cast(*Mkvmuxer_Track) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 4 {
        return add_content_encoding(cast(*Mkvmuxer_Track) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 5 {
        return add_content_encoding(cast(*Mkvmuxer_Track) cpp_argument_0);
    }
    assert(false, "invalid dynamic type for AddContentEncoding");
    cpp_unreachable_result: bool; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvmuxer_Track_PayloadSize :: (cpp_argument_0: *Mkvmuxer_Track) -> u64 {
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 3 {
        return payload_size(cast(*Mkvmuxer_Track) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 4 {
        return payload_size(cast(*Mkvmuxer_Video_Track) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 5 {
        return payload_size(cast(*Mkvmuxer_Audio_Track) cpp_argument_0);
    }
    assert(false, "invalid dynamic type for PayloadSize");
    cpp_unreachable_result: u64; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvmuxer_Track_Size :: (cpp_argument_0: *Mkvmuxer_Track) -> u64 {
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 3 {
        return size_7(cast(*Mkvmuxer_Track) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 4 {
        return size_7(cast(*Mkvmuxer_Track) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 5 {
        return size_7(cast(*Mkvmuxer_Track) cpp_argument_0);
    }
    assert(false, "invalid dynamic type for Size");
    cpp_unreachable_result: u64; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvmuxer_Track_Write :: (cpp_argument_0: *Mkvmuxer_Track, cpp_argument_1: *I_Mkv_Writer) -> bool {
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 3 {
        return write(cast(*Mkvmuxer_Track) cpp_argument_0, cpp_argument_1);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 4 {
        return write(cast(*Mkvmuxer_Video_Track) cpp_argument_0, cpp_argument_1);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 5 {
        return write(cast(*Mkvmuxer_Audio_Track) cpp_argument_0, cpp_argument_1);
    }
    assert(false, "invalid dynamic type for Write");
    cpp_unreachable_result: bool; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvparser_IMkvReader_Read :: (cpp_argument_0: *I_Mkv_Reader, cpp_argument_1: s64, cpp_argument_2: s64, cpp_argument_3: *u8) -> s32 {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvReader == 11 {
        return read_4(cast(*Mkv_Reader) cpp_argument_0, cpp_argument_1, cpp_argument_2, cpp_argument_3);
    }
    assert(false, "invalid dynamic type for Read");
    cpp_unreachable_result: s32; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvparser_IMkvReader_Length :: (cpp_argument_0: *I_Mkv_Reader, cpp_argument_1: *s64, cpp_argument_2: *s64) -> s32 {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvReader == 11 {
        return length_4(cast(*Mkv_Reader) cpp_argument_0, cpp_argument_1, cpp_argument_2);
    }
    assert(false, "invalid dynamic type for Length");
    cpp_unreachable_result: s32; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvparser_IMkvReader_destructor :: (cpp_argument_0: *I_Mkv_Reader) {
    if cpp_argument_0.cpp_transpiler_dynamic_type_IMkvReader == 11 {
        deinit_103(cast(*Mkv_Reader) cpp_argument_0);
        return;
    }
    assert(false, "invalid dynamic type for ~IMkvReader");
}

cpp_transpiler_dispatch_mkvparser_BlockEntry_destructor :: (cpp_argument_0: *Block_Entry) {
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 7 {
        deinit_45(cast(*Simple_Block) cpp_argument_0);
        return;
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 8 {
        deinit_46(cast(*Block_Group) cpp_argument_0);
        return;
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 9 {
        deinit_53(cast(*Track_EOS_Block) cpp_argument_0);
        return;
    }
    assert(false, "invalid dynamic type for ~BlockEntry");
}

cpp_transpiler_dispatch_mkvparser_BlockEntry_GetKind :: (cpp_argument_0: *Block_Entry) -> Block_Entry_Kind {
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 7 {
        return get_kind(cast(*Simple_Block) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 8 {
        return get_kind(cast(*Block_Group) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 9 {
        return get_kind(cast(*Track_EOS_Block) cpp_argument_0);
    }
    assert(false, "invalid dynamic type for GetKind");
    cpp_unreachable_result: Block_Entry_Kind; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvparser_BlockEntry_GetBlock :: (cpp_argument_0: *Block_Entry) -> *Block {
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 7 {
        return get_block(cast(*Simple_Block) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 8 {
        return get_block(cast(*Block_Group) cpp_argument_0);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_BlockEntry == 9 {
        return get_block(cast(*Track_EOS_Block) cpp_argument_0);
    }
    assert(false, "invalid dynamic type for GetBlock");
    cpp_unreachable_result: *Block; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvparser_Track_destructor :: (cpp_argument_0: *Mkvparser_Track) {
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 5 {
        deinit_59(cast(*Mkvparser_Audio_Track) cpp_argument_0);
        return;
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 3 {
        deinit_51(cast(*Mkvparser_Track) cpp_argument_0);
        return;
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 4 {
        deinit_58(cast(*Mkvparser_Video_Track) cpp_argument_0);
        return;
    }
    assert(false, "invalid dynamic type for ~Track");
}

cpp_transpiler_dispatch_mkvparser_Track_VetEntry :: (cpp_argument_0: *Mkvparser_Track, cpp_argument_1: *Block_Entry) -> bool {
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 3 {
        return vet_entry(cast(*Mkvparser_Track) cpp_argument_0, cpp_argument_1);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 4 {
        return vet_entry(cast(*Mkvparser_Video_Track) cpp_argument_0, cpp_argument_1);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 5 {
        return vet_entry(cast(*Mkvparser_Track) cpp_argument_0, cpp_argument_1);
    }
    assert(false, "invalid dynamic type for VetEntry");
    cpp_unreachable_result: bool; return cpp_unreachable_result;
}

cpp_transpiler_dispatch_mkvparser_Track_Seek :: (cpp_argument_0: *Mkvparser_Track, cpp_argument_1: s64, cpp_argument_2: **Block_Entry) -> s64 {
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 3 {
        return seek(cast(*Mkvparser_Track) cpp_argument_0, cpp_argument_1, cpp_argument_2);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 4 {
        return seek(cast(*Mkvparser_Video_Track) cpp_argument_0, cpp_argument_1, cpp_argument_2);
    }
    if cpp_argument_0.cpp_transpiler_dynamic_type_Track == 5 {
        return seek(cast(*Mkvparser_Track) cpp_argument_0, cpp_argument_1, cpp_argument_2);
    }
    assert(false, "invalid dynamic type for Seek");
    cpp_unreachable_result: s64; return cpp_unreachable_result;
}
cpp_transpiler_allocate_raw :: (size: u64) -> *void { return c_transpiler_malloc(size); }
cpp_transpiler_deallocate_raw :: (memory: *void) { c_transpiler_free(memory); }
cpp_transpiler_allocate_array_raw :: (count: u64, element_size: u64) -> *void { header_size :: cast(u64) 16; base := cast(*u8) c_transpiler_malloc(header_size + count * element_size); if !base return null; (cast(*u64) base).* = count; return cast(*void) (base + header_size); }
cpp_transpiler_array_count :: (memory: *void) -> u64 { if !memory return 0; return (cast(*u64) (cast(*u8) memory - 16)).*; }
cpp_transpiler_deallocate_array_raw :: (memory: *void) { if memory c_transpiler_free(cast(*u8) memory - 16); }
cpp_transpiler_base_to_derived :: (address: *void, offset: u64) -> *void { if !address return null; return cast(*void) (cast(*u8) address - offset); }
cpp_transpiler_derived_to_base :: (address: *void, offset: u64) -> *void { if !address return null; return cast(*void) (cast(*u8) address + offset); }
cpp_transpiler_derived_to_virtual_base :: (address: *void, displacement: u64) -> *void { if !address return null; vtable := (cast(**u8) address).*; offset := (cast(*s64) (vtable - displacement)).*; return cast(*void) (cast(*u8) address + offset); }
program_initialization_state: u32;
program_initialization_owner: u32;
initialize_program :: () {
    state := atomic_load(*program_initialization_state);
    if state == 2 return;
    thread_id := cast(u32) thread_local_index() + 1;
    if state == 1 {
        if atomic_load(*program_initialization_owner) == thread_id return;
        while atomic_load(*program_initialization_state) != 2 {}
        return;
    }
    won, _ := compare_and_swap(*program_initialization_state, 0, 1);
    if !won {
        while atomic_load(*program_initialization_state) != 2 {}
        return;
    }
    atomic_store(*program_initialization_owner, thread_id);
    initialize_globals_for_hdr_util();
    initialize_globals_for_mkvmuxer();
    initialize_globals_for_mkvmuxerutil();
    initialize_globals_for_mkvwriter();
    initialize_globals_for_mkvparser();
    initialize_globals_for_mkvreader();
    atomic_store(*program_initialization_owner, 0);
    atomic_store(*program_initialization_state, 2);
}
