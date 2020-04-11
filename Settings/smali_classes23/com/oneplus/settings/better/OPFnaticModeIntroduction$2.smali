.class Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;
.super Ljava/lang/Object;
.source "OPFnaticModeIntroduction.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticModeIntroduction;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;->this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alwaysfnatic"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticModeIntroduction$2;->this$0:Lcom/oneplus/settings/better/OPFnaticModeIntroduction;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oneplus.intent.action.ONEPLUS_FNATIC_WALLPAPERS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPFnaticModeIntroduction;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
