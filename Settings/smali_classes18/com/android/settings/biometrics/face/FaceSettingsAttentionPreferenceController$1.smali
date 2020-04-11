.class Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;
.super Landroid/hardware/face/FaceManager$SetFeatureCallback;
.source "FaceSettingsAttentionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$SetFeatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(ZI)V
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {v2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$100(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->getUserId()I

    move-result v2

    const-string v3, "face_unlock_attention_required"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    :goto_0
    return-void
.end method
