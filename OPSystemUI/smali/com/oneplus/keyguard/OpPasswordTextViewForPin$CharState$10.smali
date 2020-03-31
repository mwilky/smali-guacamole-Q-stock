.class Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$10;
.super Ljava/lang/Object;
.source "OpPasswordTextViewForPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$10;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$10;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    invoke-static {v0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->access$600(Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;)V

    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState$10;->this$1:Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$CharState;->isDotSwapPending:Z

    return-void
.end method
