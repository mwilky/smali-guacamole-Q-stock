.class public Lcom/android/settings/print/PrintJobPreferenceController;
.super Lcom/android/settings/print/PrintJobPreferenceControllerBase;
.source "PrintJobPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected updateUi()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/print/PrintJobPreferenceController;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getState()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v3, v8, :cond_7

    const v10, 0x7f121226

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v3, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v10, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f121228

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v10, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f121224

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v11, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v11, v10, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v10, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f121235

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v11, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v11, v10, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v10, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f121227

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    iget-object v3, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v10, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    const v11, 0x7f12122b

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v14

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v16

    const/16 v18, 0x3

    const/16 v19, 0x3

    invoke-static/range {v14 .. v19}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    new-array v8, v8, [I

    const v10, 0x1010429

    aput v10, v8, v9

    invoke-virtual {v3, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getState()I

    move-result v9

    if-eq v9, v7, :cond_9

    if-eq v9, v6, :cond_9

    if-eq v9, v5, :cond_8

    if-eq v9, v4, :cond_8

    goto :goto_1

    :cond_8
    iget-object v4, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x10804f8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v5, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_9
    iget-object v4, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x10804f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v5, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_1
    return-void

    :cond_a
    :goto_2
    iget-object v2, v0, Lcom/android/settings/print/PrintJobPreferenceController;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void
.end method
