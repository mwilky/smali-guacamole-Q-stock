.class Lcom/android/settings/widget/MasterSwitchPreference$1;
.super Ljava/lang/Object;
.source "MasterSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->access$000(Lcom/android/settings/widget/MasterSwitchPreference;)Lcom/oneplus/lib/widget/button/OPSwitch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->access$000(Lcom/android/settings/widget/MasterSwitchPreference;)Lcom/oneplus/lib/widget/button/OPSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPSwitch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v2, v2, Lcom/android/settings/widget/MasterSwitchPreference;->mVibrator:Landroid/os/Vibrator;

    const/16 v3, 0x3eb

    invoke-static {v1, v2, v3}, Landroidx/preference/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/widget/MasterSwitchPreference;->mVibratePattern:[J

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v0, v0, Lcom/android/settings/widget/MasterSwitchPreference;->mVibratePattern:[J

    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, v1, Lcom/android/settings/widget/MasterSwitchPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, v1}, Landroidx/preference/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->access$200(Lcom/android/settings/widget/MasterSwitchPreference;Z)Z

    :goto_0
    return-void
.end method
