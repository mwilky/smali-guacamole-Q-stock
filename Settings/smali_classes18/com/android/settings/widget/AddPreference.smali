.class public Lcom/android/settings/widget/AddPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "AddPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/AddPreference$OnAddClickListener;
    }
.end annotation


# instance fields
.field private mAddWidget:Landroid/view/View;

.field private mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

.field private mWidgetFrame:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method getAddWidgetResId()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0a006a

    return v0
.end method

.method protected getSecondTargetResId()I
    .locals 1

    const v0, 0x7f0d026e

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/AddPreference;->mWidgetFrame:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->getAddWidgetResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->getAddWidgetResId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settings/widget/AddPreference$OnAddClickListener;->onAddClick(Lcom/android/settings/widget/AddPreference;)V

    :cond_0
    return-void
.end method

.method public setAddWidgetEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/AddPreference;->mAddWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    iget-object v0, p0, Lcom/android/settings/widget/AddPreference;->mWidgetFrame:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/widget/AddPreference;->shouldHideSecondTarget()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/AddPreference;->mListener:Lcom/android/settings/widget/AddPreference$OnAddClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
