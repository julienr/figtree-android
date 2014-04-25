LOCAL_PATH := $(call my-dir)/../src

# libann.a
include $(CLEAR_VARS)
LOCAL_MODULE := libann
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include
LOCAL_SRC_FILES := ann/ANN.cpp \
									 ann/bd_fix_rad_search.cpp \
									 ann/bd_pr_search.cpp \
									 ann/bd_search.cpp \
									 ann/bd_tree.cpp \
									 ann/brute.cpp \
									 ann/kd_dump.cpp \
									 ann/kd_fix_rad_search.cpp \
									 ann/kd_pr_search.cpp \
									 ann/kd_search.cpp \
									 ann/kd_split.cpp \
									 ann/kd_tree.cpp \
									 ann/kd_util.cpp \
									 ann/perf.cpp
include $(BUILD_STATIC_LIBRARY)
# libfigtree.so
include $(CLEAR_VARS)
LOCAL_MODULE := libfigtree
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include/figtree
LOCAL_SRC_FILES := figtree/figtree.cpp \
									 figtree/KCenterClustering.cpp
# User application can include figtree/figtree.h
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../
include $(BUILD_SHARED_LIBRARY)
