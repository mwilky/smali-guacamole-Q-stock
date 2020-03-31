.class public Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;
.super Ljava/lang/Object;
.source "OpVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DeviceInfo"
.end annotation


# instance fields
.field public deviceInfoAddress:Ljava/lang/String;

.field public deviceInfoName:Ljava/lang/String;

.field public deviceInfoType:I

.field public iconResId:I

.field final synthetic this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoType:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->iconResId:I

    const-string p1, ""

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoName:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoAddress:Ljava/lang/String;

    return-void
.end method
