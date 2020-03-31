.class Lcom/oneplus/lib/animator/ShareElementViewAttrs$1;
.super Ljava/lang/Object;
.source "ShareElementViewAttrs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/animator/ShareElementViewAttrs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oneplus/lib/animator/ShareElementViewAttrs;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/animator/ShareElementViewAttrs;
    .locals 0

    new-instance p0, Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/animator/ShareElementViewAttrs;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/animator/ShareElementViewAttrs$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oneplus/lib/animator/ShareElementViewAttrs;
    .locals 0

    new-array p0, p1, [Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/animator/ShareElementViewAttrs$1;->newArray(I)[Lcom/oneplus/lib/animator/ShareElementViewAttrs;

    move-result-object p0

    return-object p0
.end method
