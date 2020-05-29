.class public Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;
.super Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;
.source "OpFingerprintDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpFingerprintHighlightView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$OpFingerprintHighlightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/AddRemoveRequestingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method
