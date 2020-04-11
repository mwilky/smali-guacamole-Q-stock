.class final Lcom/android/server/am/OnePlusHighPowerDetector$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->zta(Landroid/os/Message;)V

    return-void
.end method
