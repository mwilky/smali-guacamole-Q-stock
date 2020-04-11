.class Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$2;
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

    iput-object p1, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$2;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$2;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$2;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference$2;->this$0:Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/OpTwoTargetMasterSwitchPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
