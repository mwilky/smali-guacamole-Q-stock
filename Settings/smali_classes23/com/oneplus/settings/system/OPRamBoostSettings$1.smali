.class Lcom/oneplus/settings/system/OPRamBoostSettings$1;
.super Ljava/lang/Object;
.source "OPRamBoostSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/system/OPRamBoostSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/system/OPRamBoostSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/system/OPRamBoostSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/system/OPRamBoostSettings$1;->this$0:Lcom/oneplus/settings/system/OPRamBoostSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/oneplus/settings/system/OPRamBoostSettings$1;->this$0:Lcom/oneplus/settings/system/OPRamBoostSettings;

    invoke-static {v1}, Lcom/oneplus/settings/system/OPRamBoostSettings;->access$000(Lcom/oneplus/settings/system/OPRamBoostSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/settings/system/OPRamBoostSettings;->setRamBoostState(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "ramboost"

    const-string v3, "status"

    invoke-static {v2, v3, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method
