.class public Lcom/oneplus/systemui/biometrics/OpFodAodControl;
.super Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;
.source "OpFodAodControl.java"


# instance fields
.field private mAodMode:I


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    return-void
.end method


# virtual methods
.method public canDisable()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canEnable()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic disable(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->disable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public disableInner(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set aod mode off, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyAodMode(I)V

    return-void
.end method

.method public bridge synthetic enable(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->enable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public enableInner(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set aod mode on, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyAodMode(I)V

    return-void
.end method

.method public getAodMode()I
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodAodControl;->mAodMode:I

    return p0
.end method
