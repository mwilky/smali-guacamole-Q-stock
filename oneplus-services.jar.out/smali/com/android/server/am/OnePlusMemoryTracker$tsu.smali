.class Lcom/android/server/am/OnePlusMemoryTracker$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# static fields
.field public static final MSG_INIT:I


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusMemoryTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$300(Lcom/android/server/am/OnePlusMemoryTracker;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$400(Lcom/android/server/am/OnePlusMemoryTracker;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$500(Lcom/android/server/am/OnePlusMemoryTracker;)V

    :goto_0
    return-void
.end method
