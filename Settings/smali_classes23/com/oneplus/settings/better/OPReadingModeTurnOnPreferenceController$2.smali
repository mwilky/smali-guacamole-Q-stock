.class Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$2;
.super Ljava/lang/Object;
.source "OPReadingModeTurnOnPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->showSelectEffectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$2;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$2;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$200(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status_manual"

    const-string v2, "force-off"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$2;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$100(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
