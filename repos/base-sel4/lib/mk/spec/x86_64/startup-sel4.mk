#
# Make the includes of src/base/include/ available to the startup lib. This is
# needed because the seL4-specific src/platform/_main_parent_cap.h as included
# by the startup lib depends on base/internal/capability_space_sel4.h.
#
INC_DIR += $(REP_DIR)/src/include $(BASE_DIR)/src/include

LIBS += syscall-sel4

include $(BASE_DIR)/lib/mk/spec/x86_64/startup.inc
