.class Lcom/oneplus/systemui/biometrics/OpFodIconViewController$1;
.super Ljava/lang/Object;
.source "OpFodIconViewController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$002(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Z)Z

    return-void
.end method
