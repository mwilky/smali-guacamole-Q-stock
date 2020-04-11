.class Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;
.super Landroid/os/Handler;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$2100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$VolumeHandler;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->access$1100(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
