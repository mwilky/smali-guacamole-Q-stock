.class Lcom/android/server/policy/kth$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/kth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field static final aa:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/kth;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/kth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/kth$you;->this$0:Lcom/android/server/policy/kth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/kth;Lcom/android/server/policy/you;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/kth$you;-><init>(Lcom/android/server/policy/kth;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/kth$you;->this$0:Lcom/android/server/policy/kth;

    invoke-static {p0}, Lcom/android/server/policy/kth;->you(Lcom/android/server/policy/kth;)V

    :goto_0
    return-void
.end method
