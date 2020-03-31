.class Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;
.super Landroid/database/ContentObserver;
.source "OpQLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$100(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ql_vib_time"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$002(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;I)I

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$000(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$002(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;I)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$000(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$002(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;I)I

    :cond_1
    :goto_0
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ql_vib_time "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;->access$000(Lcom/oneplus/systemui/biometrics/OpQLRecyclerView;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickLaunch.QLRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
