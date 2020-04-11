.class Lcom/android/server/policy/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/kth;->onKeyguardDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/kth;


# direct methods
.method constructor <init>(Lcom/android/server/policy/kth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/sis;->this$0:Lcom/android/server/policy/kth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/sis;->this$0:Lcom/android/server/policy/kth;

    invoke-static {v0}, Lcom/android/server/policy/kth;->rtg(Lcom/android/server/policy/kth;)Lcom/android/server/policy/kth$zta;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sis;->this$0:Lcom/android/server/policy/kth;

    invoke-static {v0}, Lcom/android/server/policy/kth;->rtg(Lcom/android/server/policy/kth;)Lcom/android/server/policy/kth$zta;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/kth;->zta(Lcom/android/server/policy/kth$zta;Z)Z

    iget-object p0, p0, Lcom/android/server/policy/sis;->this$0:Lcom/android/server/policy/kth;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/policy/kth;->zta(Lcom/android/server/policy/kth;Lcom/android/server/policy/kth$zta;)Lcom/android/server/policy/kth$zta;

    :cond_0
    return-void
.end method
