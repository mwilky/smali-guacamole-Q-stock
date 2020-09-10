.class public Lcom/android/settings/notification/ImportancePreference;
.super Landroidx/preference/Preference;
.source "ImportancePreference.java"


# static fields
.field private static final BUTTON_ANIM_TIME_MS:I = 0x64

.field private static final SHOW_BUTTON_SUMMARY:Z = false


# instance fields
.field private mAlertButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDisplayInStatusBar:Z

.field private mDisplayOnLockscreen:Z

.field private mImportance:I

.field private mIsConfigurable:Z

.field private mSilenceButton:Landroid/view/View;

.field selectedBackground:Landroid/graphics/drawable/Drawable;

.field unselectedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAccentTint()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private getRegularTint()Landroid/content/res/ColorStateList;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080157

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0d0132

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ImportancePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBindViewHolder$0$ImportancePreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$ImportancePreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ImportancePreference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$tOS00Rm2-rgeNiYuwn9gyX0N6ow;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$tOS00Rm2-rgeNiYuwn9gyX0N6ow;-><init>(Lcom/android/settings/notification/ImportancePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$ImportancePreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$3$ImportancePreference(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ImportancePreference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/notification/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$eik8Nolg6tRrn_QPd_sKGR2c5G4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$eik8Nolg6tRrn_QPd_sKGR2c5G4;-><init>(Lcom/android/settings/notification/ImportancePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a0628

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    const v0, 0x7f0a007a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/settings/notification/ImportancePreference;->mImportance:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/notification/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    iget v0, p0, Lcom/android/settings/notification/ImportancePreference;->mImportance:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mSilenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$0vzlC8JJzQy-Rg1hLzfwlza2t4M;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$0vzlC8JJzQy-Rg1hLzfwlza2t4M;-><init>(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->mAlertButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$GLzsWt7BiNJKqlCW3XDg8dS51DI;-><init>(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setConfigurable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/ImportancePreference;->mIsConfigurable:Z

    return-void
.end method

.method public setDisplayInStatusBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/ImportancePreference;->mDisplayInStatusBar:Z

    return-void
.end method

.method public setDisplayOnLockscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/ImportancePreference;->mDisplayOnLockscreen:Z

    return-void
.end method

.method public setImportance(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/ImportancePreference;->mImportance:I

    return-void
.end method

.method setImportanceSummary(Landroid/view/ViewGroup;IZ)V
    .locals 11

    if-eqz p3, :cond_0

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ImportancePreference;->getAccentTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/notification/ImportancePreference;->getRegularTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x7f0a062b

    const v5, 0x7f0a062a

    const v6, 0x7f0a0629

    const v7, 0x7f0a007d

    const v8, 0x7f0a007c

    const/16 v9, 0x8

    const v10, 0x7f0a007e

    if-lt p2, v2, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
