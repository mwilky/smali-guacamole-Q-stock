.class Lcom/oneplus/keyguard/OpPasswordTextViewForPin$1;
.super Ljava/lang/Object;
.source "OpPasswordTextViewForPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->append(C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;


# direct methods
.method constructor <init>(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$1;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$1;->this$0:Lcom/oneplus/keyguard/OpPasswordTextViewForPin;

    invoke-static {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin;->access$000(Lcom/oneplus/keyguard/OpPasswordTextViewForPin;)Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oneplus/keyguard/OpPasswordTextViewForPin$UserActivityListener;->onCheckPasswordAndUnlock()V

    return-void
.end method
