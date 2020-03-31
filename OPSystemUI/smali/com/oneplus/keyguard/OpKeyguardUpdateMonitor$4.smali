.class Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;
.super Ljava/lang/Object;
.source "OpKeyguardUpdateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

.field final synthetic val$lastType:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;II)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    iput p2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->val$type:I

    iput p3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->val$lastType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1500(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->val$type:I

    invoke-virtual {v2, v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitorCallback;->onFacelockStateChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->val$lastType:I

    iget v2, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->val$type:I

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor$4;->this$0:Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;

    invoke-static {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->access$1600(Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;Z)V

    :goto_1
    return-void
.end method
