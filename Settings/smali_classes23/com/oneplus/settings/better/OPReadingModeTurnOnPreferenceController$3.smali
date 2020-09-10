.class Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;
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

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x2

    const-string v1, "reading_mode_status_manual"

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {v3, v2}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$302(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;I)I

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$500(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force-on"

    invoke-static {v2, v1, v3, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$302(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;I)I

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$3;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$400(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force-on-color"

    invoke-static {v2, v1, v3, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    nop

    :goto_0
    return-void
.end method
