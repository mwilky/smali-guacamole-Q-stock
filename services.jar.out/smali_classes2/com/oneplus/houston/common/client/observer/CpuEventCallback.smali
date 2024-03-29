.class public Lcom/oneplus/houston/common/client/observer/CpuEventCallback;
.super Lcom/oneplus/houston/common/client/AbsEventCallback;
.source "CpuEventCallback.java"

# interfaces
.implements Lcom/oneplus/houston/common/client/observer/IListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Houston_CpuEventCallback"


# instance fields
.field private mBgThreshold:I

.field private mFgThreshold:I

.field private mFgUid:I

.field private mSimpleTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/houston/common/client/AbsEventCallback;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mSimpleTime:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgUid:I

    const/16 v0, 0x5f

    iput v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgThreshold:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mBgThreshold:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/houston/common/client/AbsEventCallback;-><init>(ILandroid/os/Bundle;Ljava/lang/String;)V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mSimpleTime:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgUid:I

    const/16 v0, 0x5f

    iput v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgThreshold:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mBgThreshold:I

    return-void
.end method


# virtual methods
.method public builder(Lcom/oneplus/houston/common/client/AbsEventCallback;)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/oneplus/houston/common/client/AbsEventCallback;->mIndex:I

    invoke-static {v0}, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->isValidIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;

    invoke-virtual {v1}, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/oneplus/houston/common/client/AbsEventCallback;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Houston_CpuEventCallback"

    const-string v1, "Invalid callback args!"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public builder(Landroid/content/Intent;)Lcom/oneplus/houston/common/client/AbsEventCallback;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mIndex:I

    const-string v1, "mSimpleTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mSimpleTime:I

    const-string v1, "mFgUid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgUid:I

    const-string v1, "mFgThreshold"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgThreshold:I

    const-string v1, "mBgThreshold"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mBgThreshold:I

    iput-object v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mExtra:Landroid/os/Bundle;

    return-object p0
.end method

.method public compareObserver(Lcom/oneplus/houston/common/client/AbsEventCallback;Lcom/oneplus/houston/common/client/AbsEventCallback;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;

    iget v1, v1, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mSimpleTime:I

    move-object v2, p2

    check-cast v2, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;

    iget v2, v2, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mSimpleTime:I

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mIndex:I

    const-string v2, "mIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mSimpleTime:I

    const-string v2, "mSimpleTime"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgUid:I

    const-string v2, "mFgUid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgThreshold:I

    const-string v2, "mFgThreshold"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mBgThreshold:I

    const-string v2, "mBgThreshold"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mExtra:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mExtra:Landroid/os/Bundle;

    return-object v1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReachThreshold(Lcom/oneplus/houston/common/client/Event;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "mFgThreshold"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mFgThreshold:I

    if-ge v2, v3, :cond_0

    const-string v2, "mBgThreshold"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/oneplus/houston/common/client/observer/CpuEventCallback;->mBgThreshold:I

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReachThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Houston_CpuEventCallback"

    invoke-static {v3, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public updateTransfromConfig(Lcom/oneplus/houston/common/client/AbsEventCallback;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
