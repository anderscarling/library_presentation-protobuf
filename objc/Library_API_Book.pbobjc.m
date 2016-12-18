// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: library_api/book.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "Library_API_Book.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - LibraryAPI_BookRoot

@implementation LibraryAPI_BookRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - LibraryAPI_BookRoot_FileDescriptor

static GPBFileDescriptor *LibraryAPI_BookRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"LibraryAPI"
                                                 objcPrefix:@"LibraryAPI_"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - LibraryAPI_Book

@implementation LibraryAPI_Book

@dynamic id_p;
@dynamic author;
@dynamic title;

typedef struct LibraryAPI_Book__storage_ {
  uint32_t _has_storage_[1];
  int32_t id_p;
  NSString *author;
  NSString *title;
} LibraryAPI_Book__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = LibraryAPI_Book_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(LibraryAPI_Book__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "author",
        .dataTypeSpecific.className = NULL,
        .number = LibraryAPI_Book_FieldNumber_Author,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(LibraryAPI_Book__storage_, author),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "title",
        .dataTypeSpecific.className = NULL,
        .number = LibraryAPI_Book_FieldNumber_Title,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(LibraryAPI_Book__storage_, title),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[LibraryAPI_Book class]
                                     rootClass:[LibraryAPI_BookRoot class]
                                          file:LibraryAPI_BookRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(LibraryAPI_Book__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
