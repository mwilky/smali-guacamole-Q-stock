.class public interface abstract Lcom/android/settings/intelligence/ContextualCardProto$ContextualCardListOrBuilder;
.super Ljava/lang/Object;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContextualCardListOrBuilder"
.end annotation


# virtual methods
.method public abstract getCard(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.end method

.method public abstract getCardCount()I
.end method

.method public abstract getCardList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;",
            ">;"
        }
    .end annotation
.end method
