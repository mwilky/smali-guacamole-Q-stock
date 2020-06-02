.class public Lcom/android/settings/gestures/PreventRingingParentPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PreventRingingParentPreferenceController.java"


# instance fields
.field final SECURE_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "volume_hush_gesture"

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->SECURE_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "volume_hush_gesture"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const v1, 0x7f12115a

    goto :goto_0

    :cond_0
    const v1, 0x7f121158

    goto :goto_0

    :cond_1
    const v1, 0x7f12115c

    nop

    :goto_0
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method
