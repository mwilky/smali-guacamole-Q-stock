.class public Lcom/android/settingslib/widget/apppreference/AppPreference;
.super Landroidx/preference/Preference;
.source "AppPreference.java"


# instance fields
.field private mProgress:I

.field private mProgressVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/widget/R$layout;->preference_app:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget v0, Lcom/android/settingslib/widget/R$layout;->preference_app:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->mProgressVisible:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iput p1, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->mProgress:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/widget/apppreference/AppPreference;->mProgressVisible:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->notifyChanged()V

    return-void
.end method
