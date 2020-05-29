.class abstract Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;
.super Ljava/lang/Object;
.source "OpFodDisplayController.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControllerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OpDisplayControl"
.end annotation


# instance fields
.field private mController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

.field protected final mTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    return-void
.end method


# virtual methods
.method public canDisable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract canEnable()Z
.end method

.method public disable(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->canDisable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControllerHelper;->disableInner(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public enable(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->canEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControllerHelper;->enableInner(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected getAodMode()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mAodControl:Lcom/oneplus/systemui/biometrics/OpFodAodControl;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->getAodMode()I

    move-result p0

    return p0
.end method

.method protected getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mDisplayNotifier:Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    return-object p0
.end method

.method protected getPowerManager()Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mPm:Landroid/os/PowerManager;

    return-object p0
.end method

.method protected getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method protected isFaceUnlocked()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mFaceUnlocked:Z

    return p0
.end method

.method protected isHighlight()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mController:Lcom/oneplus/systemui/biometrics/OpFodDisplayController;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController;->mHighlightControl:Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->isHighlight()Z

    move-result p0

    return p0
.end method
