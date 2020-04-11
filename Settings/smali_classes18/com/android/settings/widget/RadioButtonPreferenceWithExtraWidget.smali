.class public Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;
.super Lcom/android/settings/widget/RadioButtonPreference;
.source "RadioButtonPreferenceWithExtraWidget.java"


# static fields
.field public static final EXTRA_WIDGET_VISIBILITY_GONE:I = 0x0

.field public static final EXTRA_WIDGET_VISIBILITY_INFO:I = 0x1

.field public static final EXTRA_WIDGET_VISIBILITY_SETTING:I = 0x2


# instance fields
.field private mExtraWidget:Landroid/widget/ImageView;

.field private mExtraWidgetDivider:Landroid/view/View;

.field private mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

.field private mExtraWidgetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    const v0, 0x7f0d0265

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a058b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f0a058d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    iget v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setExtraWidgetVisibility(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidgetVisibility:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v1, 0x7f080327

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120822

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    const v1, 0x7f080328

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->mExtraWidget:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12135a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
