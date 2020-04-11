.class Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category$1;
.super Ljava/lang/Object;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .locals 1

    invoke-static {p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->forNumber(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category$1;->findValueByNumber(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    move-result-object p1

    return-object p1
.end method
