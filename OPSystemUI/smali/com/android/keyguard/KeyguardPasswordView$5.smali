.class Lcom/android/keyguard/KeyguardPasswordView$5;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPasswordView;->access$800(Lcom/android/keyguard/KeyguardPasswordView;)V

    return-void
.end method
