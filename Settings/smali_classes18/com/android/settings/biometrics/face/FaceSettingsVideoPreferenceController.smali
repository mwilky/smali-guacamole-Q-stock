.class public Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;
.super Lcom/android/settings/widget/VideoPreferenceController;
.source "FaceSettingsVideoPreferenceController.java"


# static fields
.field private static final KEY_VIDEO:Ljava/lang/String; = "security_settings_face_video"


# instance fields
.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_settings_face_video"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/widget/VideoPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "security_settings_face_video"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/VideoPreference;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/VideoPreference;->onViewVisible(Z)V

    return-void
.end method
