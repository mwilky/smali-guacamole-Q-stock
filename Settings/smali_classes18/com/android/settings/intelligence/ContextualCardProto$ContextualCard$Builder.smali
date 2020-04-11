.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1100()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/intelligence/ContextualCardProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCardCategory()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1900(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-object p0
.end method

.method public clearCardName()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1600(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-object p0
.end method

.method public clearCardScore()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$2100(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-object p0
.end method

.method public clearSliceUri()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1300(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-object p0
.end method

.method public getCardCategory()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getCardCategory()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    move-result-object v0

    return-object v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getCardName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCardNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getCardNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCardScore()D
    .locals 2

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getCardScore()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSliceUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getSliceUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSliceUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->getSliceUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCardCategory()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardCategory()Z

    move-result v0

    return v0
.end method

.method public hasCardName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardName()Z

    move-result v0

    return v0
.end method

.method public hasCardScore()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasCardScore()Z

    move-result v0

    return v0
.end method

.method public hasSliceUri()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->hasSliceUri()Z

    move-result v0

    return v0
.end method

.method public setCardCategory(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1800(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;)V

    return-object p0
.end method

.method public setCardName(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1500(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCardNameBytes(Lcom/google/protobuf/ByteString;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1700(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCardScore(D)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$2000(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;D)V

    return-object p0
.end method

.method public setSliceUri(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1200(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSliceUriBytes(Lcom/google/protobuf/ByteString;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;->access$1400(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
