.class abstract Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "AbstractGlobalSettingsPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractGlobalSettingsPreference"


# instance fields
.field private final mDefaultValue:I

.field private final mKey:Ljava/lang/String;

.field private final mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    new-instance v0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    new-instance v1, Lcom/android/settings/development/autofill/-$$Lambda$AbstractGlobalSettingsPreference$yo1YEvLA_ptNRuKnWeVnx0U-mUQ;

    invoke-direct {v1, p0}, Lcom/android/settings/development/autofill/-$$Lambda$AbstractGlobalSettingsPreference$yo1YEvLA_ptNRuKnWeVnx0U-mUQ;-><init>(Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    return-void
.end method

.method private getCurrentValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateSummary()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$AbstractGlobalSettingsPreference()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->updateSummary()V

    return-void
.end method

.method public onAttached()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->register()V

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->updateSummary()V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->unregister()V

    invoke-super {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onDetached()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error converting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' to integer. Using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AbstractGlobalSettingsPreference"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
