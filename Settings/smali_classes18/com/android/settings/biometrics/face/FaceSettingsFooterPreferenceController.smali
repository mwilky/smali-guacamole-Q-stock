.class public Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FaceSettingsFooterPreferenceController.java"


# static fields
.field private static final ANNOTATION_URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "footer_preference"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1207d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "url"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1212f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
