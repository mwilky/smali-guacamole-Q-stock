.class public final Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;",
        ">;",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$000()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/intelligence/ContextualCardProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCard(Ljava/lang/Iterable;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;)",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$700(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$600(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V

    return-object p0
.end method

.method public addCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$400(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-object p0
.end method

.method public addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$500(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V

    return-object p0
.end method

.method public addCard(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$300(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-object p0
.end method

.method public clearCard()Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$800(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;)V

    return-object p0
.end method

.method public getCard(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->getCard(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;

    move-result-object v0

    return-object v0
.end method

.method public getCardCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->getCardCount()I

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

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-virtual {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->getCardList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeCard(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$900(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;I)V

    return-object p0
.end method

.method public setCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$200(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Builder;)V

    return-object p0
.end method

.method public setCard(ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;

    invoke-static {v0, p1, p2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;->access$100(Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardList;ILcom/android/settings/intelligence/ContextualCardProto$ContextualCard;)V

    return-object p0
.end method
