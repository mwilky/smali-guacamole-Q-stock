.class public Lcom/android/settings/biometrics/face/FaceEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "FaceEnrollSidecar.java"


# instance fields
.field private final mDisabledFeatures:[I

.field private mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    return-void
.end method

.method static synthetic access$001(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentProgress(I)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$201(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e5

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method public startEnrollment()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    iget v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    iget-object v4, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->enroll([BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V

    return-void
.end method
