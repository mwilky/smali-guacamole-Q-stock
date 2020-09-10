.class public Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;
.super Lcom/android/settings/biometrics/BiometricErrorDialog;
.source "FaceEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;
    .locals 3

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error_msg"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "error_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e6

    return v0
.end method

.method public getOkButtonTextResId()I
    .locals 1

    const v0, 0x7f12139f

    return v0
.end method

.method public getTitleResId()I
    .locals 1

    const v0, 0x7f1213a7

    return v0
.end method
