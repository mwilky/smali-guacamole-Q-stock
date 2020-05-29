.class final Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget-object v0, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget v2, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fromUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/16 v1, 0x64

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRow.stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget v3, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / mRingerModeMinLevel * 100:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / mRow.ss.levelMin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget-object v3, v3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget-object p3, p3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget p3, p3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-lez p3, :cond_4

    mul-int/2addr p3, v1

    if-ge p2, p3, :cond_4

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, p3

    :cond_4
    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget p3, p3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    if-ge p2, v1, :cond_5

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, v1

    :cond_5
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4500(Landroid/widget/SeekBar;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget-object p2, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget p3, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne p3, p1, :cond_6

    iget-boolean p2, p2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz p2, :cond_7

    if-lez p1, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->userAttempt:J

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget p2, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->requestedLevel:I

    if-eq p2, p1, :cond_7

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3600(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget p3, p3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {p2, p3}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3600(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget p3, p3, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {p2, p3, p1}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iput p1, p2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->requestedLevel:I

    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4600(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object p2

    const/16 p3, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {p2, p3, v0}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    sget-boolean p1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartTrackingTouch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget v1, v1, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3600(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget v0, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->tracking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget v2, v2, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->tracking:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->userAttempt:J

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4500(Landroid/widget/SeekBar;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4700(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget v4, v4, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->stream:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    iget-object v0, v0, Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4300(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4300(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object v0

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/oneplus/volume/OpVolumeDialogImpl$VolumeRow;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
