.class Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;
.super Ljava/lang/Object;
.source "OpTwoTargetMasterSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-static {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$000(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-static {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$000(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-static {v1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$100(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Landroid/os/Vibrator;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-static {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$200(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-static {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$200(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$300(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-static {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$200(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$1;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-static {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$200(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->access$400(Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;Z)Z

    :goto_0
    return-void
.end method
