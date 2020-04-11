.class Lcom/oneplus/settings/notification/OPEarphoneMode$2;
.super Ljava/lang/Object;
.source "OPEarphoneMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPEarphoneMode;->confirmCallInformationBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPEarphoneMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$200(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPEarphoneMode$2;->this$0:Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPEarphoneMode;->access$300(Lcom/oneplus/settings/notification/OPEarphoneMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const-string v4, "oem_call_information_broadcast"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
