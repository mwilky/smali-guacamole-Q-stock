.class Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;
.super Ljava/lang/Object;
.source "OPEditTextPreferenceForWifiTetherName.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {v0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "oneplus__broadcat_wifi_no_show_dialog"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    if-eqz v0, :cond_2

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {v3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {v3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0241

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f120ff0

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    iget-object v6, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    iget-object v6, v6, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    const v5, 0x7f0a0337

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-static {v4, v5}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$202(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_2
    return-void
.end method
