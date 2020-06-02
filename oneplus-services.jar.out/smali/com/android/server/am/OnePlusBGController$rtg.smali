.class public Lcom/android/server/am/OnePlusBGController$rtg;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "rtg"
.end annotation


# static fields
.field public static final MSG_INIT:I = 0x101d0

.field public static final irq:I = 0x101d1

.field public static final ivd:I = 0x101d4

.field public static final j:I = 0x101d5

.field public static final k:I = 0x101d6

.field public static final m:I = 0x101d7

.field public static final o:I = 0x101d8

.field public static final qeg:I = 0x101d3

.field public static final u:I = 0x101d9

.field public static final v:I = 0x101da

.field public static final vdw:I = 0x101d2


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, " mAh: "

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_NETWORK_REACHABILITY_CHANGE== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->bvj(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/OnePlusBGController$igw;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;I)D

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMS uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " simulates uid-changing to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/OnePlusBGController$igw;->mState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v0

    iget-object p1, p1, Lcom/android/server/am/OnePlusBGController$igw;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-static {p0, v0, p1, v2, v3}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$ProcType;D)V

    goto/16 :goto_1

    :cond_0
    const-string p0, "GMS\'s ustats is still null, skip this round"

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/OnePlusBGController;->handleOnUidStateChanged(II)V

    goto/16 :goto_1

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_RESET_KILLED_BUDGET== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    goto :goto_1

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_FGBG_CHANGE== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController$ProcType;->fromValue(I)Lcom/android/server/am/OnePlusBGController$ProcType;

    move-result-object v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/OnePlusBGController$igw;

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;I)D

    move-result-wide v3

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " change to "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0, v0, v2, v3, v4}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$ProcType;D)V

    goto :goto_1

    :cond_1
    const-string p0, "ProcType type == null"

    goto/16 :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController;->Gb()V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController;->registerOnlineConfig()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$rtg;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController;->grabOnlineConfig()V

    :cond_2
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101d0 -> :sswitch_4
        0x101d3 -> :sswitch_3
        0x101d6 -> :sswitch_2
        0x101d8 -> :sswitch_1
        0x101d9 -> :sswitch_0
    .end sparse-switch
.end method
