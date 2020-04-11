.class public abstract Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;
    }
.end annotation


# instance fields
.field private mDone:Z

.field private mEnrolling:Z

.field protected mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

.field private mQueuedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public cancelEnrollment()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public getEnrollmentRemaining()I
    .locals 1

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mDone:Z

    return v0
.end method

.method public isEnrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setRetainInstance(Z)V

    return-void
.end method

.method protected onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentError;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    return-void
.end method

.method protected onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentHelp;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected onEnrollmentProgress(I)V
    .locals 3

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    :cond_0
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mDone:Z

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    invoke-interface {v0, v1, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEnrollmentProgress;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mListener:Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;

    invoke-virtual {v1, v2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$QueuedEvent;->send(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method protected startEnrollment()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    return-void
.end method
