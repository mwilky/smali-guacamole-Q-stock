.class public Lcom/oneplus/systemui/biometrics/OpFodHelper;
.super Ljava/lang/Object;
.source "OpFodHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;,
        Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/oneplus/systemui/biometrics/OpFodHelper;


# instance fields
.field private mActionEnroll:Z

.field private mBiometricPromptVisible:Z

.field private mContext:Landroid/content/Context;

.field private mCookie:I

.field private mCurrentClient:Ljava/lang/String;

.field private mFingerprintState:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

.field private mLastClient:Ljava/lang/String;

.field private mOnFingerprintStateChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->STOP:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mFingerprintState:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mOnFingerprintStateChangeListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string p1, "fingerprint"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    return-void
.end method

.method private changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mFingerprintState:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeState ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mFingerprintState:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ) , force? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpFodHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mFingerprintState:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mOnFingerprintStateChangeListeners:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mOnFingerprintStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;->onFingerprintStateChanged()V

    goto :goto_0

    :cond_2
    monitor-exit p1

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;
    .locals 2

    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->sInstance:Lcom/oneplus/systemui/biometrics/OpFodHelper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "not initial yet, call init before."

    const-string v1, "OpFodHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/oneplus/systemui/biometrics/OpFodHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/systemui/biometrics/OpFodHelper;->sInstance:Lcom/oneplus/systemui/biometrics/OpFodHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/systemui/biometrics/OpFodHelper;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/systemui/biometrics/OpFodHelper;->sInstance:Lcom/oneplus/systemui/biometrics/OpFodHelper;

    goto :goto_0

    :cond_0
    const-string p0, "OpFodHelper"

    const-string v1, "already init."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isAppLocker(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oneplus.applocker"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFileManager(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oneplus.filemanager"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isForceShow(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "forceShow-keyguard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isKeyguard(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isSystemUI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isForceShow(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSettings(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSystemUI(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mOnFingerprintStateChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mOnFingerprintStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mOnFingerprintStateChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;Z)V

    return-void
.end method

.method public getCurrentOwner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCurrentClient:Ljava/lang/String;

    return-object p0
.end method

.method public getLastOwner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mLastClient:Ljava/lang/String;

    return-object p0
.end method

.method public handleQSExpandChanged(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleQSExpandChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatedPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "empty client, do not handle it."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "keyguard client. do not handle it."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    goto :goto_0

    :cond_2
    const/16 p1, 0xb

    :goto_0
    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "updateStatus occur remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const-string p0, "handleQSExpandChanged null pointer"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public isBiometricPromptReadyToShow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFromBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mBiometricPromptVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDoingEnroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mActionEnroll:Z

    return p0
.end method

.method public isEmptyClient()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCurrentClient:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isFingerprintDetecting()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mFingerprintState:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->RUNNING:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintLockout()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mFingerprintState:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->LOCKOUT:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFingerprintSuspended()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mFingerprintState:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->SUSPEND:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isForceShowClient()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCurrentClient:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isForceShow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFromBiometricPrompt()Z
    .locals 0

    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCookie:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKeyguardAuthenticating()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCurrentClient:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isKeyguardClient()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCurrentClient:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isKeyguardUnlocked()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mLastClient:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateBiometricPromptReady(I)Z
    .locals 1

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCookie:I

    if-eq v0, p1, :cond_0

    const-string p0, "OpFodHelper"

    const-string/jumbo p1, "updateBiometricPromptReady: cookie not matched"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mBiometricPromptVisible:Z

    return p1
.end method

.method public updateOwner(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "key_fingerprint_package_name"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_cookie"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "key_resume"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "key_suspend"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "key_enroll"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move p1, v0

    move v2, p1

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCurrentClient:Ljava/lang/String;

    iput-object v5, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mLastClient:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCurrentClient:Ljava/lang/String;

    iput v2, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCookie:I

    iput-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mBiometricPromptVisible:Z

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mActionEnroll:Z

    const/4 p1, 0x1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iput-boolean p1, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mBiometricPromptVisible:Z

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateOwner: current= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mCurrentClient:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", last= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mLastClient:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", from BiometricPrompt? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    move v0, p1

    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", resume= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enroll= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mActionEnroll:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpFodHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mLastClient:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->STOP:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/systemui/biometrics/OpFodHelper;->mActionEnroll:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->LOCKOUT:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;Z)V

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->SUSPEND:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;Z)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;->RUNNING:Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->changeState(Lcom/oneplus/systemui/biometrics/OpFodHelper$FingerprintState;Z)V

    :goto_2
    return-void
.end method
