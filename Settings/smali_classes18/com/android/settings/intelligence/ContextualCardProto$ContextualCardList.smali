.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContextualCardList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardListOrBuilder;"
    }
.end annotation


# static fields
.field public static final CARD_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private card_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;-><init>()V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->setCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->setCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->addCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->addCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->addAllCard(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->clearCard()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->removeCard(I)V

    return-void
.end method

.method private addAllCard(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private clearCard()V
    .locals 1

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureCardIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    invoke-virtual {v0, p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCard(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->ensureCardIsMutable()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0

    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/CodedInputStream;

    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->parseUnknownField(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_3
    iget-object v4, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    nop

    :cond_5
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

    :cond_6
    nop

    :pswitch_2
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0

    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$Visitor;

    move-object v1, p3

    check-cast v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    iget-object v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    iget-object v3, v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    sget-object v2, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    :pswitch_4
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;

    invoke-direct {v0, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;-><init>(Lcom/android/settings/intelligence/ContextualCardProto$1;)V

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v1

    :pswitch_6
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->DEFAULT_INSTANCE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-direct {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;-><init>()V

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

.method public getCard(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    return-object v0
.end method

.method public getCardCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCardOrBuilder(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;

    return-object v0
.end method

.method public getCardOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->card_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSetLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
