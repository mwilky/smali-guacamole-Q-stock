.class Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;
.super Ljava/lang/Object;
.source "OPEditTextPreferenceForWifiTetherName.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field name:Ljava/lang/CharSequence;

.field num:I

.field final synthetic this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-virtual {v0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$400(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-virtual {v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {v2}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$400(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;->isTextValid(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    iput v3, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->num:I

    iget v3, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->num:I

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-static {v3}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$300(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    instance-of v4, v3, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;->this$0:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->access$302(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
