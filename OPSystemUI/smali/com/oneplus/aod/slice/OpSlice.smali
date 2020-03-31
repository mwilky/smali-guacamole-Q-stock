.class public abstract Lcom/oneplus/aod/slice/OpSlice;
.super Ljava/lang/Object;
.source "OpSlice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/slice/OpSlice$H;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mCallback:Lcom/oneplus/aod/slice/OpSliceManager$Callback;

.field protected mHandler:Lcom/oneplus/aod/slice/OpSlice$H;

.field protected mIcon:I

.field private mIsActive:Z

.field private mIsEnabled:Z

.field protected mPrimary:Ljava/lang/String;

.field protected mRemark:Ljava/lang/String;

.field protected mSecondary:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/aod/slice/OpSliceManager$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIcon:I

    new-instance v1, Lcom/oneplus/aod/slice/OpSlice$H;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/aod/slice/OpSlice$H;-><init>(Lcom/oneplus/aod/slice/OpSlice;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/aod/slice/OpSlice;->mHandler:Lcom/oneplus/aod/slice/OpSlice$H;

    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsActive:Z

    iput-boolean v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpSlice."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSlice;->mCallback:Lcom/oneplus/aod/slice/OpSliceManager$Callback;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIsActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsActive:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getIcon()I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIcon:I

    return p0
.end method

.method public getPrimaryString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mPrimary:Ljava/lang/String;

    return-object p0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mRemark:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondaryString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mSecondary:Ljava/lang/String;

    return-object p0
.end method

.method protected handleSetEnabled(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetListening: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected handleTimeChanged()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/aod/slice/OpSlice;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    const-string v0, "handleTimeChanged"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsActive:Z

    return p0
.end method

.method protected isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsEnabled:Z

    return p0
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mHandler:Lcom/oneplus/aod/slice/OpSlice$H;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsActive:Z

    return-void
.end method

.method protected setEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsEnabled:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpSlice;->mHandler:Lcom/oneplus/aod/slice/OpSlice$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-boolean p1, p0, Lcom/oneplus/aod/slice/OpSlice;->mIsEnabled:Z

    :cond_0
    return-void
.end method

.method protected setListening(Z)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mHandler:Lcom/oneplus/aod/slice/OpSlice$H;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected updateUI()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSlice;->mCallback:Lcom/oneplus/aod/slice/OpSliceManager$Callback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSliceManager$Callback;->updateUI()V

    :cond_0
    return-void
.end method
