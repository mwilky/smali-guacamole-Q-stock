.class Lcom/android/server/am/j$tsu;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/j;


# direct methods
.method public constructor <init>(Lcom/android/server/am/j;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/j$tsu;->this$0:Lcom/android/server/am/j;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/j;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OnePlusSmartBoostManager"

    const-string v0, "smartboost_enable changed!"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/j$tsu;->this$0:Lcom/android/server/am/j;

    invoke-static {p0}, Lcom/android/server/am/j;->zta(Lcom/android/server/am/j;)Lcom/android/server/am/j$sis;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
