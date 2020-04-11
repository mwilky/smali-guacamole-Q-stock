.class Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbAlsaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackListEntry"
.end annotation


# instance fields
.field final mFlags:I

.field final mProductId:I

.field final mVendorId:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mVendorId:I

    iput p2, p0, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mProductId:I

    iput p3, p0, Lcom/android/server/usb/UsbAlsaManager$BlackListEntry;->mFlags:I

    return-void
.end method
