.class Lcom/android/server/policy/hmo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/lqr;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/lqr;


# direct methods
.method constructor <init>(Lcom/android/server/policy/lqr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/hmo;->this$1:Lcom/android/server/policy/lqr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/hmo;->this$1:Lcom/android/server/policy/lqr;

    iget-object p0, p0, Lcom/android/server/policy/lqr;->this$0:Lcom/android/server/policy/OpQuickPay;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay;->mQuickPayAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method
