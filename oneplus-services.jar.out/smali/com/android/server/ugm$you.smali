.class Lcom/android/server/ugm$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ugm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field public static final GET_ONLINECONFIG:I = 0x6

.field public static final ear:I = 0x1

.field public static final fto:I = 0x5

.field public static final hmo:I = 0x4

.field public static final ire:I = 0x3

.field public static final lqr:I = 0xea60


# instance fields
.field final synthetic this$0:Lcom/android/server/ugm;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/ugm;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/ugm;->zta(Lcom/android/server/ugm;I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/ugm;->debug:Z

    const-string v2, "OnePlusSensorManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.what:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "):"

    const-string v3, "AppRecordManager.getUidState("

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_7

    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    invoke-static {p1}, Lcom/android/server/ugm;->sis(Lcom/android/server/ugm;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {v3}, Lcom/android/server/ugm;->tsu(Lcom/android/server/ugm;)Lcom/android/server/ugm$you;

    move-result-object v3

    new-instance v4, Lcom/android/server/ugm$zta;

    iget-object v5, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/ugm$zta;-><init>(Lcom/android/server/ugm;Lcom/android/server/gwm;)V

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/server/ugm;->zta(Lcom/android/server/ugm;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {p1}, Lcom/android/server/ugm;->zta(Lcom/android/server/ugm;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {v0}, Lcom/android/server/ugm;->sis(Lcom/android/server/ugm;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/ugm;->zta(Lcom/android/server/ugm;Lorg/json/JSONArray;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/android/server/ugm;->you(Lcom/android/server/ugm;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/ugm$you;->uid:I

    iget-object p1, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {p1}, Lcom/android/server/ugm;->ssp(Lcom/android/server/ugm;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-virtual {p1, p0, v6}, Landroid/hardware/SensorManager;->setSensorAccessState(IZ)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/android/server/ugm;->you(Lcom/android/server/ugm;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/ugm$you;->uid:I

    iget p1, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result p1

    if-ne p1, v6, :cond_a

    iget-object p1, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {p1}, Lcom/android/server/ugm;->ssp(Lcom/android/server/ugm;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-virtual {p1, p0, v5}, Landroid/hardware/SensorManager;->setSensorAccessState(IZ)V

    goto/16 :goto_2

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {p1}, Lcom/android/server/ugm;->rtg(Lcom/android/server/ugm;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v5, p1, :cond_a

    iget-object p1, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {p1}, Lcom/android/server/ugm;->rtg(Lcom/android/server/ugm;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/ugm$you;->uid:I

    sget-boolean p1, Lcom/android/server/ugm;->debug:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-static {v0}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget p1, p0, Lcom/android/server/ugm$you;->uid:I

    if-eq p1, v4, :cond_6

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result p1

    if-ne p1, v6, :cond_6

    iget-object p1, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {p1}, Lcom/android/server/ugm;->ssp(Lcom/android/server/ugm;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget v0, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-virtual {p1, v0, v6}, Landroid/hardware/SensorManager;->setSensorAccessState(IZ)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    move p1, v5

    :goto_1
    iget-object v0, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {v0}, Lcom/android/server/ugm;->rtg(Lcom/android/server/ugm;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {v0}, Lcom/android/server/ugm;->rtg(Lcom/android/server/ugm;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/AppRecordManager;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ugm$you;->uid:I

    sget-boolean v0, Lcom/android/server/ugm;->debug:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-static {v7}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v0, p0, Lcom/android/server/ugm$you;->uid:I

    if-eq v0, v4, :cond_9

    invoke-static {v0}, Lcom/android/server/am/AppRecordManager;->getUidState(I)I

    move-result v0

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/android/server/ugm$you;->this$0:Lcom/android/server/ugm;

    invoke-static {v0}, Lcom/android/server/ugm;->ssp(Lcom/android/server/ugm;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget v7, p0, Lcom/android/server/ugm$you;->uid:I

    invoke-virtual {v0, v7, v5}, Landroid/hardware/SensorManager;->setSensorAccessState(IZ)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    return-void
.end method
