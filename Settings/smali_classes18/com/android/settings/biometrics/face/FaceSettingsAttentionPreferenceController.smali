.class public Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;
.super Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;
.source "FaceSettingsAttentionPreferenceController.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "security_settings_face_require_attention"


# instance fields
.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private final mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

.field private mPreference:Landroidx/preference/SwitchPreference;

.field private final mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

.field private mToken:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_settings_face_require_attention"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$2;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroid/hardware/face/FaceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "security_settings_face_require_attention"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettings;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/FaceManager;->getFeature(ILandroid/hardware/face/FaceManager$GetFeatureCallback;)V

    return v1
.end method

.method public setChecked(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/hardware/face/FaceManager;->setFeature(IZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V

    return v3
.end method

.method public setToken([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->mToken:[B

    return-void
.end method
