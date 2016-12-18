// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: library_api/author.proto

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

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/Timestamp.pbobjc.h>
#else
 #import "google/protobuf/Timestamp.pbobjc.h"
#endif

 #import "Library_API_Author.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - LibraryAPI_AuthorRoot

@implementation LibraryAPI_AuthorRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - LibraryAPI_AuthorRoot_FileDescriptor

static GPBFileDescriptor *LibraryAPI_AuthorRoot_FileDescriptor(void) {
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

#pragma mark - LibraryAPI_Author

@implementation LibraryAPI_Author

@dynamic id_p;
@dynamic name;
@dynamic hasBirthday, birthday;

typedef struct LibraryAPI_Author__storage_ {
  uint32_t _has_storage_[1];
  int32_t id_p;
  GPBTimestamp *birthday;
  NSString *name;
} LibraryAPI_Author__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = LibraryAPI_Author_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(LibraryAPI_Author__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "birthday",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = LibraryAPI_Author_FieldNumber_Birthday,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(LibraryAPI_Author__storage_, birthday),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = LibraryAPI_Author_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(LibraryAPI_Author__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[LibraryAPI_Author class]
                                     rootClass:[LibraryAPI_AuthorRoot class]
                                          file:LibraryAPI_AuthorRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(LibraryAPI_Author__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
