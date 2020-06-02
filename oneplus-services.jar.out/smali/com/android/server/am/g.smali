.class Lcom/android/server/am/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusMemoryTracker;->doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ov:Lcom/android/server/am/OnePlusMemoryTracker$zta;

.field final synthetic this$0:Lcom/android/server/am/OnePlusMemoryTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/g;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    iput-object p2, p0, Lcom/android/server/am/g;->ov:Lcom/android/server/am/OnePlusMemoryTracker$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/g;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    iget-object p0, p0, Lcom/android/server/am/g;->ov:Lcom/android/server/am/OnePlusMemoryTracker$zta;

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$100(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OPMT"

    const-string v1, "Exception in doWriteLogToDropbox :"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
