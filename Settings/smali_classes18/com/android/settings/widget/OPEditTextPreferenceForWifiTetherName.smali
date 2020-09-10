.class public Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "OPEditTextPreferenceForWifiTetherName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;,
        Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mIsPassword:Z

.field private mIsSummaryPassword:Z

.field private final mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

.field private mValidator:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

.field private nameTemp:Ljava/lang/String;

.field private noShowCheckBox:Landroid/widget/CheckBox;

.field onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    iput-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    iput-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    iput-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    iput-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$2;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    iput-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->noShowCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->noShowCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->nameTemp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mValidator:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    return-object v0
.end method


# virtual methods
.method public isPassword()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mIsPassword:Z

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mValidator:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mIsPassword:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mTextWatcher:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$EditTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0248

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0141

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, -0x2

    const-string v8, "oneplus_is_broadcat_wifi_name"

    invoke-static {v5, v8, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v2, v6

    :goto_0
    iget-object v5, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    const v6, 0x7f120c67

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;

    invoke-direct {v6, p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$1;-><init>(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mIsSummaryPassword:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OPValidatedEditTextPreference"

    const-string v1, "onClick  hide soft first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, -0x2

    const-string v4, "oneplus_is_broadcat_wifi_name"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method public setIsPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mIsPassword:Z

    return-void
.end method

.method public setIsSummaryPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mIsSummaryPassword:Z

    return-void
.end method

.method public setValidator(Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName;->mValidator:Lcom/android/settings/widget/OPEditTextPreferenceForWifiTetherName$Validator;

    return-void
.end method
