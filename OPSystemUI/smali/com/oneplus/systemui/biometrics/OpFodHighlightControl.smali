.class public Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;
.super Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;
.source "OpFodHighlightControl.java"


# instance fields
.field private mIsHighlight:Z


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    return-void
.end method


# virtual methods
.method public canDisable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v1, "canDisable: press state not correct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    return p0
.end method

.method public canEnable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v1, "canEnable: press state not correct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic disable(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->disable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public disableInner(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyPressMode(I)V

    return-void
.end method

.method public bridge synthetic enable(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->enable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public enableInner(Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string p1, "device is not interactive, let fp sensor to handle it."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyPressMode(I)V

    return-void
.end method

.method public isHighlight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHighlightControl;->mIsHighlight:Z

    return p0
.end method
