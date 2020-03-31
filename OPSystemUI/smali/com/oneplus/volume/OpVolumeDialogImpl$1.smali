.class Lcom/oneplus/volume/OpVolumeDialogImpl$1;
.super Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;
.source "OpVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/volume/OpVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$1;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    invoke-direct {p0}, Lcom/oneplus/volume/OpOutputChooser$OutputChooserCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutputChooserNotifyActiveDeviceChange(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recevie OutputChooserCallback, deviceInfoType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconResId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceInfoName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceInfoAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpVolumeDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$1;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    iget-object v0, v0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    iput p1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoType:I

    iput p2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->iconResId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$1;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mDeviceInfo:Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;

    iput-object p4, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$DeviceInfo;->deviceInfoAddress:Ljava/lang/String;

    return-void
.end method
