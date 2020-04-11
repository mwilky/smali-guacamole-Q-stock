.class public final Lcom/android/settings/intelligence/LogProto$SettingsLog;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LogProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/LogProto$SettingsLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/LogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/intelligence/LogProto$SettingsLog;",
        "Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/LogProto$SettingsLogOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final ATTRIBUTION_FIELD_NUMBER:I = 0x1

.field public static final CHANGED_PREFERENCE_INT_VALUE_FIELD_NUMBER:I = 0x5

.field public static final CHANGED_PREFERENCE_KEY_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

.field public static final PAGE_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/LogProto$SettingsLog;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x6


# instance fields
.field private action_:I

.field private attribution_:I

.field private bitField0_:I

.field private changedPreferenceIntValue_:I

.field private changedPreferenceKey_:Ljava/lang/String;

.field private pageId_:I

.field private timestamp_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-direct {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;-><init>()V

    sput-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    iput-object v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setAttribution(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setChangedPreferenceIntValue(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->clearChangedPreferenceIntValue()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/intelligence/LogProto$SettingsLog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setTimestamp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/intelligence/LogProto$SettingsLog;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setTimestampBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->clearAttribution()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setAction(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->clearAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/intelligence/LogProto$SettingsLog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setPageId(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->clearPageId()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/intelligence/LogProto$SettingsLog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setChangedPreferenceKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/intelligence/LogProto$SettingsLog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->clearChangedPreferenceKey()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/intelligence/LogProto$SettingsLog;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->setChangedPreferenceKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAction()V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    return-void
.end method

.method private clearAttribution()V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    return-void
.end method

.method private clearChangedPreferenceIntValue()V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    return-void
.end method

.method private clearChangedPreferenceKey()V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    invoke-static {}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getDefaultInstance()Lcom/android/settings/intelligence/LogProto$SettingsLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getChangedPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    return-void
.end method

.method private clearPageId()V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    return-void
.end method

.method private clearTimestamp()V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    invoke-static {}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getDefaultInstance()Lcom/android/settings/intelligence/LogProto$SettingsLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/settings/intelligence/LogProto$SettingsLog;)Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;

    invoke-virtual {v0, p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0, p1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/LogProto$SettingsLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/LogProto$SettingsLog;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAction(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iput p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    return-void
.end method

.method private setAttribution(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iput p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    return-void
.end method

.method private setChangedPreferenceIntValue(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iput p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    return-void
.end method

.method private setChangedPreferenceKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setChangedPreferenceKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setPageId(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iput p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    return-void
.end method

.method private setTimestamp(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iput-object p1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private setTimestampBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/android/settings/intelligence/LogProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_a

    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_8

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    const/16 v5, 0x10

    if-eq v3, v5, :cond_6

    const/16 v6, 0x18

    if-eq v3, v6, :cond_5

    const/16 v6, 0x22

    if-eq v3, v6, :cond_4

    const/16 v4, 0x28

    if-eq v3, v4, :cond_3

    const/16 v4, 0x32

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iput-object v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/2addr v4, v6

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iput-object v5, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    nop

    :cond_9
    :goto_2
    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    throw v2

    :cond_a
    nop

    :pswitch_2
    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0

    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    move-object v1, p3

    check-cast v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    nop

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasAttribution()Z

    move-result v2

    iget v3, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    invoke-virtual {v1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasAttribution()Z

    move-result v4

    iget v5, v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    nop

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasAction()Z

    move-result v2

    iget v3, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    invoke-virtual {v1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasAction()Z

    move-result v4

    iget v5, v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    nop

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasPageId()Z

    move-result v2

    iget v3, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    invoke-virtual {v1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasPageId()Z

    move-result v4

    iget v5, v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    nop

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasChangedPreferenceKey()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasChangedPreferenceKey()Z

    move-result v4

    iget-object v5, v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    nop

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasChangedPreferenceIntValue()Z

    move-result v2

    iget v3, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    invoke-virtual {v1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasChangedPreferenceIntValue()Z

    move-result v4

    iget v5, v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v2

    iput v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    nop

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasTimestamp()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->hasTimestamp()Z

    move-result v4

    iget-object v5, v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne v0, v2, :cond_b

    iget v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    iget v3, v1, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    :cond_b
    return-object p0

    :pswitch_4
    new-instance v0, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/intelligence/LogProto$SettingsLog$Builder;-><init>(Lcom/android/settings/intelligence/LogProto$1;)V

    return-object v0

    :pswitch_5
    return-object v1

    :pswitch_6
    sget-object v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/LogProto$SettingsLog;

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/android/settings/intelligence/LogProto$SettingsLog;

    invoke-direct {v0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    return v0
.end method

.method public getAttribution()I
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    return v0
.end method

.method public getChangedPreferenceIntValue()I
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    return v0
.end method

.method public getChangedPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangedPreferenceKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceKey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget v3, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    nop

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getChangedPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->timestamp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAttribution()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasChangedPreferenceIntValue()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChangedPreferenceKey()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPageId()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->attribution_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->action_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget v2, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->pageId_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getChangedPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->changedPreferenceIntValue_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/android/settings/intelligence/LogProto$SettingsLog;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/intelligence/LogProto$SettingsLog;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
